package main

import (
	"fmt"
	"net/http"
)

func index(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "<h1>We are the Knights Who Say 'Ni'!</h1>")
}

func main() {
	http.HandleFunc("/", index)
	fmt.Println("Server starting...")
	http.ListenAndServe(":3002", nil)
}
