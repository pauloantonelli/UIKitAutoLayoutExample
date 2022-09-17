//
//  SwipeCollectionViewExtension.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 17/09/22.
//

import UIKit

extension SwipeCollectionViewController {
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { (_) in
            self.collectionViewLayout.invalidateLayout()
            let indexPath = IndexPath(item: self.pageController.currentPage, section: 0)
            self.updatescrollToItem(with: indexPath)
        }, completion: { (_) in
        })
    }
    
    override func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let x = targetContentOffset.pointee.x
        let currentPage: Int = Int(x / view.frame.width)
        self.updatePageController(with: IndexPath(item: currentPage, section: 0))
    }
}
