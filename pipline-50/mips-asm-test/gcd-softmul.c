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

typedef struct
{
    unsigned int numer;
    unsigned int denom;
} Div_t;

Div_t div(unsigned int x, unsigned int y)
{
    Div_t result = {0, 0};

    while (x >= y)
    {
        x -= y;
        result.numer++;
    }

    result.denom = x;

    return result;
}

unsigned int __attribute__((noinline)) gcd(unsigned int x, unsigned int y)
{
    if (x < y)
        return gcd(y, x);
    
    if (y == 0)
        return x;
    
    Div_t div_result = div(x, y);
    
    return gcd(y, div_result.denom);
}

int main(void)
{
    printint(gcd(4181, 2584));
    __exit();
}
