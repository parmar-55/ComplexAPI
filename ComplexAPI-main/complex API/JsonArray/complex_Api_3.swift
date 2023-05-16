//
//  complex_Api_3.swift
//  swiftyjson
//
//  Created by Demo 01 on 13/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class complex_Api_3: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arr = [jsonFour]()
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        
    }
    

    func  getData()
    {
        let url = URL(string:"https://fakestoreapi.com/carts")!
        URLSession.shared.dataTask(with:url){ data , response, error in
            
            if data != nil , error == nil
            {
                do{
                    self.arr = try JSONDecoder().decode([jsonFour].self, from:data!)
                }
                catch{
                    print("error....",error.localizedDescription)
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }.resume()
    }

}

extension complex_Api_3:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for : indexPath)
        cell.textLabel?.text = String(arr[indexPath.row].id) + String(arr[indexPath.row].userId) + String(arr[indexPath.row].__v) + arr[indexPath.row].date
        for i in arr[indexPath.row].products{
            cell.textLabel?.text = "\(i.productId) , \(i.quantity)  " + String(arr[indexPath.row].id) + " " + String(arr[indexPath.row].userId) + " " + String(arr[indexPath.row].__v) + arr[indexPath.row].date
        }
        return cell
    }
    
    
}
