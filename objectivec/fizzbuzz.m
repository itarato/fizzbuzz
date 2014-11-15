#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        for (int i = 1; i <= 100; i++) {
            if (!(i % 15)) {
                NSLog(@"fizzbuzz");
            }
            else if (!(i % 3)) {
                NSLog(@"fizz");
            }
            else if (!(i % 5)) {
                NSLog(@"buzz");
            }
            else {
                NSLog(@"%d", i);
            }
        }
    }
    return 0;
}