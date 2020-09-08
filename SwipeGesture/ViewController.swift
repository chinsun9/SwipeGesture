//
//  ViewController.swift
//  SwipeGesture
//
//  Created by sung hello on 2020/09/08.
//  Copyright © 2020 sung hello. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblMessage: UILabel!
    let numOfTouchs = 2
        
        var imgLeft = [String]()
        var imgRight = [String]()
        var imgUp = [String]()
        var imgDown = [String]()

        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
           imgUp.append("기본 상태")
            imgUp.append("위로 스와이프")
            imgUp.append("위로 멀티 스와이프")
            imgDown.append("-")
            imgDown.append("아래로 스와이프")
            imgDown.append("아래로 멀티 스와이프")
            imgLeft.append("-")
            imgLeft.append("왼쪽으로 스와이프")
            imgLeft.append("왼쪽으로 멀티 스와이프")
            imgRight.append("-")
            imgRight.append("오른쪽으로 스와이프")
            imgRight.append("오른쪽으로 멀티 스와이프")

            lblMessage.text = imgUp[0]
            
            let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
            swipeUp.direction = UISwipeGestureRecognizer.Direction.up
            self.view.addGestureRecognizer(swipeUp)
            
            let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
            swipeDown.direction = UISwipeGestureRecognizer.Direction.down
            self.view.addGestureRecognizer(swipeDown)
            
            let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
            swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
            self.view.addGestureRecognizer(swipeLeft)
            
            let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGesture(_:)))
            swipeRight.direction = UISwipeGestureRecognizer.Direction.right
            self.view.addGestureRecognizer(swipeRight)
            
            let swipeUpMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
            swipeUpMulti.direction = UISwipeGestureRecognizer.Direction.up
            swipeUpMulti.numberOfTouchesRequired = numOfTouchs
            self.view.addGestureRecognizer(swipeUpMulti)
            
            let swipeDownMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
            swipeDownMulti.direction = UISwipeGestureRecognizer.Direction.down
            swipeDownMulti.numberOfTouchesRequired = numOfTouchs
            self.view.addGestureRecognizer(swipeDownMulti)
            
            let swipeLeftMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
            swipeLeftMulti.direction = UISwipeGestureRecognizer.Direction.left
            swipeLeftMulti.numberOfTouchesRequired = numOfTouchs
            self.view.addGestureRecognizer(swipeLeftMulti)
            
            let swipeRightMulti = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.respondToSwipeGestureMulti(_:)))
            swipeRightMulti.direction = UISwipeGestureRecognizer.Direction.right
            swipeRightMulti.numberOfTouchesRequired = numOfTouchs
            self.view.addGestureRecognizer(swipeRightMulti)
        }

        @objc func respondToSwipeGesture(_ gesture: UIGestureRecognizer) {
            if let swipeGesture = gesture as? UISwipeGestureRecognizer {
                lblMessage.text = imgUp[0]
                
                switch swipeGesture.direction {
                case UISwipeGestureRecognizer.Direction.up:
                    lblMessage.text = imgUp[1]
                case UISwipeGestureRecognizer.Direction.down:
                    lblMessage.text = imgDown[1]
                case UISwipeGestureRecognizer.Direction.left:
                    lblMessage.text = imgLeft[1]
                case UISwipeGestureRecognizer.Direction.right:
                    lblMessage.text = imgRight[1]
                default:
                    break
                }
            }
        }
        
        @objc func respondToSwipeGestureMulti(_ gesture: UIGestureRecognizer) {
            if let swipeGesture = gesture as? UISwipeGestureRecognizer {
                lblMessage.text = imgUp[0]
                
                switch swipeGesture.direction {
                case UISwipeGestureRecognizer.Direction.up:
                    lblMessage.text = imgUp[2]
                case UISwipeGestureRecognizer.Direction.down:
                    lblMessage.text = imgDown[2]
                case UISwipeGestureRecognizer.Direction.left:
                    lblMessage.text = imgLeft[2]
                case UISwipeGestureRecognizer.Direction.right:
                    lblMessage.text = imgRight[2]
                default:
                    break
                }
            }
        }
        
    }
