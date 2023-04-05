//
//  ViewController.swift
//  safepass
//
//  Created by xscotophilic on 06/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    let min = 8
    let max = 20
    
    var selectedLength = 0;
    
    @IBOutlet weak var length: UILabel!
    @IBOutlet weak var password: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedLength = min
        length.text = min.formatted()
        slider.minimumValue = Float(min)
        slider.maximumValue = Float(max)
        generatePassword()
    }
    
    @IBAction func onSlide(_ sender: UISlider) {
        let value = Int(sender.value/1.0)
        sender.setValue(
            Float(value), animated: true
        )
        selectedLength = value
        length.text = value.formatted()
    }
    
    @IBAction func onGenerate(_ sender: Any) {
        generatePassword()
    }
    
    func generatePassword(){
        let generateFrom = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        password.text = String((0..<selectedLength).map{ element in generateFrom.randomElement()! })
    }
}
