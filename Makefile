CC = gcc  # 使用 GCC 编译器
CFLAGS = -Wall  # 编译时的标志
SRC = main.c  # 源文件
OBJ = main.o  # 目标文件
EXE = my_project  # 输出的可执行文件

# 默认目标
all: $(EXE)

# 链接目标文件生成可执行文件
$(EXE): $(OBJ)
	$(CC) $(OBJ) -o $(EXE)

# 编译源文件为目标文件
$(OBJ): $(SRC)
	$(CC) $(CFLAGS) -c $(SRC)

# 清理生成的文件
clean:
	rm -f $(OBJ) $(EXE)

.PHONY: all clean
