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

    var price = 0
    var quantity = 0
    var total = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculationActionButton(_ sender: UIButton) {
        
    }

}

