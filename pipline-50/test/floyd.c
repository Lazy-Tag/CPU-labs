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

// #include <stdio.h>

const int MX = 10;
int G[MX][MX];

int main()
{
    int tmp = 0xF0F0;
    for (int i = 0; i < MX; i++)
        for (int j = 0; j < MX; j++)
        {
            tmp = (tmp << 1) + (((tmp >> 14) & 1) ^ ((tmp >> 13) & 1));
            G[i][j] = (tmp & 0xFFFF) / 100 * (i - j) * (i - j);
        }

    asm("nop\n\t");

    for (int i = 0; i < MX; i++)
        for (int j = 0; j < MX; j++)
            for (int k = 0; k < MX; k++)
                if (G[j][k] > G[j][i] + G[i][k])
                    G[j][k] = G[j][i] + G[i][k];
    // printf("%d\n", G[0][9]);
    printint(G[0][MX - 1]);
    __exit();
}
