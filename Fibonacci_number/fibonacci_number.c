#include <stdio.h>

int F(int);

int main(){
    int num = 5, fib;
    fib = F(num);
    printf("The number of F(%d) = %d\n", num, fib);
}

int F(int n){
    int fibpre = 0, fib = 1, temp;
    for(int i = 2; i <= n; i++){
        temp = fib;
        fib += fibpre;
        fibpre = temp;
    }
    return fib;
}
