//
//  InicialScreenViewController.swift
//  InvestingProfile
//
//  Created by akira tsukamoto on 10/05/19.
//  Copyright © 2019 akira tsukamoto. All rights reserved.
//

import UIKit

class InicialScreenViewController: UIViewController {
    @IBOutlet weak var botao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    override func viewWillAppear(_ animated: Bool) {
        botao.layer.cornerRadius = 0.5 * botao.bounds.size.width
        botao.clipsToBounds = true
        botao.backgroundColor = .clear
        botao.layer.borderWidth = 2
        botao.layer.borderColor = UIColor.init(displayP3Red: 28/255, green: 119/255, blue: 27/255 , alpha: 1.0 ).cgColor
        view.addSubview(botao)
        
    }
    

}
