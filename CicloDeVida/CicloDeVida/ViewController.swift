//
//  ViewController.swift
//  CicloDeVida
//
//  Created by Lucas Inocencio on 19/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    //Carregado quando a tela é chamada
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela1: viewDidLoad")
        label.text = "Entre com o seu nome"
    }
    
    //Irá aparecer a tela
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela1: viewWillAppear")
    }
    
    //A tela apareceu
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Tela1: viewDidAppear")
        label.text = textField.text
    }
    
    //A tela irá desaparecer
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela1: viewWillDisappear")
    }
    
    //A tela desapareceu
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela1: viewDidDisappear")
    }

}

