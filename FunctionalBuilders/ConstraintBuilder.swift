//
//  ConstraintBuilder.swift
//  FunctionalBuilders
//
//  Created by Szymon Mrozek on 07.03.2018.
//  Copyright © 2018 SzymonMrozek. All rights reserved.
//

public struct ConstraintBuilder<T: UIView> {
    
    /// Functional constraints builder
    ///
    /// Example usage:
    ///
    ///    ConstraintBuilder<UIStackView>(destination: stackView)
    ///     .centerYConstraint(source: view.centerYAnchor)
    ///     .leadingConstraint(source: view.leadingAnchor, constant: 15.0)
    ///     .trailingConstraint(source: view.trailingAnchor, constant: 15.0)
    ///     .heightConstraint(constant: 200.0)
    ///     .activate()
    ///
    ///
    
    /// Holds destination view (the one you add those constraints)
    
    private var destination: T
    
    /// Group of buffered constraints
    
    fileprivate var group: [NSLayoutConstraint]
    
    public init(destination: T, group: [NSLayoutConstraint] = []) {
        self.destination = destination
        self.group = group
    }
    
    /// Final destination constraints - this one is for customization if you want to add some very
    /// custom constraints not covered by this wrapper library
    
    public func tearDown() -> [NSLayoutConstraint] {
        return group
    }
    
    /// Activating all constraints
    
    public func activate() {
        group.activate()
    }
    
    fileprivate func modifiedGroup(_ constraint: NSLayoutConstraint) -> [NSLayoutConstraint] {
        var newGroup = group
        newGroup.append(constraint)
        return newGroup
    }
}

extension ConstraintBuilder {
    
    /// Center y constraints
    
    public func centerYConstraint(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.centerYConstraint(source: source, constant: constant)))
    }
    
    public func centerYConstraintLessOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.centerYConstraintLessOrEqual(source: source, constant: constant)))
    }
    
    public func centerYConstraintGreaterOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.centerYConstraintGreaterOrEqual(source: source, constant: constant)))
    }
    
    /// Center x constraints
    
    public func centerXConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.centerXConstraint(source: source, constant: constant)))
    }
    
    public func centerXConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.centerXConstraintLessOrEqual(source: source, constant: constant)))
    }
    
    public func centerXConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.centerXConstraintGreaterOrEqual(source: source, constant: constant)))
    }
    
    /// Leading constraints
    
    public func leadingConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.leadingConstraint(source: source, constant: constant)))
    }
    
    public func leadingConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.leadingConstraintLessOrEqual(source: source, constant: constant)))
    }
    
    public func leadingConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.leadingConstraintGreaterOrEqual(source: source, constant: constant)))
    }
    
    /// Left constraints
    
    public func leftConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.leftConstraint(source: source, constant: constant)))
    }
    
    public func leftConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.leftConstraintLessOrEqual(source: source, constant: constant)))
    }
    
    public func leftConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.leftConstraintGreaterOrEqual(source: source, constant: constant)))
    }
    
    /// Trailing constraints
    
    public func trailingConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.trailingConstraint(source: source, constant: constant)))
    }
    
    public func trailingConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.trailingConstraintLessOrEqual(source: source, constant: constant)))
    }
    
    public func trailingConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.trailingConstraintGreaterOrEqual(source: source, constant: constant)))
    }
    
    /// Right constraints
    
    public func rightConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.rightConstraint(source: source, constant: constant)))
    }
    
    public func rightConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.rightConstraintLessOrEqual(source: source, constant: constant)))
    }
    
    public func rightConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.rightConstraintGreaterOrEqual(source: source, constant: constant)))
    }
    
    /// Hight constraints
    
    public func heightConstraint(constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraint(constant: constant)))
    }
    
    public func heightConstraint(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraint(source: source, multiplier: multiplier, constant: constant)))
    }
    
    public func heightConstraintLessOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraintLessOrEqual(source: source, multiplier: multiplier, constant: constant)))
    }
    
    public func heightConstraintGreaterOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraintGreaterOrEqual(source: source, multiplier: multiplier, constant: constant)))
    }
    
    /// Width constraints
    
    public func widthConstraint(constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraint(constant: constant)))
    }
    
    public func widthConstraint(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraint(source: source, multiplier: multiplier, constant: constant)))
    }
    
    public func widthConstraintLessOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraintLessOrEqual(source: source, multiplier: multiplier, constant: constant)))
    }
    
    public func widthConstraintGreaterOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> ConstraintBuilder {
        return ConstraintBuilder(destination: destination, group: modifiedGroup(destination.heightConstraintGreaterOrEqual(source: source, multiplier: multiplier, constant: constant)))
    }
}
