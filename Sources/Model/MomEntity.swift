//  Created by Eric Marchand on 07/06/2017.
//  Copyright © 2017 Eric Marchand. All rights reserved.
//

import Foundation

public struct MomEntity {

    public var name: String
    public var representedClassName: String
    public var syncable: Bool = true
    public var codeGenerationType: String
    public var userInfo = MomUserInfo()

    //TODO public var elementID: String?
    //TODO public var versionHashModifier: String?

    public init(name: String, representedClassName: String? = nil, codeGenerationType: String = "class") {
        self.name = name
        self.representedClassName = representedClassName ?? name
        self.codeGenerationType = codeGenerationType
    }

    public var attributes: [MomAttribute] = []
    public var relationship: [MomRelationship] = []
    public var fetchProperties: [MomFetchedProperty] = []
    // TODO MomCompoundIndex
    // TODO MomUniquenessConstraint
}
