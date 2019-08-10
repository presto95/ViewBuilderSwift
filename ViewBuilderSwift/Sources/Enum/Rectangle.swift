//
//  Rectangle.swift
//  ViewBuilderSwift
//
//  Created by Presto on 09/08/2019.
//  Copyright © 2019 presto. All rights reserved.
//

#if os(iOS)

enum Rectangle<Dimension> where Dimension: DimensionProtocol {
  
  case each(x: Dimension, y: Dimension, width: Dimension, height: Dimension)
  
  case grouped(origin: Point<Dimension>, size: Size<Dimension>)
  
  case all(Dimension)
  
  case zero
}

#endif
