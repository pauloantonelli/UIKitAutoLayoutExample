//
//  SwiperControllerAutoLayoutExtension.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 17/09/22.
//

import UIKit

extension SwipeCollectionViewController {
    func previousButtonAutoLayout() -> Void {
        self.prevButtonContainer.addSubview(self.previousButton)
        NSLayoutConstraint.activate([
            self.previousButton.bottomAnchor.constraint(equalTo: prevButtonContainer.bottomAnchor),
            self.previousButton.widthAnchor.constraint(equalTo: prevButtonContainer.widthAnchor),
            self.previousButton.heightAnchor.constraint(equalTo: prevButtonContainer.heightAnchor),
        ])
    }
    
    func nextButtonAutoLayout() -> Void {
        self.nextButtonContainer.addSubview(self.nextButton)
        NSLayoutConstraint.activate([
            self.nextButton.bottomAnchor.constraint(equalTo: nextButtonContainer.bottomAnchor),
            self.nextButton.widthAnchor.constraint(equalTo: nextButtonContainer.widthAnchor),
            self.nextButton.heightAnchor.constraint(equalTo: nextButtonContainer.heightAnchor),
        ])
    }
    
    func pageControlAutoLayout() -> Void {
        self.pageControlContainer.addSubview(self.pageController)
        NSLayoutConstraint.activate([
            self.pageController.bottomAnchor.constraint(equalTo: pageControlContainer.bottomAnchor),
            self.pageController.widthAnchor.constraint(equalTo: pageControlContainer.widthAnchor),
            self.pageController.heightAnchor.constraint(equalTo: pageControlContainer.heightAnchor),
        ])
    }
    
    func createBottomSubviews() {
        let buttonListStackView = UIStackView(arrangedSubviews: [
            self.prevButtonContainer,
            self.pageControlContainer,
            self.nextButtonContainer,
        ])
        buttonListStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonListStackView.distribution = .fillEqually
        buttonListStackView.axis = .horizontal
        view.addSubview(buttonListStackView)
        NSLayoutConstraint.activate([
            buttonListStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            buttonListStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            buttonListStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            buttonListStackView.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
}
