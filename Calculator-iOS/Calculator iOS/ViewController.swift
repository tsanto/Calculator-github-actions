//
//  ViewController.swift
//  Calculator-iOS
//
//  Created by Tiago Santo on 10/30/19.
//  Copyright © 2019 TiagoSanto. All rights reserved.
//

import UIKit
import Calculator

class ViewController: UIViewController {

    @IBOutlet weak var valueXTextField: UITextField!
    @IBOutlet weak var valueYTextField: UITextField!
    @IBOutlet weak var resultValueLabel: UILabel!

    var calculator: Calculator?

    override func viewDidLoad() {
        super.viewDidLoad()

        calculator = Calculator()
    }


    @IBAction func multiplyTapped(_ sender: Any) {
        let valueX = Int(valueXTextField.text?.removeNonNumerics() ?? "0") ?? 0
        let valueY = Int(valueYTextField.text?.removeNonNumerics() ?? "0") ?? 0

        let result = calculator?.multitply(valueX, with: valueY) ?? 0

        resultValueLabel.text = String(result)
        resignFirstResponder()
    }
}

private extension String {
    func removeNonNumerics() -> String {
        return self.trimmingCharacters(in: CharacterSet(charactersIn: "0123456789.").inverted)
    }
}

