//
//  Banana.swift
//  bananaframework
//
//  Created by Nishan Niraula on 8/3/2566 BE.
//

import Foundation
import RealmSwift

open class Banana {
    
    public func createFruit(name: String, isSweet: Bool) {
        let realm = try? Realm()
        
        let fruit = Fruit()
        fruit.fruitName = name
        fruit.isSweet = isSweet
        
        try? realm?.write {
            realm?.add(fruit)
        }
    }
    
    public func fetchAllFruits() -> [Fruit] {
        var fruits: [Fruit] = []
        
        guard let realm = try? Realm() else { return [] }
        
        let results = realm.objects(Fruit.self)
        results.forEach {
            fruits.append($0)
        }
        
        return fruits
    }
}
