//
//  AppleRefreshController.swift
//  JABanner
//
//  Created by Shane Whitehead on 2/12/18.
//  Copyright © 2018 Kaizen Enteripises. All rights reserved.
//

import UIKit
import JABanner

class AppleRefreshController: UIView, RefreshableController {
  
  var view: UIView { return self }
  var desiredHeight: CGFloat = 125

  var applePath: CGPath = {
    let frame = CGRect(x: 0, y: 0, width: 100, height: 100)

    func fastFloor(_ x: CGFloat) -> CGFloat { return floor(x) }

    let surface1: CGRect = CGRect(x: frame.minX + fastFloor(frame.width * 0.10001 + 0.5), y: frame.minY + fastFloor(frame.height * 0.02000 - 0.5) + 1, width: fastFloor(frame.width * 0.89055 - 0.03) - fastFloor(frame.width * 0.10001 + 0.5) + 0.53, height: fastFloor(frame.height * 0.94001 + 0.5) - fastFloor(frame.height * 0.02000 - 0.5) - 1)
    let bezierPath = UIBezierPath()
    bezierPath.move(to: CGPoint(x: surface1.minX + 1.00000 * surface1.width, y: surface1.minY + 0.73369 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.92450 * surface1.width, y: surface1.minY + 0.85495 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.97272 * surface1.width, y: surface1.minY + 0.78574 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.95958 * surface1.width, y: surface1.minY + 0.80901 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.72052 * surface1.width, y: surface1.minY + 0.99982 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.87538 * surface1.width, y: surface1.minY + 0.91915 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.80611 * surface1.width, y: surface1.minY + 0.99931 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.52119 * surface1.width, y: surface1.minY + 0.95787 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.64433 * surface1.width, y: surface1.minY + 1.00042 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.62466 * surface1.width, y: surface1.minY + 0.95711 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.31999 * surface1.width, y: surface1.minY + 0.99999 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.41782 * surface1.width, y: surface1.minY + 0.95830 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.39628 * surface1.width, y: surface1.minY + 1.00067 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.11967 * surface1.width, y: surface1.minY + 0.86302 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.23431 * surface1.width, y: surface1.minY + 0.99931 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.16879 * surface1.width, y: surface1.minY + 0.92713 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.05267 * surface1.width, y: surface1.minY + 0.36039 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + -0.01770 * surface1.width, y: surface1.minY + 0.68325 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + -0.03222 * surface1.width, y: surface1.minY + 0.47248 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.29696 * surface1.width, y: surface1.minY + 0.23420 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.11275 * surface1.width, y: surface1.minY + 0.28091 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.20772 * surface1.width, y: surface1.minY + 0.23420 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.52011 * surface1.width, y: surface1.minY + 0.27709 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.38788 * surface1.width, y: surface1.minY + 0.23420 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.44500 * surface1.width, y: surface1.minY + 0.27709 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.74256 * surface1.width, y: surface1.minY + 0.23412 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.59304 * surface1.width, y: surface1.minY + 0.27709 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.63741 * surface1.width, y: surface1.minY + 0.23412 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.96610 * surface1.width, y: surface1.minY + 0.33551 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.82202 * surface1.width, y: surface1.minY + 0.23412 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.90602 * surface1.width, y: surface1.minY + 0.27131 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 1.00000 * surface1.width, y: surface1.minY + 0.73369 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.76964 * surface1.width, y: surface1.minY + 0.42807 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.80156 * surface1.width, y: surface1.minY + 0.66915 * surface1.height))
    bezierPath.close()
    bezierPath.move(to: CGPoint(x: surface1.minX + 0.66271 * surface1.width, y: surface1.minY + 0.16236 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.71944 * surface1.width, y: surface1.minY + 0.00000 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.70096 * surface1.width, y: surface1.minY + 0.12016 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.73001 * surface1.width, y: surface1.minY + 0.06063 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.54155 * surface1.width, y: surface1.minY + 0.08220 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.65708 * surface1.width, y: surface1.minY + 0.00365 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.58415 * surface1.width, y: surface1.minY + 0.03787 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.48334 * surface1.width, y: surface1.minY + 0.24057 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.50291 * surface1.width, y: surface1.minY + 0.12262 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.47089 * surface1.width, y: surface1.minY + 0.18257 * surface1.height))
    bezierPath.addCurve(to: CGPoint(x: surface1.minX + 0.66271 * surface1.width, y: surface1.minY + 0.16236 * surface1.height), controlPoint1: CGPoint(x: surface1.minX + 0.55143 * surface1.width, y: surface1.minY + 0.24244 * surface1.height), controlPoint2: CGPoint(x: surface1.minX + 0.62190 * surface1.width, y: surface1.minY + 0.20754 * surface1.height))
    bezierPath.close()
    return bezierPath.cgPath
  }()
  
