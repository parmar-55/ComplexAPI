//
//  complex_Api_3.swift
//  swiftyjson
//
//  Created by Demo 01 on 13/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import Foundation

struct jsonFour:Decodable {
    let id:Int
    let userId:Int
    let date:String
    let products:[pro]
    let __v:Int
}
struct pro:Decodable {
    let productId:Int
    let quantity:Int
}



/*

[{"id":1,"userId":1,"date":"2020-03-02T00:00:00.000Z","products":
    [{"productId":1,"quantity":4},{"productId":2,"quantity":1},{"productId":3,"quantity":6}],"__v":0}
    
    
    ,{"id":2,"userId":1,"date":"2020-01-02T00:00:00.000Z","products":[{"productId":2,"quantity":4},{"productId":1,"quantity":10},{"productId":5,"quantity":2}],"__v":0},{"id":3,"userId":2,"date":"2020-03-01T00:00:00.000Z","products":[{"productId":1,"quantity":2},{"productId":9,"quantity":1}],"__v":0},{"id":4,"userId":3,"date":"2020-01-01T00:00:00.000Z","products":[{"productId":1,"quantity":4}],"__v":0},{"id":5,"userId":3,"date":"2020-03-01T00:00:00.000Z","products":[{"productId":7,"quantity":1},{"productId":8,"quantity":1}],"__v":0},{"id":6,"userId":4,"date":"2020-03-01T00:00:00.000Z","products":[{"productId":10,"quantity":2},{"productId":12,"quantity":3}],"__v":0},{"id":7,"userId":8,"date":"2020-03-01T00:00:00.000Z","products":[{"productId":18,"quantity":1}],"__v":0}]

 */
