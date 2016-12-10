
import UIKit
import PlaygroundSupport

let canvasFrame = CGRect(x: 0, y :0, width: 300, height: 300)
let canvas = UIView(frame: canvasFrame)
canvas.backgroundColor = .blue
PlaygroundPage.current.liveView = canvas // make the canvas appear in the assistant editor

/*:
 **Task**: Add three `UIView`s to the `canvas`. Each of these views should be square and have a third of the `canvas`' `width` and `height`. 
 
 
 ![Challenge 2](./challenge2.png "Challenge 2")
 
 1. Implement above task by setting the views' `frame`s directly.
 2. Implement above task by defining _AutoLayout_ constraints programmatically.
 
 (Make sure to comment out the first implementation once you start working on the second one to avoid confusion.)
 */
//setting view frames directly
let redviewframe = CGRect(x: 0, y: 0, width: 100, height: 100)
let redviewframe2 = CGRect(x: 100, y:100, width: 100, height: 100)
let redviewframe3 = CGRect(x: 200, y:200, width: 100, height: 100)

let redview = UIView(frame:redviewframe)
let redview2 = UIView(frame:redviewframe2)
let redview3 = UIView(frame:redviewframe3)

redview.backgroundColor = .red
redview2.backgroundColor = .red
redview3.backgroundColor = .red

canvas.addSubview(redview)
canvas.addSubview(redview2)
canvas.addSubview(redview3)

// attempt at using autolayout
let greenView = UIView(frame: CGRect.zero)
greenView.translatesAutoresizingMaskIntoConstraints = false
greenView.backgroundColor = .green
canvas.addSubview(greenView)

let margin: CGFloat = 20
NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: canvas, attribute: .height, multiplier: 1, constant: (-margin-margin)).isActive = true
NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: canvas, attribute: .width, multiplier: 0.5, constant: 0).isActive = true
NSLayoutConstraint(item: greenView, attribute: .leading, relatedBy: .equal, toItem: canvas, attribute: .leading, multiplier: 1, constant: margin).isActive = true
NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: canvas, attribute: .top, multiplier: 1, constant: margin).isActive = true
NSLayoutConstraint(item: greenView, attribute: .bottom, relatedBy: .equal, toItem: canvas, attribute: .bottom, multiplier: 1, constant: margin).isActive = true

