//
//  complexApi2.swift
//  swiftyjson
//
//  Created by Demo 01 on 13/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import Foundation

struct j:Decodable{
    let firstName:String
    let lastName:String
    let gender:String
    let age:Int
    let address:add
    let phoneNumbers:[phone]
}

struct add:Decodable {
    let streetAddress:String
    let city:String
    let state:String
    let postalCode:String
    
}

struct phone:Decodable {
    let type:String
    let number:String
}
