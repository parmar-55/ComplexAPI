//
//  complex_API_2.swift
//  swiftyjson
//
//  Created by Demo 01 on 13/04/23.
//  Copyright © 2023 Yogesh Patel. All rights reserved.
//

import UIKit

class complex_API_2: UIViewController {

    @IBOutlet weak var lbl6: UILabel!
    @IBOutlet weak var lbl8: UILabel!
    
    @IBOutlet weak var lbl10: UILabel!
    @IBOutlet weak var lbl7: UILabel!
    @IBOutlet weak var lbl9: UILabel!
    @IBOutlet weak var lbl5: UILabel!
    @IBOutlet weak var lbl4: UILabel!
    @IBOutlet weak var lbl3: UILabel!
    @IBOutlet weak var lastLbl: UILabel!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getData()
        
    }
    

   func getData()
   {
        let url = URL(string:"https://tools.learningcontainer.com/sample-json.json")!
    URLSession.shared.dataTask(with: url)  { data, response, error in
       
        guard let data1 = data else
        {
            return
        }
            do{
                let p = try JSONDecoder().decode(j.self, from: data1)
               
                DispatchQueue.main.async {
                    self.lbl.text = p.firstName
                    self.lastLbl.text = p.lastName
                    self.lbl3.text = p.gender
                    self.lbl4.text = String(p.age)
                 //   self.lbl5.text =  
                    self.lbl6.text = p.address.city
                    self.lbl7.text = p.address.state
                    self.lbl8.text = p.address.postalCode
                    for i in p.phoneNumbers
                    {
                        self.lbl9.text = i.number
                        self.lbl10.text = i.type
                    }
                    
                }
                
            }
            catch{
                print("error")
            }
        }.resume()
    }
}

