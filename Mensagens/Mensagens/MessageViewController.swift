//
//  ViewController.swift
//  Mensagens
//
//  Created by Lucas Inocencio on 21/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class MessageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        message = Message()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! MessageColorViewController
        vc.message = message
    }
    
}

extension MessageViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        message.text = textField.text!
        lbMessage.text = textField.text!
        textField.resignFirstResponder()
        
        return true
    }
}

extension MessageViewController: ColorPickerProtocol {
    func applyColor(color: UIColor) {
        lbMessage.textColor = color
        message.textColor = color
    }
}
