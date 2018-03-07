//
//  UIView+Constraints.swift
//  FunctionalBuilders
//
//  Created by Szymon Mrozek on 07.03.2018.
//  Copyright © 2018 SzymonMrozek. All rights reserved.
//

extension UIView {
    
    /// Center y anchors
    
    func centerYConstraint(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.centerYAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func centerYConstraintLessOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.centerYAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func centerYConstraintGreaterOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.centerYAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Center x anchors
    
    func centerXConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.centerXAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func centerXConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.centerXAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func centerXConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.centerXAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Trailing anchors
    
    func leadingConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.leadingAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func leadingConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.leadingAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func leadingConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.leadingAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Left anchors
    
    func leftConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.leftAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func leftConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.leftAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func leftConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.leftAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Trailing anchors
    
    func trailingConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func trailingConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func trailingConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.trailingAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Right anchors
    
    func rightConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.rightAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func rightConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.rightAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func rightConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.rightAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Top anchors
    
    func topConstraint(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.topAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func topConstraintLessOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.topAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func topConstraintGreaterOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.topAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Bottom anchors
    
    func bottomConstraint(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.bottomAnchor.constraint(equalTo: source, constant: constant)
    }
    
    func bottomConstraintLessOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.bottomAnchor.constraint(lessThanOrEqualTo: source, constant: constant)
    }
    
    func bottomConstraintGreaterOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.bottomAnchor.constraint(greaterThanOrEqualTo: source, constant: constant)
    }
    
    /// Height anchors
    
    func heightConstraint(constant: CGFloat) -> NSLayoutConstraint {
        return self.heightAnchor.constraint(equalToConstant: constant)
    }
    
    func heightConstraint(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.heightAnchor.constraint(equalTo: source, multiplier: multiplier, constant: constant)
    }
    
    func heightConstraintLessOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.heightAnchor.constraint(lessThanOrEqualTo: source, multiplier: multiplier, constant: constant)
    }
    
    func heightConstraintGreaterOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.heightAnchor.constraint(greaterThanOrEqualTo: source, multiplier: multiplier, constant: constant)
    }
    
    /// Width anchors
    
    func widthConstraint(constant: CGFloat) -> NSLayoutConstraint {
        return self.widthAnchor.constraint(equalToConstant: constant)
    }
    
    func widthConstraint(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.widthAnchor.constraint(equalTo: source, multiplier: multiplier, constant: constant)
    }
    
    func widthConstraintLessOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.widthAnchor.constraint(lessThanOrEqualTo: source, multiplier: multiplier, constant: constant)
    }
    
    func widthConstraintGreaterOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> NSLayoutConstraint {
        return self.widthAnchor.constraint(greaterThanOrEqualTo: source, multiplier: multiplier, constant: constant)
    }
}
