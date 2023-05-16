////
////  ShowDataViewController.swift
////  swiftyjson
////
////  Created by Demo 01 on 10/04/23.
////  Copyright © 2023 Yogesh Patel. All rights reserved.
////
//
//import UIKit
//
//extension UIImageView{
//    func downloaded(from url:URL){
//        contentMode = .scaleToFill
//        let dataTAsk = URLSession.shared.dataTask(with: url, completionHandler: {
//            data, response, error in
//            guard let httpURLresponse = response as? HTTPURLResponse,
//                httpURLresponse.statusCode == 200,
//                let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
//                let data = data, error == nil,
//                let image = UIImage(data:data)
//                else {      print("error")
//                    return               }
//            DispatchQueue.main.async { [weak self] in
//                
//                self?.image = image                  }
//        })
//        dataTAsk.resume()
//    }
//    func downloaded(from link:String)
//    {
//        guard let url = URL(string: link) else { return }
//        downloaded(from: url)
//        
//    }
//}
//class ShowDataViewController: UIViewController {
//
//    
//    @IBOutlet weak var img: UIImageView!
//    @IBOutlet weak var lbl1: UILabel!
//    @IBOutlet weak var lbl2: UILabel!
//    @IBOutlet weak var lbl3: UILabel!
//    @IBOutlet weak var lbl4: UILabel!
//    
//    
//    var hero : ModelTwo?
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        lbl1.text = hero?.localized_name
//        lbl2.text = hero?.primary_attr
//        lbl3.text = hero?.attack_type
//        lbl4.text = "\(hero!.legs)"
//        
//        let imgURL = "https://api.opendota.com" + (hero?.img)!
//        print(imgURL)
//        img.downloaded(from: imgURL)
//    }
//    
//
//}
//
//
