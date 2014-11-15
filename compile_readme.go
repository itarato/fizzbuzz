package main

import (
	"fmt"
	"io/ioutil"
	"os"
	"regexp"
)

var path = "./"

func main() {
	fmt.Println("FizzBuzz implementations")
	fmt.Println("========================\n")

	file, _ := os.Open(path)
	dirInfos, _ := file.Readdir(0)
	regexp, _ := regexp.Compile(".*\\.class")
	for _, dirInfo := range dirInfos {
		if !dirInfo.IsDir() || dirInfo.Name() == ".git" {
			continue
		}

		fmt.Println("#Language " + dirInfo.Name() + "\n")

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
