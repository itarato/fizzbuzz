FizzBuzz implementations
========================

#Language go

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

#Language haskell

```haskell
foldl (\acc x -> acc ++ " " ++ x) "" [if mod x 15 == 0 then "fizzbuzz" else if mod x 3 == 0 then "fizz" else if mod x 5 == 0 then "buzz" else show x | x <- [1..100]]
```

#Language java

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

#Language javascript

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

#Language lolcode

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

#Language objectivec

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

#Language php

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

#Language python

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

#Language ruby

```ruby
(1..100).each { |i|
  out = ""

  out += "fizz" unless i % 3 > 0
  out += "buzz" unless i % 5 > 0
  out = i if out == ""

  puts out
}
```

#Language swift

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

