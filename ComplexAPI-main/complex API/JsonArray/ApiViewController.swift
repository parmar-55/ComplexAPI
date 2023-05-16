//
//  ApiViewController.swift
//  swiftyjson
//
//  Created by Demo 01 on 12/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit


class ApiViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arr = [Model]()
    
     override func viewDidLoad() {
        super.viewDidLoad()
        getData()
    }
    
    func getData()
    {
        let url = URL(string: "https://jsonplaceholder.typicode.com/todos")
        URLSession.shared.dataTask(with: url!, completionHandler: { data, response, error in
            if data != nil && error == nil {
                do{
                    self.arr = try JSONDecoder().decode([Model].self, from: data!)
                }
                catch
                {
                    print("error")
                }
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }).resume()
    }
}

extension ApiViewController:UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //cell.textLabel?.text = arr[indexPath.row].title
        if String(arr[indexPath.row].completed) == "true"
        {
            cell.backgroundColor = .red
              cell.textLabel?.text = "\(arr[indexPath.row].completed)"
        }
        else{
            cell.backgroundColor = .green
            cell.textLabel?.text = "\(arr[indexPath.row].completed)"

        }
        return cell
        
    }
    
    
}
