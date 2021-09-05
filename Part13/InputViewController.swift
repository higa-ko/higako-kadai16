//
//  InputViewController.swift
//  Part13
//
//  Created by 葡萄酒 on 2021/08/25.
//

import UIKit

class InputViewController: UIViewController {

    enum Mode {
        case add
        case edit(String)
    }

    private(set) var editedItemName: String?

    var mode: Mode?

    @IBOutlet private weak var inputTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let mode = mode else { return }

        switch mode {
        case .add:
            break
        case .edit(let name):
            inputTextField.text = name
        }
    }

    @IBAction func changeInputTextField(_ sender: UITextField) {
        editedItemName = inputTextField.text ?? ""
    }
}
