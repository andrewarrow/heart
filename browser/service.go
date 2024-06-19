package browser

import (
	"fmt"
	"strings"
)

type Service struct {
	Id string
}

var ServiceId string

func (s *Service) Click() {
	ServiceId = s.Id
	go getHours("")
	Document.Id("date-div").RemoveClass("hidden")
	Document.Id("services").AddClass("hidden")
	Document.Id("selected-service").Set("innerHTML", "Book 30 minute sauna")
	Document.Id("selected-service").RemoveClass("hidden")
	Global.AutoForm("book", "/book")
}

func getHours(date string) {
	data := Global.LoadData("/api/service/available?date="+date, ServiceId)
	times := Document.Id("times")
	options := []string{}
	for _, item := range data {
		options = append(options, fmt.Sprintf("<option>%v</option>", item))
	}
	times.Set("innerHTML", strings.Join(options, "\n"))
}
