//
//  ModelView.swift
//  swiftyjson
//
//  Created by Demo 01 on 05/05/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import Foundation
/*
 {"coord":
    {"lon":139,"lat":35},
 "weather":
    [{"id":804,"main":"Clouds","description":"overcast clouds","icon":"04d"}],
 
 "base":
    "stations",
 "main":
    {"temp":291.1,"feels_like":290.8,"temp_min":291.1,"temp_max":291.8,"pressure":1011,"humidity":71},
 
 
 "visibility":10000,
"wind":{"speed":1.34,"deg":171,"gust":3.58},
"clouds":{"all":100},
 
 "dt":1683275705,
    "sys":{"type":2,"id":2019346,"country":"JP","sunrise":1683229794,"sunset":1683279092},
    "timezone":32400,"id":1851632,"name":"Shuzenji","cod":200}
 
 */


struct Weather:Decodable {
    var coord:coor
    var weather:weath
    var base:String
    var main:mai
    var visibility:Int
    var wind:wind
    var clouds:cloud
    var dt:Int
    var sys:sy
    var timezone:Int
    var id:Int
    var name:String
    var cod:Int
}

struct coor:Decodable {
    let lon:Int
    let lat:Int
}

struct weath:Decodable {
    let id:Int
    let main:String
    let description:String
    let icon:String
}
//"main":{"temp":291.1,"feels_like":290.8,"temp_min":291.1,"temp_max":291.8,"pressure":1011,"humidity":71},

struct mai:Decodable {
    let temp:Float
    let feels_like:Float
    let temp_min:Float
    let temp_max:Float
    let pressure:Int
    let humidity:Int
}
//"wind":{"speed":1.34,"deg":171,"gust":3.58}
struct wind:Decodable {
    let speed:Float
    let deg:Int
    let gust:Float
    
}

struct cloud:Decodable {
    let all:Int
}
//"sys":{"type":2,"id":2019346,"country":"JP","sunrise":1683229794,"sunset":1683279092},
struct sy:Decodable {
    let type:Int
    let id:Int
    let country:String
    let sunrise:Int
    let sunset:Int
}

