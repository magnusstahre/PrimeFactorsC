C_COMPILER=gcc
TARGET_BASE = test_primes
TARGET_EXTENSION=.out
TARGET = $(TARGET_BASE)$(TARGET_EXTENSION)
OUT_FILE=-o $(TARGET)
SRC_FILES=src/test/test_main.c \
	src/test/prime_finder_tests.c \
	src/main/is_prime.c \
	src/test/factorizer_tests.c \
	src/main/factorizer.c \
	src/test/prime_factors_tests.c \
	src/main/prime_factors.c \
	../Unity/extras/fixture/src/unity_fixture.c \
	../Unity/src/unity.c
INC_DIRS=-Isrc/main -I../Unity/src -I../Unity/extras/fixture/src
SYMBOLS=-DTEST -DUNITY_SUPPORT_64 -std=c99
LIBS=-lm

CLEANUP = rm -f build/*.o ; rm -f $(TARGET)

all: clean default

default:
	$(C_COMPILER) $(INC_DIRS) $(SYMBOLS) $(SRC_FILES) $(OUT_FILE) $(LIBS)
	./$(TARGET)

clean:
	$(CLEANUP)