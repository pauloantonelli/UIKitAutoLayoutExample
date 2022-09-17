//
//  SwipeCollectionViewController.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 16/09/22.
//

import UIKit

class SwipeCollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let datasourceService: DatasourceService = DatasourceService()
    let prevButtonContainer: UIView = {
        let prevButtonContainer = UIView()
        prevButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        return prevButtonContainer
    }()
    let nextButtonContainer: UIView = {
        let nextButtonContainer = UIView()
        nextButtonContainer.translatesAutoresizingMaskIntoConstraints = false
        return nextButtonContainer
    }()
    let pageControlContainer: UIView = {
        let pageControlContainer = UIView()
        pageControlContainer.translatesAutoresizingMaskIntoConstraints = false
        return pageControlContainer
    }()
    lazy var previousButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Prev".uppercased(), for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.previousButtonHandler), for: .touchUpInside)
        return button
    }()
    lazy var nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Next".uppercased(), for: .normal)
        button.setTitleColor(.customPurpleColor, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(self.nextButtonHandler), for: .touchUpInside)
        return button
    }()
    lazy var pageController: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPage = 0
        pageControl.numberOfPages = self.datasourceService.swipeCellModelList.count
        pageControl.currentPageIndicatorTintColor = .customPurpleColor
        pageControl.pageIndicatorTintColor = .customGrayColor
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.isPagingEnabled = true
        self.previousButtonAutoLayout()
        self.nextButtonAutoLayout()
        self.pageControlAutoLayout()
        self.createBottomSubviews()
    }
}
