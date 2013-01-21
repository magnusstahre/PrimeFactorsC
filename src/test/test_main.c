#include "unity_fixture.h"

static void RunAllTests(void)
{
	RUN_TEST_GROUP(Primes);
	RUN_TEST_GROUP(Factorizer);
}

int main(int argc, char* argv[])
{
	return UnityMain(argc, argv, RunAllTests);
}
