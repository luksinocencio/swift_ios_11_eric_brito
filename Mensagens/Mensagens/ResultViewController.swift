//
//  ResultViewController.swift
//  Mensagens
//
//  Created by Lucas Inocencio on 21/11/17.
//  Copyright © 2017 Lucas Inocencio. All rights reserved.
//

import UIKit

class ResultViewController: BaseViewController {
    var useWhiteBoorder: Bool = false

    @IBOutlet weak var viBorder: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Esconder a navigation bar
        navigationController?.setNavigationBarHidden(true, animated: true)
        lbMessage.text = message.text
        lbMessage.textColor = message.textColor
        lbMessage.backgroundColor = message.backgroundColor
        view.backgroundColor = message.screenColor
        viBorder.backgroundColor = useWhiteBoorder ? .white :.clear
    }

    //Forma de voltar para outra tela
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        navigationController?.popViewController(animated: true)
    }
}
