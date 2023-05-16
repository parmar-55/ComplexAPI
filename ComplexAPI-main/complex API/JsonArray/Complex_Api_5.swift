//
//  Complex_Api_5.swift
//  swiftyjson
//
//  Created by Demo 01 on 16/05/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class Complex_Api_5: UIViewController {

    
    @IBOutlet weak var myTableView: UITableView!
    
    var arrEmp = [Employees]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func getData()
    {
        let url = URL(string: "https://dummy.restapiexample.com/api/v1/employees")
        URLSession.shared.dataTask(with: url!) { data, response, error  in
            
//            guard let response = response as? HTTPURLResponse,
//                200...299 ~= response.statusCode else
//            {
//                return
//            }
            if data != nil , error == nil
            {
                do{
                    let data = try JSONDecoder().decode(Employees.self, from: data!)
                    self.arrEmp.append(data)
                   // print(data)
                    
                }
                catch{
                    print("erorrr.....",error.localizedDescription)
                }
                DispatchQueue.main.async {
                    self.myTableView.reloadData()
                }
            }
        }.resume()
        
    }
    
    
}


extension Complex_Api_5:UITableViewDataSource,UITableViewDelegate
{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrEmp.count
    }
    
    func tableView(_ tabeView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EmployeeCell
       
        for i in arrEmp[indexPath.row].data
        {
            cell.lblEmployeeName?.text = i.employee_name
            cell.lblAge.text = String(i.employee_age)
            cell.lblSalary.text = String(i.employee_salary)
        }
     
//        for i in arrEmp[indexPath.row].data{
//            cell.textLabel?.text = arrEmp[indexPath.row].status + arrEmp[indexPath.row].message + "\(i.id)" + "\(i.employee_age)" + "\(i.employee_name)" + "\(i.employee_salary)" + "\(i.profile_image)"
//        }

        
        
        return cell
    }
    
    
}
