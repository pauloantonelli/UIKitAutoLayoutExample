//
//  SwipeControllerComponentExtension.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 17/09/22.
//

import UIKit

extension SwipeCollectionViewController {
    @objc func previousButtonHandler() -> Void {
        let prevIndex = max(
            self.pageController.currentPage - 1,
            0
        )
        let indexPath = IndexPath(item: prevIndex, section: 0)
        updatePageController(with: indexPath)
        self.updatescrollToItem(with: indexPath)
    }
    
    @objc func nextButtonHandler() -> Void {
        let nextIndex = min(
            self.pageController.currentPage + 1,
            self.datasourceService.swipeCellModelList.count - 1
        )
        let indexPath = IndexPath(item: nextIndex, section: 0)
        self.updatePageController(with: indexPath)
        self.updatescrollToItem(with: indexPath)
    }
    
    func updatescrollToItem(with indexPath: IndexPath) -> Void {
        self.collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
    }
    
    func updatePageController(with indexPath: IndexPath) -> Void {
        self.pageController.currentPage = indexPath.item
    }
}
