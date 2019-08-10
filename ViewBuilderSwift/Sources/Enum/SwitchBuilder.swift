//
//  SwitchBuilder.swift
//  ViewBuilderSwift
//
//  Created by Presto on 11/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

public enum SwitchBuilder {
  
  public enum Color {
    
    case each(on: UIColor?, off: UIColor?, thumb: UIColor?)
    
    case on(UIColor?)
    
    case off(UIColor?)
    
    case thumb(UIColor?)
  }
}

#endif
