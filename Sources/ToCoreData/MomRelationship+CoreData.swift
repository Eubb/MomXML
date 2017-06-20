//
//  MomRelationship+CoreData.swift
//  MomXML
//
//  Created by Eric Marchand on 18/06/2017.
//  Copyright © 2017 phimage. All rights reserved.
//

import Foundation
import CoreData

extension MomRelationship {

    public var coreData: NSRelationshipDescription {
        let coreData = NSRelationshipDescription()
        coreData.deleteRule = self.deletionRule.coreData
        coreData.isOrdered = self.isOrdered
        coreData.isOptional = self.isOptional
        coreData.isTransient = self.isTransient
        // coreData.isToMany = self.isToMany // from min count and max count
        if let minCount = self.minCount {
            coreData.minCount = minCount
        }
        if let maxCount = self.maxCount {
            coreData.maxCount = maxCount
        }

        coreData.userInfo = self.userInfo.coreData

        return coreData
    }
}

extension MomRelationship.DeletionRule {

    public var coreData: NSDeleteRule {
        switch self {
        case .noAction:
            return .noActionDeleteRule
        case .nullify:
            return .nullifyDeleteRule
        case .cascade:
            return .cascadeDeleteRule
        case .deny:
            return .denyDeleteRule
        }
    }

}
