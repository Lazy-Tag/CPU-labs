asm("ori $sp, $0, 0x1000\n\t"
    "j main\n\t");

void printint(int x)
{
    asm volatile("xori $v0, $0, 1\n\t"
        "move $a0, %[input]\n\t"
        "syscall\n\t" 
        : 
        : [input] "r" (x)
        : "v0", "a0");
}

void __exit()
{
    asm volatile("xori $v0, $0, 10\n\t"
        "syscall\n\t"
        :
        :
        :"v0");
}

unsigned int __attribute__((noinline)) lfsr(unsigned int x, unsigned int num)
{
    for (int i = 0; i < num; i++)
    {
        x = (x << 1) | (((x >> 31) & 1) ^ ((x >> 30) & 1));
    }

    return x;
}

int main(void)
{
    printint(lfsr(0xFFFFFFFF, 1000));
    __exit();
}
