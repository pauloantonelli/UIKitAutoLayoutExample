//
//  ViewsConstraintsViewController.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 26/09/22.
//

import UIKit

class ViewsConstraintsViewController: UIViewController {
    @IBOutlet var stackView: UIStackView!
    @IBOutlet var label: UILabel!
    @IBOutlet var image: UIImageView!
    @IBOutlet var button: UIButton!
    let paddingPattern: Double = 20.0
    
    override func viewDidLoad() {
        self.stackViewAutoLayout()
        self.labelAutoLayout()
        self.imageAutoLayout()
        self.buttonAutoLayout()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.image.image = UIImage(named: "dog")
        self.button.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 165.0)
        self.button.backgroundColor = UIColor.red
    }
    
    func buttonAutoLayout() -> Void {
        self.button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.button.topAnchor.constraint(equalTo: self.image.bottomAnchor, constant: self.paddingPattern),
            self.button.leadingAnchor.constraint(equalTo: self.stackView.leadingAnchor),
            self.button.trailingAnchor.constraint(equalTo: self.stackView.trailingAnchor)
        ])
    }
    
    func imageAutoLayout() -> Void {
        self.image.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.image.topAnchor.constraint(equalTo: self.label.bottomAnchor, constant: self.paddingPattern),
            self.image.leadingAnchor.constraint(equalTo: self.stackView.leadingAnchor),
            self.image.trailingAnchor.constraint(equalTo: self.stackView.trailingAnchor)
        ])
    }
    
    func labelAutoLayout() -> Void {
        self.label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.label.topAnchor.constraint(equalTo: view.topAnchor, constant: self.paddingPattern),
            self.label.leadingAnchor.constraint(equalTo: self.stackView.leadingAnchor),
            self.label.trailingAnchor.constraint(equalTo: self.stackView.trailingAnchor)
        ])
    }
    
    func stackViewAutoLayout() -> Void {
        self.stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: self.paddingPattern),
            self.stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            self.stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            self.stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
