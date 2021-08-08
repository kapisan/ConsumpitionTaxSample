//
//  ViewController.swift
//  ConsumptionTaxSample
//
//  Created by niwa  shuhei on 2021/08/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var priceTextField: UITextField!
    @IBOutlet private weak var quantityTextField: UITextField!
    @IBOutlet private weak var totalLabel: UILabel!
    @IBOutlet private weak var eightLabel: UILabel!
    @IBOutlet private weak var tenLabel: UILabel!

    @IBAction func calculationActionButton(_ sender: UIButton) {
        //totalの計算式
        var total = 0

        guard let price = Int(priceTextField.text!) else { return }
        guard let quantity = Int(quantityTextField.text!) else { return }

        total = Int(price) * Int(quantity)
        totalLabel.text = String(total)
        var consumptionTax:Double

        //消費税8%の計算
        consumptionTax = 1.08
        calculationEight(total: total, consumptionTax: consumptionTax)
        //消費税10%の計算
        consumptionTax = 1.10
     calculationTen(total: total, consumptionTax: consumptionTax)
    }

    func calculationEight(total: Int,consumptionTax: Double) {
        let eight = Int(Double(total) * consumptionTax)
        eightLabel.text = String(eight)
    }

    func calculationTen(total: Int,consumptionTax: Double) {
        let ten = Int(Double(total) * consumptionTax)
        tenLabel.text = String(ten)
    }
}
