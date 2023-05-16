////
////  HeroStat1ViewController.swift
////  swiftyjson
////
////  Created by Demo 01 on 10/04/23.
////  Copyright © 2023 Yogesh Patel. All rights reserved.
////
//
//import UIKit
//
//class HeroStat1ViewController: UIViewController {
//
//    @IBOutlet weak var myTableView: UITableView!
////    var herosArr = [ModelTwo]()
//    
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.fetchData()
//
//    }
//    
//
//    func fetchData()
//    {
//        let url = URL(string: "https://api.opendota.com/api/heroStats")!
//        URLSession.shared.dataTask(with: url){ data,response,error
//            in
//            if error == nil{
//            do {
////                self.herosArr = try JSONDecoder().decode([ModelTwo].self, from: data!)
//                }
//            catch
//            {
//                print(error.localizedDescription)
//            }
//                DispatchQueue.main.async {
//                    self.myTableView.reloadData()
//                }
//            }
//            }.resume()
//    }
//}
//
//
//extension HeroStat1ViewController:UITableViewDataSource,UITableViewDelegate
//{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return herosArr.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell",for:indexPath)
//        cell.textLabel?.text = herosArr[indexPath.row].localized_name.capitalized
//        cell.detailTextLabel?.text = herosArr[indexPath.row].primary_attr.capitalized
//        return cell
//    }
//    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        performSegue(withIdentifier: "seg", sender: self)
//        
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let vc = segue.destination as? ShowDataViewController
//        {
//            vc.hero = herosArr[myTableView.indexPathForSelectedRow!.row]
//            //herosArr[myTableView.indexPathForSelectedRow!.row]
//        }
//    }
//}
