package app

import (
	"time"

	"github.com/andrewarrow/feedback/router"
)

func HandleApi(c *router.Context, second, third string) {
	if second == "" && third == "" && c.Method == "GET" {
		return
	}
	if second == "service" && third == "available" && c.Method == "GET" {
		handleServiceAvailable(c)
		return
	}
	c.NotFound = true
}

var layout = "2006-01-02"
var utc, _ = time.LoadLocation("UTC")
var ptc, _ = time.LoadLocation("America/Los_Angeles")

func handleServiceAvailable(c *router.Context) {
	date := c.Request.URL.Query().Get("date")
	if date == "" {
		date = time.Now().In(ptc).Format(layout)
	}
	guid := c.Request.URL.Query().Get("guid")
	service := c.One("service", "where guid=$1", guid)
	if len(service) == 0 {
		c.SendContentAsJson("service not found", 422)
		return
	}
	parsedDate, _ := time.ParseInLocation(layout, date, ptc)
	//start := parsedDate.In(utc).Unix()
	t1 := parsedDate.Format(layout)
	t2 := parsedDate.Add(time.Hour * 24).Format(layout)
	items := c.All("booking", "where service_id=$1 and starts_at between $2 and $3", "", service["id"], t1, t2)

	hours := []any{}
	for _, item := range items {
		start := item["starts_at_human"]
		hours = append(hours, start)
	}

	send := map[string]any{}
	send["items"] = hours
	c.SendContentAsJson(send, 200)
}
