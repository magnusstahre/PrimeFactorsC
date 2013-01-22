#include "is_prime.h"

bool isPrime(unsigned int number)
{
  bool prime = number != 1;
  for(int i = 2; i < number; i++)
    {
      prime &= number % i != 0;
    }
  return prime;
}
