# 一个简单的gcc例子

```c
#include <stdio.h>
int main(){
	printf("Hello, world!\n");
    return 0;
}
```
`gcc -Wall hello.c -o hello`
* 参数解释
	* `-Wall` :  Warming all
	* `hello.c`:  源文件
	* `-o`: 输出
	* `hello` : 初始化文件 缺省a.out
