//
//  SwipeCollectionViewCell.swift
//  AutoLayout
//
//  Created by Paulo Antonelli on 16/09/22.
//

import UIKit

extension UIColor {
    static let customPurpleColor = UIColor(red: 232/255, green: 68/255, blue: 133/255, alpha: 1)
    static let customGrayColor = UIColor(red: 204/255, green: 204/255, blue: 204/255, alpha: 1)
}

class SwipeCollectionViewCell: UICollectionViewCell {
    var swipeCellModel: SwipeCellModel? {
        didSet {
            guard let unwrappedSwipeCell = swipeCellModel else { return }
            self.logoView.image = UIImage(named: unwrappedSwipeCell.iconName)
            self.titleTextView.text = unwrappedSwipeCell.title
            self.descriptionTextView.text = unwrappedSwipeCell.description
        }
    }
    let topImageContainer: UIView = {
        let topImageContainer = UIView()
        topImageContainer.backgroundColor = .white
        topImageContainer.translatesAutoresizingMaskIntoConstraints = false
        return topImageContainer
    }()
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
    let logoView: UIImageView = {
        let image = UIImage(named: "")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    let titleTextView: UITextView = {
       let textView = UITextView()
        let text = "AppAutoLayout Title"
        let atributtedText = NSMutableAttributedString(string: text, attributes: [
            NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 18),
            NSAttributedString.Key.foregroundColor : UIColor.customPurpleColor
        ])
        textView.attributedText = atributtedText
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isSelectable = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    let descriptionTextView: UITextView = {
        let textView = UITextView()
        let text = """
            AppAutoLayout Description
        """
        let atributtedText = NSMutableAttributedString(string: text, attributes: [
            NSAttributedString.Key.font : UIFont.preferredFont(forTextStyle: .body),
            NSAttributedString.Key.foregroundColor: UIColor.gray
        ])
        textView.isUserInteractionEnabled = false
        textView.attributedText = atributtedText
        textView.textAlignment = .center
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        contentView.addSubview(self.topImageContainer)
        contentView.addSubview(self.titleTextView)
        contentView.addSubview(self.descriptionTextView)
        self.topImageContainer.addSubview(self.logoView)
        self.logoViewAutoLayout()
        self.titleTextViewAutoLayout()
        self.descriptionTextViewAutoLayout()
        self.topImageContainerAutoLayout()
    }
    
    fileprivate func logoViewAutoLayout() -> Void {
        self.logoView.centerXAnchor.constraint(equalTo: self.topImageContainer.centerXAnchor).isActive = true
        self.logoView.centerYAnchor.constraint(equalTo: self.topImageContainer.centerYAnchor).isActive = true
        self.logoView.heightAnchor.constraint(equalTo: self.topImageContainer.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    fileprivate func titleTextViewAutoLayout() -> Void {
        self.titleTextView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        self.titleTextView.topAnchor.constraint(equalTo: self.topImageContainer.bottomAnchor, constant: 10.0).isActive = true
        self.titleTextView.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        self.titleTextView.heightAnchor.constraint(equalToConstant: 30.0).isActive = true
        self.titleTextView.leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        self.titleTextView.rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    }
    
    fileprivate func descriptionTextViewAutoLayout() -> Void {
        self.descriptionTextView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        self.descriptionTextView.topAnchor.constraint(equalTo: self.titleTextView.bottomAnchor, constant: 10.0).isActive = true
        self.descriptionTextView.heightAnchor.constraint(equalToConstant: 150.0).isActive = true
        self.descriptionTextView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
        self.descriptionTextView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20).isActive = true
    }
    
    fileprivate func topImageContainerAutoLayout() -> Void {
        topImageContainer.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        topImageContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        topImageContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        topImageContainer.widthAnchor.constraint(equalTo: contentView.widthAnchor).isActive = true
        topImageContainer.heightAnchor.constraint(equalTo: contentView.heightAnchor, multiplier: 0.5).isActive = true
    }
}
