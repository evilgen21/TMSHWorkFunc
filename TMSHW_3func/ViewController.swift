//
//  ViewController.swift
//  TMSHW_3func
//
//  Created by Евгений Сабина on 10.02.24.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    
    @IBOutlet weak var TextF1: UITextField!
    @IBOutlet weak var TextF2: UITextField!
    
    @IBOutlet weak var Label1: UILabel!
    @IBOutlet weak var ButtonP1: UIButton!
    @IBOutlet weak var ButtonP2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // делегирование для 
        TextF1.delegate = self
        TextF2.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
     {
         TextF1.resignFirstResponder()
         TextF2.resignFirstResponder()
       return true
      }
  ///
 
    
    @IBAction func TAP(_ sender: UITapGestureRecognizer) {
        TextF1.resignFirstResponder()
    }
    
    
    
   ///функции
    
    func printHi(YouName: String) -> String {
            return "Hello, " + YouName + "!"
      }
    
    
    func chartwo(_ str1: String, _ str2: String) -> Int {
        return ("\(str1)\(str2)".count)
        
     }
 
    //-----------
    
    
    
    //---кнопки
    
    
    @IBAction func PushBB(_ sender: UIButton) {
        
        Label1.text = (printHi(YouName: TextF1.text!))
        
        
        TextF1.resignFirstResponder()
        TextF2.resignFirstResponder()
       
    }
  

    @IBAction func Pushbbb(_ sender: UIButton) {
        
        Label1.text = String("2 строки содержат \(chartwo(TextF1.text!, TextF2.text!)) символов ")
              
        TextF1.resignFirstResponder()
        TextF2.resignFirstResponder()
        
    }
    
    //----------
    
    
    
    
}

