//
//  complex_API_4.swift
//  swiftyjson
//
//  Created by Demo 01 on 28/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class complex_API_4: UIViewController {

    var arr = [Data]()
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchProduct()
    }
    
    func fetchProduct()
    {
        let url = URL(string: "https://fakestoreapi.com/products")
        URLSession.shared.dataTask(with: url!){ data,response,error in
            
            guard let response = response as? HTTPURLResponse,
                200...299 ~= response.statusCode else
            {
                return
            }
            
            do{
                self.arr = try JSONDecoder().decode([Data].self, from: data!)
                print(self.arr)
            }
            catch{
                print(error.localizedDescription)
            }
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }.resume()
    }
 

}

extension UIImageView{
    func showImage(from url:URL){
        contentMode = .scaleToFill
        let dataTAsk = URLSession.shared.dataTask(with: url, completionHandler: {
            data, response, error in
            guard let httpURLresponse = response as? HTTPURLResponse,
                httpURLresponse.statusCode == 200,
                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                let data = data, error == nil,
                let image = UIImage(data:data)
                else {      print("error")
                    return
            }
            DispatchQueue.main.async {
                self.image = image
            }
        })
        dataTAsk.resume()
        
    }
    
}

extension complex_API_4:UITableViewDelegate,UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",for: indexPath)
        as! ProductTableViewCell
        
        cell.productTitleLabel?.text = arr[indexPath.row].title
        cell.categoryLbl.text = arr[indexPath.row].category
        cell.priceLbl.text = "$\(arr[indexPath.row].price)"
        cell.descreptionLabel.text = arr[indexPath.row].description
        cell.imageProduct.showImage(from: URL(string: arr[indexPath.row].image)!)
        
        return cell
    }
    
    
}

// cell.img.downImg(from: URL(string: arrData[indexPath.row].artworkUrl100)!)
