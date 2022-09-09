//
//  ViewController.swift
//  NewApp
//
//  Created by Кирилл Брызгунов on 04.09.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var changeButton: UIButton!
    @IBOutlet weak var skyImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //skyImageView.image = UIImage(systemName: "moon")
        skyImageView.tintColor = .gray
        //changeButton.tintColor = .green
    }
    
    
    private var isSun: Bool = true
    @IBAction func buttonDidTap(_ sender: Any) {

        //skyImageView.tintColor = .blue
        if isSun { // 1
            skyImageView.image = UIImage(systemName: "moon")
            changeButton.setTitle("Луна!", for: .normal)
            skyImageView.tintColor = .blue
        } else {
            skyImageView.image = UIImage(systemName: "sun.max")
            changeButton.setTitle("Солнышко!", for: .normal)
            skyImageView.tintColor = .systemYellow
        }
        isSun.toggle() // 4
    }
    
}

