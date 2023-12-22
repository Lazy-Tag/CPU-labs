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

volatile unsigned char flags[1023];

void initialize()
{
    unsigned int now = 0xFFFFFFFF;

    for (int i = 0; i < 1023; i++)
    {
        flags[i] = now & 1;
        now = (now << 1) | (((now >> 31) & 1) ^ ((now >> 30) & 1));
    }
}

int main(void)
{
    initialize();

    asm("sll $0, $0, 0\n\t");

    int now = 0;

    while (now < 1024)
    {
        if (flags[now])
            now = (now << 1) + 1;
        else
            now = now << 1;
    }

    printint(now);
    __exit();
}
