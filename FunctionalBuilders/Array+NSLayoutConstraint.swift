//
//  Array+NSLayoutConstraint.swift
//  FunctionalBuilders
//
//  Created by Szymon Mrozek on 07.03.2018.
//  Copyright © 2018 SzymonMrozek. All rights reserved.
//

/// Those operators might be useful when combining constraints
/// Example usage:
///
///    ConstraintBuilder<UIView>(destination: firstView)
///     .centerYConstraint(source: containerView.centerYAnchor)
///      * .
///     .tearDown()
///     +
///    ConstraintBuilder<UIView>(destination: secondView)
///     .centerYConstraint(source: containerView.centerYAnchor)
///      * .
///     .tearDown()
///     .activate()
///

public func + (lhs: NSLayoutConstraint, rhs: NSLayoutConstraint) -> [NSLayoutConstraint] {
    return [lhs, rhs]
}

public func + (lhs: [NSLayoutConstraint], rhs: NSLayoutConstraint) -> [NSLayoutConstraint] {
    return lhs + [rhs]
}

extension Array where Element : NSLayoutConstraint {
    public func activate() {
        NSLayoutConstraint.activate(self)
    }
}
