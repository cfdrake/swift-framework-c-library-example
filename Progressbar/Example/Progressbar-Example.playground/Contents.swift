//: Playground - noun: a place where people can play

import Cocoa
import Progressbar

let max: UInt = 30
let bar = Progressbar(text: "foo", max: max)

for i in 1...max {
    bar.increment()
    sleep(1)
}

bar.finish()
