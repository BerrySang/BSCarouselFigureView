//
//  BSCarouselFigureCell.swift
//  BSCarouselFigureView
//
//  Created by Berry on 2017/1/7.
//  Copyright © 2017年 Berry. All rights reserved.
//

import UIKit

/// 轮播图页面
class BSCarouselFigureCell: UICollectionViewCell
{
    var imageView: UIImageView?
    var titleBackgroundView: UIView?
    var titleLabel: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configView() {
        imageView = UIImageView.init(frame: bounds)
        contentView.addSubview(imageView!)
        
        // 轮播图的标题背景图
        titleBackgroundView = UIView.init(frame: CGRect(x: 0, y: bounds.height - 60, width: bounds.width - 0, height: 40))
        contentView.addSubview(titleBackgroundView!)
        
        // 轮播图的标题背景Label
        titleLabel = UILabel.init(frame: CGRect(x: 10, y: 0, width: titleBackgroundView!.bounds.width - 20, height: titleBackgroundView!.bounds.height))
        titleLabel!.numberOfLines = 2
        titleBackgroundView!.addSubview(titleLabel!)
        
    }
}
