//
//  complexViewController.swift
//  swiftyjson
//
//  Created by Demo 01 on 13/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class complexViewController: UIViewController {

    @IBOutlet var tableView:UITableView!
    var arr = [a]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       fetchData()
    }
    func fetchData()
    {
        let url = URL(string: "https://fakestoreapi.com/users")
        URLSession.shared.dataTask(with: url!, completionHandler: { data, response, error in
            if data != nil , error == nil
            {
                do{
                    self.arr  = try JSONDecoder().decode([a].self, from: data!)
                    // print(b)
                }
                catch{
                    print("fuck you")
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
                
            }
        }).resume()
    }

   
}

extension complexViewController:UITableViewDataSource,UITableViewDelegate
{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 150
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let ce = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CellTableView
        ce.lal.text =  String(arr[indexPath.row].id) + " " + arr[indexPath.row].email + " " +  arr[indexPath.row].username + " " + arr[indexPath.row].password + " " + arr[indexPath.row].phone 

        return ce
    }
    
    
}


class CellTableView:UITableViewCell
{
    @IBOutlet var lal:UILabel!
}
