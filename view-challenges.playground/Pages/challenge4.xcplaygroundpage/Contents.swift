import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .white
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

let colors: [UIColor] = [.green, .gray, .purple, .yellow, .red, .orange, .lightGray, .white, .blue]

/*:
 **Task**: Create an even grid on the `canvas`, made out of squares that each are one third as wide and one third as high as the `canvas`.Use the same colors as in the picture (they are already defined for you above in the `colors` array):
 
 ![Challenge 4](./challenge4.png "Challenge 4")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */


let redviewframe = CGRect(x: 100, y: 100, width: 100, height: 100)
let blueviewframe = CGRect(x: 200, y:200, width: 100, height: 100)
let greenviewframe = CGRect(x: 0, y:0, width: 100, height: 100)
let grayviewframe = CGRect(x: 100, y: 0, width: 100, height: 100)
let grayviewframe2 = CGRect(x: 0, y: 200, width: 100, height: 100)
let purpleviewframe = CGRect(x: 200, y: 0, width: 100, height: 100)
let orangeviewframe = CGRect(x: 200, y: 100, width: 100, height: 100)
let yellowviewframe = CGRect(x: 0, y: 100, width: 100, height: 100)

let redview = UIView(frame:redviewframe)
let blueview = UIView(frame:blueviewframe)
let greenview = UIView(frame:greenviewframe)
let grayview = UIView(frame: grayviewframe)
let grayview2 = UIView(frame: grayviewframe2)
let purpleview = UIView(frame: purpleviewframe)
let orangeview = UIView(frame: orangeviewframe)
let yellowview = UIView(frame: yellowviewframe)


redview.backgroundColor = .red
blueview.backgroundColor = .blue
greenview.backgroundColor = .green
grayview.backgroundColor = .gray
grayview2.backgroundColor = .gray
purpleview.backgroundColor = .purple
orangeview.backgroundColor = .orange
yellowview.backgroundColor = .yellow

canvas.addSubview(redview)
canvas.addSubview(blueview)
canvas.addSubview(greenview)
canvas.addSubview(grayview)
canvas.addSubview(grayview2)
canvas.addSubview(purpleview)
canvas.addSubview(orangeview)
canvas.addSubview(yellowview)



