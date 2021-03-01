import angr, argparse
import re
from pprint import pprint
from angrutils import *
import os
# ----- this python script must run in the workon angr ----- #

parser = argparse.ArgumentParser(description="Disassemble a program and create .s file")

# ----- parser arguments ----- #
parser.add_argument('-i', '--infile', required=True) # parser input
parser.add_argument('-o', '--outfile', required=True) # parser output
parser.add_argument('-t', '--rand', required=True)
parser.add_argument('-opt', '--opt', required=True)
args = parser.parse_args()

# ----- Setup file name ------ #
cwd = os.getcwd()
new_directory = os.path.join(cwd, "parsed", args.infile)
print(new_directory)
if(os.path.exists(new_directory)):
   #print("Folder exists")
   out_file = os.path.join(new_directory, args.outfile)
   out_file_garbage = os.path.join(out_file+"_garbage") # removing garbage
   out_file_filter = os.path.join(out_file+"_filter")
   out_file_no_regex = os.path.join(out_file+"_no_regex")
   out_file_subs = os.path.join(out_file+"_subs")
   #print(out_file)
else:
   print("No folder exists")
   os.mkdir(new_directory)
   out_file = os.path.join(new_directory, args.outfile)
   out_file_garbage = os.path.join(out_file+"_garbage") # removing garbage
   out_file_filter = os.path.join(out_file+"_filter")
   out_file_no_regex = os.path.join(out_file+"_no_regex")
   out_file_subs = os.path.join(out_file+"_subs")
   #print(out_file)
   #print(out_file_no_regex)

if(os.path.exists(args.infile+"_dir")):
    print("Path exists")
    if(args.rand == "nop"):
        bin_file = os.path.join(cwd, args.infile+"_dir", args.opt, args.infile+"_nop") # 1 is the opt level
        print("NOP option")
    elif(args.rand == "stack"):
        bin_file = os.path.join(cwd, args.infile+"_dir", args.opt, args.infile+"_stack_shuf")
        print("Stack Shuf option")
    elif(args.rand == "bb"):
        bin_file = os.path.join(cwd, args.infile+"_dir", args.opt, args.infile+"_bb_shuf")
        print("Basic Block Shuf option")
    elif(args.rand == "sub"):
        bin_file = os.path.join(cwd, args.infile+"_dir", args.opt, args.infile+"_sub")
        print("Inst. Sub option")
    elif(args.rand == "bogus"):
        bin_file = os.path.join(cwd, args.infile+"_dir", args.opt, args.infile+"_bogus")
        print("Bogus CFG option")
    else:
        bin_file = os.path.join(cwd, args.infile+"_dir", args.opt, args.infile)
        print("Reg option")
else:
    print("Test directory doesn't exist:", args.infile+"_dir")
    exit()

print("Binary file input: ", bin_file)
print("Output file output: ", out_file)

# ----- CFG function ----- #
def analyze(b, addr, name=None):
   start_state = b.factory.blank_state(addr=addr)
   cfg = b.analyses.CFGEmulated(fail_fast=True, starts=[addr], initial_state=start_state, context_sensitivity_level=2, keep_state=True, call_depth=0, normalize=True)
   #plot_cfg(cfg, "%s_full"%(str(name)), asminst=True, vexinst=True, debug_info=True, remove_imports=False, remove_path_terminator=False)
   plot_cfg(cfg, "%s_classic"%(str(name)), asminst=True, vexinst=False, debug_info=False, remove_imports=True, remove_path_terminator=True)

def fun_analyze(b, name):
   cfg = b.analyses.CFG(normalize=True)
   for func in p.kb.functions.values():
      if func.name.find('switchcase') == 0:
         plot_func_graph(b, func.transition_graph, "%s_%s_cfg" % (name, func.name), asminst=True, vexinst=False)

# ----- Angr related ----- #
p = angr.Project(bin_file, auto_load_libs=False) # loading the angr project
r = p.analyses.Reassembler(syntax="intel") # change syntax (intel or at&t)
r.symbolize() # symbolization for addresses
r.remove_unnecessary_stuff() # cleaning up
assembly = r.assembly(comments=False, symbolized=True) # run through ramblr with symbolization

# ----- Calling CFG functions ----- #
#main = p.loader.main_object.get_symbol("main")
#analyze(p, main.rebased_addr, bin_file)
#fun_analyze(p, bin_file)

# ----- Clean file for debug ----- #
with open(out_file_no_regex, "w") as f:
   f.write(assembly)

