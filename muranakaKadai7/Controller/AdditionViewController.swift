//
//  AdditionViewController.swift
//  muranakaKadai7
//
//  Created by 村中令 on 2021/10/03.
//

import UIKit

class AdditionViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet private weak var num1TextField: UITextField!
    @IBOutlet private weak var num2TextField: UITextField!
    @IBOutlet private weak var calculationLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        num1TextField.delegate = self
        num2TextField.delegate = self
    }

    @IBAction private func calculateButton(_ sender: Any) {
        let num1 = Int(num1TextField.text ?? "") ?? 0
        let num2 = Int(num2TextField.text ?? "") ?? 0

        calculationLabel.text = String(num1 + num2)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        num1TextField.resignFirstResponder()
        num2TextField.resignFirstResponder()
        return true
    }

    @IBAction func didTap(_ sender: Any) {
        view.endEditing(true)
    }
}
