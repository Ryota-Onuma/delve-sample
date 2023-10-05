package main

import (
	"testing"
)

func TestRun(t *testing.T) {
	hoge := struct {
		fuga bool
	}{
		fuga: false,
	}

	if !hoge.fuga {
		t.Errorf("fuga is not true")
	}
}
