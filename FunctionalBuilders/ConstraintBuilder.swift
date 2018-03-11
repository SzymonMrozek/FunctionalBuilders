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
    ///    stackView.constraintsBuilder
    ///     |> centerYConstraint(source: someView.centerYAnchor)
    ///     |> leadingConstraint(source: someView.leadingAnchor, constant: 15.0)
    ///     |> trailingConstraint(source: someView.trailingAnchor, constant: 15.0)
    ///     |> heightConstraint(constant: 200.0)
    ///     |> activate
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
    
    public static func tearDown(builder: ConstraintBuilder) -> [NSLayoutConstraint] {
        return builder.group
    }
    
    /// Activating all constraints
    
    public static func activate(builder: ConstraintBuilder) {
        builder.group.activate()
    }
    
    fileprivate func modifiedGroup(_ constraint: NSLayoutConstraint) -> [NSLayoutConstraint] {
        var newGroup = group
        newGroup.append(constraint)
        return newGroup
    }
}

extension ConstraintBuilder {

    /// Center y constraints
    
    public static func centerYConstraint(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.centerYConstraint(source: source, constant: constant)))
        }
    }
    
    public static func centerYConstraintLessOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.centerYConstraintLessOrEqual(source: source, constant: constant)))
        }
    }
    
    public static func centerYConstraintGreaterOrEqual(source: NSLayoutYAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.centerYConstraintGreaterOrEqual(source: source, constant: constant)))
        }
    }
    
    /// Center x constraints
    
    public static func centerXConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.centerXConstraint(source: source, constant: constant)))
        }
    }
    
    public static func centerXConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.centerXConstraintLessOrEqual(source: source, constant: constant)))
        }
    }
    
    public static func centerXConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.centerXConstraintGreaterOrEqual(source: source, constant: constant)))
        }
    }
    
    /// Leading constraints
    
    public static func leadingConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.leadingConstraint(source: source, constant: constant)))
        }
    }
    
    public static func leadingConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.leadingConstraintLessOrEqual(source: source, constant: constant)))
        }
    }
    
    public static func leadingConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.leadingConstraintGreaterOrEqual(source: source, constant: constant)))
        }
    }
    
    /// Left constraints
    
    public static func leftConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.leftConstraint(source: source, constant: constant)))
        }
    }
    
    public static func leftConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.leftConstraintLessOrEqual(source: source, constant: constant)))
        }
    }
    
    public static func leftConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.leftConstraintGreaterOrEqual(source: source, constant: constant)))
        }
    }
    
    /// Trailing constraints
    
    public static func trailingConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.trailingConstraint(source: source, constant: constant)))
        }
    }
    
    public static func trailingConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.trailingConstraintLessOrEqual(source: source, constant: constant)))
        }
    }
    
    public static func trailingConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.trailingConstraintGreaterOrEqual(source: source, constant: constant)))
        }
    }
    
    /// Right constraints
    
    public static func rightConstraint(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.rightConstraint(source: source, constant: constant)))
        }
    }
    
    public static func rightConstraintLessOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.rightConstraintLessOrEqual(source: source, constant: constant)))
        }
    }
    
    public static func rightConstraintGreaterOrEqual(source: NSLayoutXAxisAnchor, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.rightConstraintGreaterOrEqual(source: source, constant: constant)))
        }
    }
    
    /// Hight constraints
    
    public static func heightConstraint(constant: CGFloat) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraint(constant: constant)))
        }
    }
    
    public static func heightConstraint(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraint(source: source, multiplier: multiplier, constant: constant)))
        }
    }
    
    public static func heightConstraintLessOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraintLessOrEqual(source: source, multiplier: multiplier, constant: constant)))
        }
    }
    
    public static func heightConstraintGreaterOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraintGreaterOrEqual(source: source, multiplier: multiplier, constant: constant)))
        }
    }
    
    /// Width constraints
    
    public static func widthConstraint(constant: CGFloat) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraint(constant: constant)))
        }
    }
    
    public static func widthConstraint(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraint(source: source, multiplier: multiplier, constant: constant)))
    
        }
    }
    
    public static func widthConstraintLessOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraintLessOrEqual(source: source, multiplier: multiplier, constant: constant)))
        }
    }
    
    public static func widthConstraintGreaterOrEqual(source: NSLayoutDimension, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0) -> (ConstraintBuilder) -> ConstraintBuilder {
        return { builder in
            return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraintGreaterOrEqual(source: source, multiplier: multiplier, constant: constant)))
        }
    }
}
