//
//  NestedStackViewController.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 26/09/22.
//

import UIKit

class NestedStackViewController: UIViewController {
    @IBOutlet var orangeView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var purpleView: UIView!
    @IBOutlet var redView: UIView!
    
    override func viewDidLoad() {
//        self.orangeViewAutoLayout()
//        self.greenViewAutoLayout()
//        self.purpleViewAutoLayout()
//        self.redViewAutoLayout()
    }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        if sender.title(for: .normal) == "X" {
            sender.setTitle("A very long title for this button", for: .normal)
        } else {
            sender.setTitle("X", for: .normal)
        }
    }
}

extension NestedStackViewController {
    func orangeViewAutoLayout() -> Void {
        self.orangeView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.orangeView.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
            self.orangeView.heightAnchor.constraint(equalToConstant: view.frame.height / 2),
        ])
    }
    
    func greenViewAutoLayout() -> Void {
        self.greenView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.greenView.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
            self.greenView.heightAnchor.constraint(equalToConstant: view.frame.height / 2),
        ])
    }
    
    func purpleViewAutoLayout() -> Void {
        self.purpleView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.purpleView.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
            self.purpleView.heightAnchor.constraint(equalToConstant: view.frame.height / 2),
        ])
    }
    
    func redViewAutoLayout() -> Void {
        self.redView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.redView.widthAnchor.constraint(equalToConstant: view.frame.width / 2),
            self.redView.heightAnchor.constraint(equalToConstant: view.frame.height / 2),
        ])
    }
}
