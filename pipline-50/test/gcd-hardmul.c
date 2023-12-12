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

unsigned int __attribute__((noinline)) gcd(unsigned int x, unsigned int y)
{
    if (x < y)
        return gcd(y, x);
    
    if (y == 0)
        return x;
    
    return gcd(y, x % y);
}

int main(void)
{
    printint(gcd(4181, 2584));
    __exit();
}