# ----- Regex patterns ----- #
regex_text_section = re.compile('(.section\s.text)') # match the name .section\s.text string
regex_data_section = re.compile('(.section\s.data)|(.section\s.rodata)')
regex_plt_section = re.compile('..(?=.section\s.plt.got).*$', re.S)
regex_new_line = re.compile('.*\n')
regex_sub = re.compile('(sub_.{6}:)') # match exactly sub_{6 hexadecimal}
regex_sub_section = re.compile('(sub.[0-z]{6}(?=:))|^(([0-z])*(?=:\n))')
regex_label_relations = re.compile('.label_([0-9]{4}):\n.label_([0-9]{4})')
regex_rdi=re.compile('(?<=\[rdi])\s*.section\s*.text\s*.align\s*[0-9]*\s*#Procedure\s*[0-z]*\s*.globl\ssub_[0-z]*\s*.type\ssub_[0-z]*\s*,\s@function\s*sub_[0-z]*\n\s')
regex_nop=re.compile('(?<=nop)\s*.section\s*.text\s*.align\s*[0-9]*\s*#Procedure\s*[0-z]*\s*.globl\ssub_[0-z]*\s*.type\ssub_[0-z]*\s*,\s@function\s*sub_[0-z]*\n\s')
regex_rsi=re.compile('(?<=\[rsi])\s*.section\s*.text\s*.align\s*[0-9]*\s*#Procedure\s*[0-z]*\s*.globl\ssub_[0-z]*\s*.type\ssub_[0-z]*\s*,\s@function\s*sub_[0-z]*\n\s')
regex_sections=re.compile('.section\s*.text\s*.align\s*[0-9]*\s*#Procedure\s*[0-z]*\s*.globl\ssub_[0-z]*\s*.type\ssub_[0-z]*\s*,\s@function\s*sub_[0-z]*\n\s\s')
regex_hlt=re.compile('.*.section\s*.text\s*hlt\s*nop\s*word.*\s*nop.*\s*nop\s.*\s*nop.*\s*nop.*\s*nop.*\s*nop.*\s*')

regex_garbages=re.compile('\t.section\t.text\n\thlt\t\n\tnop.*\n\tnop.*\n\tnop.*\n\tnop.*\n\tnop.*\n\tnop.*\n\t.* rax]\n')

# ----- assembly file filtering for NOP randomization ----- #
assembly_rdi = re.sub(regex_rdi, "\n", assembly)
assembly_nop = re.sub(regex_nop, "\n", assembly_rdi)
new_assembly = re.sub(regex_rsi, "\n", assembly_nop)
if (args.rand == "bb"):
   section_filt = new_assembly
else:
   section_filt = re.sub(regex_sections, "", new_assembly)

# ----- Assembly file pattern matching ----- #
section_array=[]
code_array=[]
code=""
data_code=""
start=True
for n in re.finditer(regex_new_line, section_filt):
    #print("Current line: ", n.group(0))
    if(re.search(regex_text_section, n.group(0))):
        #print("Section")
        if(start == True):
            section_array.append(n.group(0))
            #print("Current section_array: ", *section_array)
        else:
            section_array.append(n.group(0))
            code_array.append(code)
            code=""
            start = True
    else:
       code += n.group(0)
       start = False

for i, element in enumerate(code_array):
   if re.search(regex_plt_section, code_array[i]):
      newString = re.sub(regex_plt_section, "", code_array[i])
      code_array[i] = newString
      #print(code_array[i])

section_code = list(zip(section_array, code_array)) # creating tuples
#pprint(section_code) # pretty printing list

tuple_len = len(section_code)
#print("Secion code length is ", tuple_len)
string=""
with open(out_file, "w") as f:
    for i in range(0, tuple_len):
        #print("Current section:\n", section_code[i][0])
        #print("Current element:\n", section_code[i][1]) # accessing the element of each section.texts
        if(re.search(regex_sub, section_code[i][1])): # regexing to find the useless function
            #print("Found the useless function")
           if (args.rand == "bb"):
              string += section_code[i][0] + section_code[i][1]
              f.write(string)
              string=""
           else:
              pass
        else:
            string += section_code[i][0] + section_code[i][1]
            f.write(string)
            string=""

# ---------- Label relation filtering ----------- #
#regex_label_relations
# ----- building label realtionship ----- #
print("Filtering out label relationship")
tempOpen = open(out_file, "r")
textFile = tempOpen.read()
textFile_mod = re.sub(regex_garbages, "", textFile)
#print(textFile_mod)

