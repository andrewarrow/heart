package browser

import (
	"github.com/andrewarrow/feedback/wasm"
)

var Global *wasm.Global
var Document *wasm.Document

func RegisterEvents() {
	LogoutEvents()
	afterRegister := func(id int64) {
		Global.Location.Set("href", "/heart/start")
	}
	afterLogin := func(id int64) {
		Global.Location.Set("href", "/heart/start")
	}
	if Global.Start == "start.html" {
		Global.AutoForm("start", "heart", nil, start1)
	} else if Global.Start == "login.html" {
		Global.AutoForm("login", "heart", nil, afterLogin)
	} else if Global.Start == "register.html" {
		Global.AutoForm("register", "heart", nil, afterRegister)
	}
}

func start1(id int64) {
	d := Document.Id("start")
	d.Set("innerHTML", "Hi! Pick your avatar photo or no photo at all:")
	people := Document.Id("people")
	people.Show()
	for _, img := range people.SelectAll("img") {
		img.EventWithId(pickPerson)
	}
	top()
}

func pickPerson() {
	d := Document.Id("start")
	d.Set("innerHTML", "Thanks!")
	people := Document.Id("people")
	people.Hide()
	top()
	Document.Id("toolbar").Show()
}

func top() {
	// window.scrollTo({ top: 0, behavior: 'smooth' // This makes the scrolling smooth });
	//behavior auto
	w := Global.Global.Get("window")
	//opts := Global.Global.Get("JSON").Call("parse", `{"top": 0, "behavior": "smooth"}`)
	w.Call("scrollTo", 0, 0)
}
func LogoutEvents() {
	if Document.Id("logout") == nil {
		return
	}
	Global.Event("logout", Global.Logout("/heart"))
}
