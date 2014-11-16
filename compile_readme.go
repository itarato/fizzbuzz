package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"regexp"
	"strings"
)

var path = "./"

func main() {
	fmt.Println("FizzBuzz implementations")
	fmt.Println("========================\n")
	fmt.Println("From Wikipedia (http://en.wikipedia.org/wiki/Fizz_buzz): \"Another variation is to replace numbers divisible by 3 with \"Fizz\", numbers divisible by 5 with \"Buzz\" (as per the original), but in addition, replace numbers divisible by both 3 and 5 with \"FizzBuzz\". It would produce something as follows.\"\n")
	fmt.Println("Output: ```1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, 16, 17, Fizz, 19, Buzz, Fizz, 22...```\n")

	file, _ := os.Open(path)
	dirInfos, _ := file.Readdir(0)
	regexp, _ := regexp.Compile(".*\\.class")
	for _, dirInfo := range dirInfos {
		if !dirInfo.IsDir() || dirInfo.Name() == ".git" {
			continue
		}

		fmt.Println("#Language " + strings.ToUpper(dirInfo.Name()) + "\n")

		languageFolder, _ := os.Open(path + dirInfo.Name() + "/")
		languageFileList, _ := languageFolder.Readdir(0)
		for _, languageFileInfo := range languageFileList {
			if regexp.MatchString(languageFileInfo.Name()) {
				continue
			}

			fileContentBuff, _ := ioutil.ReadFile(path + dirInfo.Name() + "/" + languageFileInfo.Name())
			content := string(fileContentBuff)

			fmt.Println("```" + dirInfo.Name())
			fmt.Println(content)
			fmt.Println("```\n")
		}
	}

}
