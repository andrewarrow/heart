package browser

import (
	"github.com/andrewarrow/feedback/wasm"
)

var Global *wasm.Global
var Document *wasm.Document

func RegisterEvents() {
	if Global.Start == "start.html" {
		Global.AutoForm("start", "heart", nil, start1)
	} else if Global.Start == "login.html" {
	} else if Global.Start == "register.html" {
	}
}

func start1(id int64) {
	d := Document.Id("start")
	d.Set("innerHTML", "Hi! Pick your avatar photo or no photo at all:")
	Document.Id("people").Show()
	top()
}

func top() {
	// window.scrollTo({ top: 0, behavior: 'smooth' // This makes the scrolling smooth });
	w := Global.Global.Get("window")
	opts := Global.Global.Get("JSON").Call("parse", `{"top": 0, "behavior": "smooth"}`)
	w.Call("scrollTo", opts)
}
