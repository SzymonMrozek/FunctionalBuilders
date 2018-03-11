//
//  ConstraintsAdaptive.swift
//  FunctionalBuilders
//
//  Created by Szymon Mrozek on 11.03.2018.
//  Copyright © 2018 SzymonMrozek. All rights reserved.
//

import Foundation

public protocol ConstraintAdaptive {
    
}

extension ConstraintAdaptive where Self: UIView {
    var constraintBuilder: ConstraintBuilder<Self> {
        return ConstraintBuilder(destination: self)
    }
}

extension UIView: ConstraintAdaptive {
    
}
