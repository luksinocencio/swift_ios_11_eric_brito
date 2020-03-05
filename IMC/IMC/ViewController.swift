//
//  ViewController.swift
//  IMC
//
//  Created by Lucas Inocencio on 17/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var pesoText: UITextField!
    @IBOutlet weak var alturaText: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var viewResultado: UIView!
    
    var imc: Double = 0
    
    @IBAction func calcularButton(_ sender: Any) {
        if let peso = Double(pesoText.text!), let altura = Double(alturaText.text!) {
            imc = peso / pow(altura, 2)
            showResult()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    func showResult() {
        var result: String = ""
        var image: String = ""
        
        switch imc {
            case 0..<16:
                result = "Magreza"
                image = "abaixo"
                break;
            case 16..<18.5:
                result = "Abaixo do peso"
                image = "ideal"
                break;
            case 18.5..<25:
                result = "Peso ideal"
                image = "ideal"
                break;
            case 25..<30:
                result = "Sobrepeso"
                image = "sobre"
                break;
            default:
                result = "Obesidade"
                image = "obesidade"
                break;
        }
        resultadoLabel.text = "\(Int(imc)): \(result)"
        resultImage.image = UIImage(named: image)
        viewResultado.isHidden = false
        view.endEditing(true)
    }

}

