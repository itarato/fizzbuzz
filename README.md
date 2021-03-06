FizzBuzz implementations
========================

From Wikipedia (http://en.wikipedia.org/wiki/Fizz_buzz): "*Another variation is to replace numbers divisible by 3 with "Fizz", numbers divisible by 5 with "Buzz" (as per the original), but in addition, replace numbers divisible by both 3 and 5 with "FizzBuzz". It would produce something as follows.*"

Output: 
```
1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz, Fizz, 22...
```

#Language BRAINFUCK

```brainfuck
+++++ +++++ init vars
[
  >++++ minus
  >+++++ +++++ f
  >+++++ +++++ i
  >+++++ +++++ ++ z
  >+++++ +++++ b
  >+++++ +++++ ++ u
  >+ lf
  >+++++ +++++ loop 100
  <<<<< <<<-
]

>+++++ else (minus)
>++ f
>+++++ i
>++ z
>-- b
>--- u

>>>>>
+++ set cycle num to 3
>>>>
+++++ set second cycle num to 5

<<<<< << back to cycle
[
  >+ set else flag (when no cycle is zero)

  >> cycle check
  [
    - decrement cycle num

    >+>+<< sets zero flags bit to 1
    [
      >[-]>[-]<< sets temp bit to 0 in case it's still not 0
      < go to exit this is why we need 2 zero
    ]

    >> check if zero flag is on
    [
      <<<<< <<<<< <.>.>..>>>>> >>>> fizz
      <<<<[-]>>>> remove else flags
      <<+++>> restore cycle number
      [-]<[-] zero the flags
    ]
    < back to cycle num
    < back to exit flag
  ]

  >>>>> cycle check
  [
    - decrement cycle num

    >+>+<< sets zero flags bit to 1
    [
      >[-]>[-]<< sets temp bit to 0 in case it's still not 0
      < go to exit this is why we need 2 zero
    ]

    >> check if zero flag is on
    [
      <<<<< <<<<< <<.>.<<..>>>>> >>>>> >>> buzz
      <<<<< <<<[-]>>>>> >>> remove else flags
      <<+++++>> restore cycle number
      [-]<[-] zero the flags
    ]
    < back to cycle num
    < back to exit flag
  ]
  <<<<< < back to loop

  > if no fizz or buzz then minus
  [
    <<<<< <<<.>>>>> >>> else sign
    [-]
  ]
  <

  <.> new line

  - decrement loop
]

```

#Language C

```c
#include <stdio.h>

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
```

#Language CPP

```cpp
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
```

#Language GO

```go
package main

import (
	"fmt"
	"strconv"
)

func main() {
	var out string

	for i := 1; i <= 100; i++ {
		out = ""

		if (i % 3) == 0 {
			out = out + "fizz"
		}

		if (i % 5) == 0 {
			out = out + "buzz"
		}

		if out == "" {
			out = strconv.Itoa(i)
		}

		fmt.Println(out)
	}
}

```

#Language HASKELL

```haskell
foldl (\acc x -> acc ++ " " ++ x) "" [if mod x 15 == 0 then "fizzbuzz" else if mod x 3 == 0 then "fizz" else if mod x 5 == 0 then "buzz" else show x | x <- [1..100]]
```

#Language JAVA

```java
public class Main {

  public static void main(String[] args) {
    String out = "";

    for (int i = 1; i <= 100; i++) {
      out = "";
      if (i % 3 == 0) {
        out = out + "fizz";
      }
      if (i % 5 == 0) {
        out = out + "buzz";
      }

      if (out.equals("")) {
        out = String.valueOf(i);
      }

      System.out.println(out);
    }
  }

}

```

#Language JAVASCRIPT

```javascript
'use strict';

var out;

for (var i = 1; i <= 100; i++) {
  out = '';

  if (!(i % 3)) {
    out = out + 'fizz';
  }

  if (!(i % 5)) {
    out = out + 'buzz';
  }

  if (!out) {
    out = i;
  }

  console.log(out);
}

```

#Language LOLCODE

```lolcode
HAI 1.2
  CAN HAS STDIO?

  IM IN YR LOOP UPPIN YR INDEX TIL BOTH SAEM INDEX AN 101
    BOTH SAEM 0 AN MOD OF INDEX AN 15
    O RLY?
      YA RLY
        VISIBLE "fizzbuzz"
      MEBBE BOTH SAEM 0 MOD OF INDEX AN 3
        VISIBLE "fizz"
      MEBBE BOTH SAEM 0 MOD OF INDEX AN 5
        VISIBLE "buzz"
      NO WAI
        VISIBLE INDEX
    OIC
  IM OUTTA YR LOOP
KTHXBYE

```

#Language OBJECTIVEC

```objectivec
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
```

#Language PHP

```php
<?php

for ($i = 1; $i <= 100; $i++) {
  $out = '';

  if (!($i % 3)) {
    $out .= 'fizz';
  }

  if (!($i % 5)) {
    $out .= 'buzz';
  }

  if (empty($out)) {
    $out = $i;
  }

  echo "$out ";
}

```

#Language PYTHON

```python
for i in range(1, 101):
  out = ""

  if i % 3 == 0:
    out += "fizz"

  if i % 5 == 0:
    out += "buzz"

  if out == "":
    out = i

  print(out)
```

#Language RUBY

```ruby
(1..100).each { |i|
  out = ""

  out += "fizz" unless i % 3 > 0
  out += "buzz" unless i % 5 > 0
  out = i if out == ""

  puts out
}
```

#Language SWIFT

```swift
(1...101).map {
    (n:Int) -> String in
    var out:String = ""
    if n % 3 == 0 {
        out += "fizz"
    }
    if n % 5 == 0 {
        out += "buzz"
    }
    if out == "" {
        out = String(n)
    }
    return out
}
```

