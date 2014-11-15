#include <iostream>

int main(int argc, const char * argv[]) {
    for (int i = 1; i <= 100; i++) {
        if (!(i % 15)) {
            printf("fizzbuzz\n");
        }
        else if (!(i % 3)) {
            printf("fizz\n");
        }
        else if (!(i % 5)) {
            printf("buzz\n");
        }
        else {
            printf("%d\n", i);
        }
    }

    return 0;
}