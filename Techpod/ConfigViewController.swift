//
//  ConfigViewController.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/02/24.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

class ConfigViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var ctable: UITableView!
    
    private let confignames: NSArray = ["田所","プロフィール画像","友達申請","申請を受けなくする","友達","グループ","申請中"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ctable.register(UINib(nibName:"ConfigCell",bundle:nil),forCellReuseIdentifier:"ConfigCell")
        
        ctable.dataSource = self
        
        ctable.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        performSegue(withIdentifier: "toFriends", sender: nil)

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return confignames.count
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConfigCell") as! ConfigCell
        
        cell.clabel1.text = confignames[indexPath.row] as! String
        
        if indexPath.row == 0 {
            
            cell.clabel2.text = "ID:123456"
            cell.cicon.image = UIImage(named:"野獣先輩.jpg")
        }else{
            
        }
      
        
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        if indexPath.row == 0 {
            return 130
        }else{
            return 90
        }
    }
    
    
}
    

