//
//  UIProgressView+Builder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 10/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public extension Builder where Base: UIProgressView {
  
  // MARK: - Managing the Progress Bar
  
  @discardableResult
  func progress(_ progress: Float) -> Builder {
    base.progress = progress
    return self
  }
  
  @discardableResult
  func observedProgress(_ progress: Progress?) -> Builder {
    base.observedProgress = progress
    return self
  }
  
  // MARK: - Configuring the Progress Bar
  
  @discardableResult
  func progressViewStyle(_ style: UIProgressView.Style) -> Builder {
    base.progressViewStyle = style
    return self
  }
  
  @discardableResult
  func tintColor(_ progress: ProgressViewBuilder.Progress<UIColor?>) -> Builder {
    switch progress {
    case let .each(progress, track):
      base.progressTintColor = progress
      base.trackTintColor = track
    case let .progress(color):
      base.progressTintColor = color
    case let .track(color):
      base.trackTintColor = color
    }
    return self
  }
  
  @discardableResult
  func image(_ progress: ProgressViewBuilder.Progress<UIImage?>) -> Builder {
    switch progress {
    case let .each(progress, track):
      base.progressImage = progress
      base.trackImage = track
    case let .progress(image):
      base.progressImage = image
    case let .track(image):
      base.trackImage = image
    }
    return self
  }
}

#endif
