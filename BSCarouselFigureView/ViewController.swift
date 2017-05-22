//
//  ViewController.swift
//  BSCarouselFigureView
//
//  Created by Berry on 2017/1/7.
//  Copyright © 2017年 Berry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /// 顶部轮播图
    var carouselView = BSCarouselFigureView()
    /// 轮播图的图片链接 网络的
    var imageViewAryStrs = [String]()
    /// 轮播图的图片点击详情链接 网络的
    var imageViewDetailAryStrs = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupHomeViewBaseUI()
    }
    
    /// 顶部轮播视图
    fileprivate func setupHomeViewBaseUI() {
        // 设置轮播图
        setupCarouselImageViewUI()
    }

}


extension ViewController: BSCarouselFigureViewDelegate
{
    /// 设置滚动轮播视图
    fileprivate func setupCarouselImageViewUI(){
        let carlFrame = CGRect(x: 0, y: 20, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.width*0.5)
        let carlView = BSCarouselFigureView(frame: carlFrame)
        //carouselView.backgroundColor = UIColor.blue
        carlView.delegate = self
        view.addSubview(carlView)
        carouselView = carlView
        
        carouselView.imageStrs = [
            "https://ss3.bdstatic.com/70cFv8Sh_Q1YnxGkpoWK1HF6hhy/it/u=1070382435,4049757214&fm=23&gp=0.jpg",
            "http://img-cdn.d1ev.com/d/file/attachment/2017/01/58761ff1c7cda.jpg",
            "https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=2080316174,763532303&fm=23&gp=0.jpg",
            "https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=222298094,2713061086&fm=23&gp=0.jpg"]
        carouselView.titles = ["0011 ","0022 ","0033 ", "0044 "]
    }
    
    
    public func carouselFigureView(carouselFigureView: BSCarouselFigureView, didSelectAt index: Int) {
        print("imageIndex: \(index)")
    }
}
