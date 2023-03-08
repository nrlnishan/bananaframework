//
//  Fruit.swift
//  bananaframework
//
//  Created by Nishan Niraula on 8/3/2566 BE.
//

import Foundation
import RealmSwift

public class Fruit: Object {
    @Persisted public var fruitName: String = ""
    @Persisted public var isSweet: Bool = false
}
