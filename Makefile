BUILD_DIR := build

CC := gcc
S := gcc
CCFLAGS := -O2 -march=native -fomit-frame-pointer -fallow-store-data-races -Wno-pointer-to-int-cast -I includes
LD := ld
MAKE := make
AR := ar


SOURCES=$(wildcard src/*.c)

OBJECTS=$(patsubst src/%.c,$(BUILD_DIR)/%.o,$(SOURCES))

OUTPUT := runk.a

default: mkdir build

mkdir:
	mkdir -p ${BUILD_DIR}

$(BUILD_DIR)/%.o: src/%.c
	$(CC) $(CCFLAGS) $^ -c -o $@

build: ${OBJECTS}
	${AR} cr ${OUTPUT} $^

clean:
	rm -rf ${BUILD_DIR} ${OUTPUT}
