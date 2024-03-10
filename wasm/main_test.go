package main

import (
	"testing"

	"github.com/zenizh/go-capturer"
)

func Test_main(t *testing.T) {
	expect := "Hello, WebAssembly!\n"
	actual := capturer.CaptureStdout(func() {
		main()
	})

	if expect != actual {
		t.Errorf("\nUnexpected output: %#v\nExpected output  : %#v\n", actual, expect)
	}
}
