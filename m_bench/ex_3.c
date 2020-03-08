#include <alloca.h>


#include <stdio.h>

void VLA_test(int n)
{
  char buf[n*100];
  char buf2[n*10];
  buf[299] = 'b';
  buf2[0] = 'a';
  printf("vla\nbuf: %c buf2: %c\n\n", buf[299],buf2[0]);
}

void alloca_test(int n)
{
  char *buf = alloca(n*100);
  char *buf2 = alloca(n*10);
  buf[299] = 'a';
  buf2[0] = 'b';
  printf("alloca\nbuf: %c buf2: %c\n\n", buf[299],buf2[0]);
}

int main()
{
  VLA_test(3);
  alloca_test(3);
  return 0;
}
