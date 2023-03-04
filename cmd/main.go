package main

import (
	"log"

	"video_conference_sfu/internal/server"
)

func main() {
	if err := server.Run(); err != nil {
		log.Fatalln(err.Error())
	}
}
