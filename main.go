package main

import (
	"fmt"
	"time"
)

func main() {
	now := time.Now()
	fmt.Println("hello golang !")
	fmt.Println(now.Format("2006.01.02 15:04:05"))
}
