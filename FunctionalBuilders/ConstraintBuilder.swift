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
    ///     |> centerY(source: someView.centerYAnchor)
    ///     |> leading(source: someView.leadingAnchor, constant: 15.0)
    ///     |> trailing(source: someView.trailingAnchor, constant: 15.0)
    ///     |> height(constant: 200.0)
    ///     |> activate
    ///
    ///
    
    /// Holds destination view (the one you add those constraints)
    
    fileprivate var destination: T
    
    /// Group of buffered constraints
    
    fileprivate var group: [NSLayoutConstraint]
    
    public init(destination: T, group: [NSLayoutConstraint] = []) {
        self.destination = destination
        self.group = group
    }
    
    fileprivate func modifiedGroup(_ constraint: NSLayoutConstraint, priority: Float) -> [NSLayoutConstraint] {
        var newGroup = group
        constraint.priority = UILayoutPriority(priority)
        newGroup.append(constraint)
        return newGroup
    }
}

/// Final destination constraints - this one is for customization if you want to add some very
/// custom constraints not covered by this wrapper library

public func tearDown<T>(builder: ConstraintBuilder<T>) -> [NSLayoutConstraint] {
    return builder.group
}

/// Activating all constraints

public func activate<T>(builder: ConstraintBuilder<T>) {
    builder.group.activate()
}

public func centerY<T>(source: NSLayoutYAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.centerYConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.centerYConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.centerYConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }

    }
}

public func centerX<T>(source: NSLayoutXAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.centerXConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.centerXConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.centerXConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func top<T>(source: NSLayoutYAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.topConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.topConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.topConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func bottom<T>(source: NSLayoutYAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.bottomConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.bottomConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.bottomConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func leading<T>(source: NSLayoutXAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.leadingConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.leadingConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.leadingConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func left<T>(source: NSLayoutXAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.leftConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.leftConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.leftConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func trailing<T>(source: NSLayoutXAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.trailingConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.trailingConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.trailingConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func right<T>(source: NSLayoutXAxisAnchor, relation: ConstraintRelation = .equal, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.rightConstraint(source: source, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.rightConstraintGreaterOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.rightConstraintLessOrEqual(source: source, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}


public func height<T>(source: NSLayoutDimension, relation: ConstraintRelation = .equal, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.heightConstraint(source: source, multiplier: multiplier, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.heightConstraintGreaterOrEqual(source: source, multiplier: multiplier, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.heightConstraintLessOrEqual(source: source, multiplier: multiplier, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func height<T>(constant: CGFloat, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.heightConstraint(constant: constant), priority: priority))
    }
}


public func width<T>(source: NSLayoutDimension, relation: ConstraintRelation = .equal, multiplier: CGFloat = 1.0, constant: CGFloat = 0.0, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        switch relation {
        case .equal:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.widthConstraint(source: source, multiplier: multiplier, constant: constant),
                                        priority: priority)
            )
        case .greater:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.widthConstraintGreaterOrEqual(source: source, multiplier: multiplier, constant: constant),
                                        priority: priority)
            )
        case .less:
            return ConstraintBuilder(destination: builder.destination,
                                     group: builder.modifiedGroup(
                                        builder.destination.widthConstraintLessOrEqual(source: source, multiplier: multiplier, constant: constant),
                                        priority: priority)
            )
        }
        
    }
}

public func width<T>(constant: CGFloat, priority: Float = 1000.0) -> (ConstraintBuilder<T>) -> ConstraintBuilder<T> {
    return { builder in
        return ConstraintBuilder(destination: builder.destination, group: builder.modifiedGroup(builder.destination.widthConstraint(constant: constant), priority: priority))
    }
}
