//
//  UI.swift
//  ViewBuilderSwift
//
//  Created by Presto on 08/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

import UIKit

/// Defines a protocol that replaces the responsibility of Interface Builder.
///
/// You should make an object responsible for being UI of another object conforms to this protocol.
public protocol UI {
  
  associatedtype Owner: UIOwner
  
  /// An owner of this UI object.
  ///
  /// It is recommended to declare it as `unowned`.
  ///
  /// It must conforms `UIOwner` protocol.
  var owner: Owner { get }
  
  /// A root view.
  ///
  /// If the `owner` is a `UIViewController` object, this represents `owner.view`.
  ///
  /// If the `owner` is a `UIView` object, this represents this itself.
  var view: UIView { get }
  
  init(owner: Owner)
}

public extension UI where Owner: UIViewController {
  
  var view: UIView {
    if owner.view == nil {
      let rootView = UIView()
      rootView.backgroundColor = .white
      owner.view = rootView
    }
    return owner.view
  }
}

public extension UI where Owner: UIView {
  
  var view: UIView {
    return owner
  }
}
