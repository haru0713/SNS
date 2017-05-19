//
//  MakeViewController.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/02/24.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

class MakeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

     @IBOutlet weak var mtable: UITableView!
    
      private let makenames: NSArray = ["10/20オフ会","新規作成"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        mtable.register(UINib(nibName:"MakeCell",bundle:nil),forCellReuseIdentifier:"MakeCell")
        
        mtable.dataSource = self
        
        mtable.delegate = self
        
           }

  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return makenames.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "MakeCell") as! MakeCell
        
        cell.mlabel1.text = makenames[indexPath.row] as! String
        
        if indexPath.row == 0 {
            
            cell.micon.image = UIImage(named: "野獣先輩.jpg")
            
            cell.mrock.image = UIImage(named: "鍵.png")
            
            cell.mlabel2.text = "メンバー:5"
            
        }
        
        
        
        return cell
        
    }
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        }

    
    }
