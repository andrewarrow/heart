package app

import (
	"math/rand"
	"time"

	"github.com/andrewarrow/feedback/router"
)

func handleBookBook(c *router.Context) {
	c.ReadJsonBodyIntoParams()
	//"name": "business_id",
	//"name": "service_id",
	//"name": "user_id",
	//"name": "starts_at",
	//"name": "ends_at",
	//"name": "duration",
	date, _ := c.Params["hidden-date"].(string)
	parsedDate, _ := time.ParseInLocation(layout, date, ptc)
	start := parsedDate.Add(time.Hour * time.Duration(9+rand.Intn(8)))
	end := start.Add(time.Hour * 1)
	c.Params["business_id"] = 1
	c.Params["service_id"] = 1
	c.Params["user_id"] = 1
	c.Params["starts_at"] = start.Unix()
	c.Params["ends_at"] = end.Unix()
	c.Params["duration"] = 3600
	c.ValidateCreate("booking")
	c.Insert("booking")
	send := map[string]any{}
	send["return"] = "/book/bookings"
	c.SendContentAsJson(send, 200)
}
func handleBookings(c *router.Context) {
	send := map[string]any{}
	items := c.All("booking", "order by updated_at desc", "")
	c.DecorateList(items)
	send["items"] = items
	c.SendContentInLayout("bookings.html", send, 200)
}
