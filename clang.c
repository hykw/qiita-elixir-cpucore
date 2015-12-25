#include <stdio.h>

void main(void)
{
  unsigned long i, a = 0;

  for (i = 0; i < 10000*5000; i++)
    a += i;

  printf("%ld\n", a);
}