garbage = open(out_file_garbage, "w")
garbage.write(textFile_mod)
print(garbage)
garbage.close()

tempOpen.close()
found = re.findall(regex_label_relations, textFile_mod)
found_len = len(found)

input_labels = []  # contains input label
target_labels = [] # contains output label
for i in range(0, found_len):
   first_label = ".label_"+found[i][0]
   second_label= ".label_"+found[i][1]
   input_labels.append(first_label)
   target_labels.append(second_label)

newList = list(zip(input_labels, target_labels)) # results in tuple of [(inp,output) (inp,output)]

if (args.rand == "bb"):
   out_file_select = out_file
else:
   out_file_select = out_file_garbage

print("what is being selected: " + args.rand + out_file_select)

with open(out_file_select, "r") as ins:
   outfileArray = []
   for line in ins:
      outfileArray.append(line)
#print(outfileArray)



filterOutput = open(out_file_filter, "w")
print("Filter output: ", filterOutput)
empty=''
replace=False
if (args.rand == "bb"):
   for outfileLine in outfileArray:
      filterOutput.write(outfileLine)
else:
   for outfileLine in outfileArray:
      for i in range(0, found_len):
         startStr=tuple(newList)[i][0]+":\n"
         jmpStr=tuple(newList)[i][0]+""
         LabelStartRegex = re.compile(re.escape(startStr))
         LabelJmpRegex = re.compile(re.escape(jmpStr))
         if(re.search(LabelStartRegex, outfileLine)):
            newLine = re.sub(LabelStartRegex,empty,outfileLine)
            filterOutput.write(newLine)
            replace=True
         elif(re.search(LabelJmpRegex, outfileLine)):
            newLine = re.sub(LabelJmpRegex,newList[i][1],outfileLine)
            filterOutput.write(newLine)
            replace=True

      if(replace==False):
         filterOutput.write(outfileLine)
         replace=False


filterOutput.close()



# ----- Making PLT section files for Config purpose -------------------- #
# ----- Reason why both Reg and BB are made is to OR them together ----- #
if (args.rand == "reg"):
   print("Making section file for", args.rand)
   searchfile = open(out_file, "r")
   writefile = open(out_file_subs, "w")
   for line in searchfile:
      if re.search(regex_sub_section, line):
         newString = re.sub(":", "", line)
         writefile.write(newString)
         #print(newString)
      else:
         pass
   searchfile.close()
   writefile.close()
elif (args.rand == "bb"):
   print("Making section file for", args.rand)
   searchfile = open(out_file, "r")
   writefile = open(out_file_subs, "w")
   for line in searchfile:
      if re.search(regex_sub_section, line):
         newString = re.sub(":", "", line)
         writefile.write(newString)
         #print(newString)
      else:
         pass
   searchfile.close()
   writefile.close()
elif (args.rand == "stack"):
   print("Making section file for", args.rand)
   searchfile = open(out_file, "r")
   writefile = open(out_file_subs, "w")
   for line in searchfile:
      if re.search(regex_sub_section, line):
         newString = re.sub(":", "", line)
         writefile.write(newString)
         #print(newString)
      else:
         pass
   searchfile.close()
   writefile.close()
elif (args.rand == "nop"):
   print("Making section file for", args.rand)
   searchfile = open(out_file, "r")
   writefile = open(out_file_subs, "w")
   for line in searchfile:
      if re.search(regex_sub_section, line):
         newString = re.sub(":", "", line)
         writefile.write(newString)
         #print(newString)
      else:
         pass
   searchfile.close()
   writefile.close()
elif (args.rand == "sub"):
   print("Making section file for", args.rand)
   searchfile = open(out_file, "r")
   writefile = open(out_file_subs, "w")
   for line in searchfile:
      if re.search(regex_sub_section, line):
         newString = re.sub(":", "", line)
         writefile.write(newString)
         #print(newString)
      else:
         pass
   searchfile.close()
   writefile.close()
elif (args.rand == "bogus"):
   print("Making section file for", args.rand)
   searchfile = open(out_file, "r")
   writefile = open(out_file_subs, "w")
   for line in searchfile:
      if re.search(regex_sub_section, line):
         newString = re.sub(":", "", line)
         writefile.write(newString)
         #print(newString)
      else:
         pass
   searchfile.close()
   writefile.close()
