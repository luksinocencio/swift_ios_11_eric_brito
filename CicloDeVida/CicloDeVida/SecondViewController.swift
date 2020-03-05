//
//  SecondViewController.swift
//  CicloDeVida
//
//  Created by Lucas Inocencio on 19/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //Carregado quando a tela é chamada
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela2: viewDidLoad")
    }
    
    //Irá aparecer a tela
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela2: viewWillAppear")
    }
    
    //A tela apareceu
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Tela2: viewDidAppear")
    }
    
    //A tela irá desaparecer
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela2: viewWillDisappear")
    }
    
    //A tela desapareceu
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela2: viewDidDisappear")
    }

}
