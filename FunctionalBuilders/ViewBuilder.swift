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
}

public extension ViewBuilder {
    
    /// Return final view
    
    public func endEditing() -> T {
        return self.view
    }
    
    /// Calls layoutSubviews() on view property
    
    public func layout() -> Self {
        view.layoutSubviews()
        return self
    }
}
