#import "/strings/en.typ": *
#import "/pages/cover.typ": make-cover, default-label

#set page(
  paper: "a4",
  margin: (top: 2.1cm, left: 2.5cm, right: 2.5cm, bottom: 2.5cm),
)

#set text(font: ("Times New Roman"))

#make-cover()

#include "/pages/notes.typ"
#include "/pages/report.typ"
#include "/pages/work-plan.typ"
#include "/pages/spv-comment.typ"
