//
//  advertisingShopImgSlider.swift
//  NewMarketPplace
//
//  Created by Lorenzo piombini on 12/21/20.
//

import UIKit



@IBDesignable
class advertisingShopImgSlider: UIScrollView, UIScrollViewDelegate {

    var imageArray = [UIImage]()
    var point = CGPoint(x:0.0, y:0.0)
    var  x:CGFloat = 0.0
    
    override  func prepareForInterfaceBuilder() {
        imageSliderinit()
    }
    
    override func awakeFromNib() {
        scheduleTimer()
        imageSliderinit()
        isPagingEnabled = true
    }
    
    @objc func sliding(){
        if contentOffset.x != x{
            setContentOffset( point, animated: true)
           
            
          
        } else {
            
            let xInTheContest = contentOffset.x
            setContentOffset(CGPoint(x: xInTheContest * 2 , y: 0), animated: true)
        }
    }
    
    func imageSliderinit(){
        
        
        
        
        imageArray = [#imageLiteral(resourceName: "advertising2"),#imageLiteral(resourceName: "advertising1")]
        for i in 0..<imageArray.count {
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleToFill
            let xPosition = frame.width * CGFloat(i)
            point = CGPoint(x:xPosition, y:CGFloat(0.0))
            x = xPosition
            imageView.frame = CGRect(x: xPosition, y: 0, width: frame.width, height: frame.height)
//            contentSize.width = frame.width * CGFloat (i + 1)
            addSubview(imageView)
            tag = i
            
        }
            
            
        
    }
        func scheduleTimer(){
            var timer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(sliding), userInfo: nil, repeats: true)
        }
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */


