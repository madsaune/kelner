package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
)

func main() {
	port := flag.String("port", ":8888", "port number")
	rootFolder := flag.String("root", "./", "root folder")
	flag.Parse()

	http.Handle("/", http.FileServer(http.Dir(*rootFolder)))

	fmt.Printf("Serving files from %s on localhost%s...\n", *rootFolder, *port)
	log.Fatal(http.ListenAndServe(*port, nil))
}
