//
//  ConstraintRelation.swift
//  FunctionalBuilders
//
//  Created by Szymon Mrozek on 14.03.2018.
//  Copyright © 2018 SzymonMrozek. All rights reserved.
//

import Foundation

public enum ConstraintRelation {
    case equal
    case greater
    case less

    var nsLayoutRelation: NSLayoutRelation {
        switch self {
        case .equal:
            return .equal
        case .less:
            return .lessThanOrEqual
        case .greater:
            return .greaterThanOrEqual
        }
    }
}
