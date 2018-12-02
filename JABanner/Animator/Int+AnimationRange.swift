//
//  Int+AnimationRange.swift
//  JABanner
//
//  Created by Shane Whitehead on 2/12/18.
//  Copyright © 2018 Kaizen Enteripises. All rights reserved.
//

import Foundation

internal func int(min: Int, max: Int, at point: Double, reversed: Bool = false) -> Int {
  let from = reversed ? max : min
  let to = reversed ? min : max
  
  let distant = to - from
  return Int(round((Double(distant) * point))) + from}

internal func int(in range: Range<Int>, at point: Double, reversed: Bool = false) -> Int {
  return int(min: range.lowerBound, max: range.upperBound, at: point, reversed: reversed)
}

internal func int(in range: ClosedRange<Int>, at point: Double, reversed: Bool = false) -> Int {
  return int(min: range.lowerBound, max: range.upperBound, at: point, reversed: reversed)
}

public extension Range where Bound == Int {
  func value(at point: Double, reversed: Bool = false) -> Int {
    return int(in: self, at: point, reversed: reversed)
  }
}

public extension ClosedRange where Bound == Int {
  public func value(at point: Double, reversed: Bool = false) -> Int {
    return int(in: self, at: point, reversed: reversed)
  }
}
