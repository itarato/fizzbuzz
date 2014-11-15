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
