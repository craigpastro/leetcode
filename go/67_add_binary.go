// 67. Add Binary
// Easy
//
// Given two binary strings a and b, return their sum as a binary string.
package main

import (
	"math/big"
)

func addBinary(a string, b string) string {
	aa, _ := new(big.Int).SetString(a, 2)
	bb, _ := new(big.Int).SetString(b, 2)

	res := &big.Int{}
	res.Add(aa, bb)

	return res.Text(2)
}
