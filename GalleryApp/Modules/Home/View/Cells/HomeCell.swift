//
//  HomeCell.swift
//  GalleryApp
//
//  Created by Admin on 25.11.2020.
//

import UIKit
import SDWebImage

final class HomeCell: UICollectionViewCell {
    
    // MARK: - View
    
    private let imageView = UIImageView()
    
    
    // MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubviews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Setup view
    
    private func setupSubviews() {
        
        imageView.contentMode = .scaleAspectFill
        imageView.isUserInteractionEnabled = true
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 20
        imageView.backgroundColor = .gray
        
        contentView.addSubview(imageView)
        imageView.autoPinEdgesToSuperviewEdges()
    }
}


// MARK: - Configuration
extension HomeCell: Configurable {
    
    typealias Model = URL
    
    func configure(with model: Model) {
        imageView.sd_imageIndicator = SDWebImageActivityIndicator.gray
        imageView.sd_setImage(with: model)
    }
}
