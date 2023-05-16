//
//  WeatherAPiViewController.swift
//  swiftyjson
//
//  Created by Demo 01 on 05/05/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class WeatherAPiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        getData()
    }
    
    
    func getData()  {
       
    let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=4cd569ffb3ecc3bffe9c0587ff02109f")
        
        URLSession.shared.dataTask(with: url!){ data,response,error in
            
            guard let response = response as? HTTPURLResponse,
                200...299 ~= response.statusCode else
            {
                return
            }
            
            do{
             let data = try JSONDecoder().decode(Weather.self, from: data!)
                print(data)
            }
            catch{
                print(error.localizedDescription)
            }
//            DispatchQueue.main.async {
//                self.tableView.reloadData()
//            }
            }.resume()
    }
    
    

}

