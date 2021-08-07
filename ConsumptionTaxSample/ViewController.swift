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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculationActionButton(_ sender: UIButton) {

        var total = 0

        guard let price = Int(priceTextField.text!) else { return }
        guard let quantity = Int(quantityTextField.text!) else { return }

        total = Int(price) * Int(quantity)

        totalLabel.text = String(total)

    }
}
