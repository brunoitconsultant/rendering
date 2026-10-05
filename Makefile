WASM_CC = clang

WASM_CFLAGS = --target=wasm32 -O3 -nostdlib

WASM_LDFLAGS = -Wl,--no-entry \
               -Wl,--export=get_buffer_pointer \
               -Wl,--export=generate_frame

TARGET = renderer.wasm
SRC = renderer.c

all: $(TARGET)

$(TARGET): $(SRC)
	$(WASM_CC) $(WASM_CFLAGS) $(WASM_LDFLAGS) -o $(TARGET) $(SRC)

clean:
	rm -f $(TARGET)

.PHONY: all clean

