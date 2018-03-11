//
//  ViewBuilder.swift
//  FunctionalBuilders
//
//  Created by Szymon Mrozek on 07.03.2018.
//  Copyright © 2018 SzymonMrozek. All rights reserved.
//

/// Base structure for composing ViewBuilder similar to the ConstraintBuilder
/// Feel free to user that (and see example usage)
///

public protocol ViewBuilder {
    
    associatedtype T: UIView
    
    weak var view: T! { get }
    
    static func buildView(frame: CGRect) -> T 
}

public extension ViewBuilder {
    
    /// Return final view
    
    public static func endEditing(builder: Self) -> T {
        return builder.view
    }
    
    /// Calls layoutSubviews() on view property
    
    public static func layout(builder: Self) -> Self {
        builder.view.layoutSubviews()
        return builder
    }
}
