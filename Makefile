#.PHONY: clean
#CC = gcc
#TARGET = math
#DEPS = src/sum.h src/subtract.h
#OBJ = main.o sum.o subtract.o 

#%.o: %.c $(DEPS)
#	$(CC) -c -o $@ $<

#$(TARGET): $(OBJ)
#	$(CC) -o $@ $^

#clean:
#	rm *.o $(TARGET)

#--------------------------------------------------
.PHONY: all sumsub_1 install clean

TARGET=sumsub_1
SRC_FILES=main.c src/subtract.c src/sum.c
OBJ_FILES=$(patsubst %.c, %.o, ${SRC_FILES})


VPATH = src

CFLAGS = -c -g
LDFLAGS = -g

all: ${TARGET}

${TARGET}: ${OBJ_FILES}
	gcc ${LDFLAGS} -o ${TARGET} ${OBJ_FILES}

#%.o : %.c
#	gcc ${CFLAGS} $< -o $@
clean: 
	rm -f *.o src/*.o ${TARGET}

#MAIN_HDRS= subtract.h sum.h
#LIB_HDRS = ...

#main.o : $(addprefix $(VPATH)/, ${MAIN_HDRS})
#sum.o : $(addprefix $(VPATH)/, ${MAIN_HDRS})
#subtract.o : $(addprefix $(VPATH)/, ${MAIN_HDRS})
