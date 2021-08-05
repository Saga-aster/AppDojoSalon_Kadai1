//
//  ViewController.swift
//  SagaKadai1
//
//  Created by Saga on 2021/07/06.
//

import UIKit

class ViewController: UIViewController {

    // UITextField
    @IBOutlet private weak var targetValueTextField1: UITextField!
    @IBOutlet private weak var targetValueTextField2: UITextField!
    @IBOutlet private weak var targetValueTextField3: UITextField!
    @IBOutlet private weak var targetValueTextField4: UITextField!
    @IBOutlet private weak var targetValueTextField5: UITextField!

    // UILabel
    @IBOutlet private weak var resultValueLabel: UILabel!

    // UIButton
    @IBAction private func calculateButton(_ sender: Any) {
        let resultValue = calculate()
        resultValueLabel.text = String(resultValue)
    }

    // 計算結果をIntで返すmethod
    func calculate() -> Int {
        // textFieldのtextをIntに変換
        // text(String)がnilであれば整数値0を代入
        let value1 = Int(targetValueTextField1.text!) ?? 0
        let value2 = Int(targetValueTextField2.text!) ?? 0
        let value3 = Int(targetValueTextField3.text!) ?? 0
        let value4 = Int(targetValueTextField4.text!) ?? 0
        let value5 = Int(targetValueTextField5.text!) ?? 0

        return value1 + value2 + value3 + value4 + value5
    }
}
