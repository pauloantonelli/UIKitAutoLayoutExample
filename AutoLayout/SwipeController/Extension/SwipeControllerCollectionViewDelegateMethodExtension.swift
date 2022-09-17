//
//  SwipeCollectionViewController+UICollectionViewMethodExtension.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 17/09/22.
//

import UIKit

extension SwipeCollectionViewController {
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.datasourceService.swipeCellModelList.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let customCell = collectionView.dequeueReusableCell(withReuseIdentifier: "swipeCell", for: indexPath) as! SwipeCollectionViewCell
        let swipeCellModel: SwipeCellModel = self.datasourceService.swipeCellModelList[indexPath.row]
        customCell.swipeCellModel = swipeCellModel
        return customCell
    }

    func collectionView(_ collectionView: UICollectionView, layout    collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