  var appleLayer: CAShapeLayer!
  
  var gradientLayer: CAGradientLayer = {
    let layer = CAGradientLayer()
    
    let roseGold = UIColor(red: 0.718, green: 0.431, blue: 0.475, alpha: 1.0).cgColor
    let spaceGray = UIColor(red: 0.439, green: 0.439, blue: 0.439, alpha: 1.0).cgColor
    layer.colors = [
      spaceGray,
      spaceGray,
      roseGold,
      spaceGray,
      spaceGray,
    ]
    layer.locations = [-0.5, -0.25, 0, 0.25, 0.5]
    layer.startPoint = CGPoint(x: 0, y: 0)
    layer.endPoint = CGPoint(x: 1, y: 0)
    return layer
  }()
	
	var isRefreshing: Bool = false
  
  override func awakeFromNib() {
    super.awakeFromNib()
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  init() {
    super.init(frame: CGRect.zero)
    commonInit()
  }
  
  func commonInit() {
    clipsToBounds = true
    
    appleLayer = CAShapeLayer()
    appleLayer.path = self.applePath
    
    layer.insertSublayer(gradientLayer, at: 0)
    gradientLayer.mask = appleLayer
    
    backgroundColor = UIColor(red: 0.647, green: 0.678, blue: 0.690, alpha: 1.0)
  }
  
  func beginRefreshing() {
		isRefreshing = true
    let animation = CABasicAnimation(keyPath: "locations")
    animation.fromValue = [-0.5, -0.25, 0, 0.25, 0.5]
    animation.toValue = [0.5, 0.75, 1, 1.25, 1.5]
    animation.duration = 3.0
    animation.repeatCount = .infinity
    gradientLayer.add(animation, forKey: "colors")
  }
  
  func endRefreshing() {
		isRefreshing = false
    layer.removeAllAnimations()
    gradientLayer.removeAllAnimations()
    appleLayer.removeAllAnimations()
  }
  
  func expanded(by delta: CGFloat) {
		
		print("delta = \(delta)")
		
    gradientLayer.frame = bounds
    
    let progress = min(1, max(0, delta))
    let angle = (360.0 * progress).degreesToRadians
    
//    let width = bounds.width
//    let height = bounds.height
    
    let size = CGSize(width: 100, height: 100)
    let point = size.centered(in: bounds.size)
    
    appleLayer.frame = CGRect(origin: point, size: size)
    
    let rotateTF = CATransform3DMakeRotation(angle, 0, 0, size.width / 2)
    let scaleTF = CATransform3DMakeScale(delta, delta, delta)
    
    appleLayer.transform = CATransform3DConcat(rotateTF, scaleTF)
    
    layer.removeAllAnimations()
    gradientLayer.removeAllAnimations()
    appleLayer.removeAllAnimations()
		
		if delta == 1.0 && isRefreshing {
			beginRefreshing()
		}
  }

}

extension CGSize {
  func centered(in size: CGSize) -> CGPoint {
    return CGPoint(x: (size.width - self.width) / 2, y: (size.height - self.height) / 2)
  }
}

extension BinaryInteger {
  var degreesToRadians: CGFloat { return CGFloat(Int(self)) * .pi / 180 }
}

extension FloatingPoint {
  var degreesToRadians: Self { return self * .pi / 180 }
  var radiansToDegrees: Self { return self * 180 / .pi }
}
