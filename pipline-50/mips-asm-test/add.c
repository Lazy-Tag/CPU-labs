asm("ori $sp, $0, 0x1000\n\t"
    "j main\n\t");

void printint(int x)
{
    asm volatile("xori $v0, $0, 1\n\t"
                 "move $a0, %[input]\n\t"
                 "syscall\n\t"
                 :
                 : [input] "r"(x)
                 : "v0", "a0");
}

void __exit()
{
    asm volatile("xori $v0, $0, 10\n\t"
                 "syscall\n\t"
                 :
                 :
                 : "v0");
}

volatile int run = 0;

int main(void)
{
    int t = 0;

    #pragma GCC unroll 1
    for (int i = run; i < 10000; i++)
        t += i;

    printint(t);
    __exit();
}
