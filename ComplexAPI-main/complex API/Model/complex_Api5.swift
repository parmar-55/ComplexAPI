//
//  complex_Api5.swift
//  swiftyjson
//
//  Created by Demo 01 on 16/05/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import Foundation


struct Employees:Decodable {
    let status:String
    let data:[EmployeeData]
    let message:String
}


struct EmployeeData:Decodable{
    let id : Int
    let employee_name:String
    let employee_salary:Int
    let employee_age : Int
    let profile_image : String
}
/*
{"status":"success","data":
 [{"id":1,"employee_name":"Tiger Nixon","employee_salary":320800,"employee_age":61,"profile_image":""},
 ,{"id":24,"employee_name":"Doris Wilder","employee_salary":85600,"employee_age":23,"profile_image":""}],"message":"Successfully! All records has been fetched."}
*/

//struct EmployeeData: Decodable {
//    let id, employeeName, employeeSalary, employeeAge: String
//    let profileImage: String
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case employeeName = "employee_name"
//        case employeeSalary = "employee_salary"
//        case employeeAge = "employee_age"
//        case profileImage = "profile_image"
//    }
//}
//
