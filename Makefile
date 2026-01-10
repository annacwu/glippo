CC = gcc
CFLAGS = -Wall -Wextra -std=c99
LDFLAGS = -lraylib -lm -ldl -lpthread -lX11

TARGET = game
SRC = main.c

all: $(TARGET)

$(TARGET): $(SRC)
  $(CC) $(CFLAGS) $(SRC) -o $(TARGET) $(LDFLAGS)

clean:
  rm -f $(TARGET)

