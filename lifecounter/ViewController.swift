//
//  ViewController.swift
//  lifecounter
//
//  Created by Olivia Sapp on 4/17/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        p1Lives = 20
        p2Lives = 20
        lifeCount1.text = "Life Count: \(p1Lives)"
        lifeCount2.text = "Life Count: \(p2Lives)"
        loses.isHidden = true
    }
    var p1Lives = 20
    var p2Lives = 20
    
    @IBOutlet weak var lifeCount1: UILabel!
    @IBOutlet weak var lifeCount2: UILabel!
       
    
    func updateLifeCount1() {
        lifeCount1.text = "Life Count: \(p1Lives)"
        gameOver()
    }
    func updateLifeCount2() {
        lifeCount2.text = "Life Count: \(p2Lives)"
        gameOver()
    }
    
    //+1
    @IBAction func addLife1(_ sender: Any) {
        p1Lives += 1
        updateLifeCount1()
    }
    @IBAction func addLife2(_ sender: Any) {
        p2Lives += 1
        updateLifeCount2()
    }
    
    //+5
    @IBAction func add5Lives1(_ sender: Any) {
        p1Lives += 5
        updateLifeCount1()
    }
    @IBAction func add5Lives2(_ sender: Any) {
        p2Lives += 5
        updateLifeCount2()
    }
    
    // -1
    @IBAction func subtratctLife1(_ sender: Any) {
        p1Lives -= 1
        updateLifeCount1()
    }
    @IBAction func subtratctLife2(_ sender: Any) {
        p2Lives -= 1
        updateLifeCount2()
    }
    
    //-5
    @IBAction func subtract5Lives1(_ sender: Any) {
        p1Lives -= 5
        updateLifeCount1()
    }
    
    @IBAction func subtract5Lives2(_ sender: Any) {
        p2Lives -= 5
        updateLifeCount2()
    }
   
    @IBOutlet weak var loses: UILabel!
    
    func gameOver(){
        if p1Lives <= 0 {
            loses.text = "Player 1 LOSES!"
            loses.isHidden = false
        }
        else if p2Lives <= 0{
            loses.text = "Player 2 LOSES!"
            loses.isHidden = false
        }
    }

}

