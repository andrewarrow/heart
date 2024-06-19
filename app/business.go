package app

import (
	"fmt"

	"github.com/andrewarrow/feedback/router"
)

func handleBusinessShow(c *router.Context, guid string) {
	send := map[string]any{}
	item := c.One("business", "where guid=$1", guid)
	services := c.All("service", "where business_id=$1", "", item["id"])
	times := []string{}
	for i := 6; i < 13; i++ {
		time := fmt.Sprintf("%02d:00 AM", i)
		times = append(times, time)
	}
	for i := 1; i < 12; i++ {
		time := fmt.Sprintf("%02d:00 PM", i)
		times = append(times, time)
	}
	//hoursForDay(c)
	send["times"] = times
	send["item"] = item
	send["services"] = services
	c.SendContentInLayout("business.html", send, 200)
}

/*
func hoursForDay(c *router.Context) {
	date := time.Now().In(ptc).Format(layout)
	parsedDate, _ := time.ParseInLocation(layout, date, ptc)
	t1 := parsedDate.Format(layout)
	t2 := parsedDate.Add(time.Hour * 24).Format(layout)
	hours := c.All("booking", "where service_id=$1 and starts_at between $2 and $3", "", service["id"], t1, t2)
	fmt.Println("1", hours)
} */
