//
//  ViewController.swift
//  TextField
//
//  Created by Lucas Inocencio on 21/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfName.delegate = self
        tfEmail.delegate = self
        tfPassword.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //sumir o teclado clicando na view
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    //Indica o proximo campo
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == tfName {
            tfEmail.becomeFirstResponder()
        } else if textField == tfEmail{
            //tfPassword.becomeFirstResponder()
            print("Enviando dados ao servidor")
            //view.endEditing(true) //tirar o foco do campo sendo editado e esconder o teclado
            textField.resignFirstResponder()
        } else {
            print("done")
        }
        return true
    }
    
    //validar campo
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
         return !textField.text!.isEmpty
    }
}

