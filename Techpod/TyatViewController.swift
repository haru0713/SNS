//
//  TyatViewController.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/02/17.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

class TyatViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var ttable: UITableView!
    
    private let tyatnames: NSArray = ["10/20オフ会","もやし","トマト","鈴木","田中","佐藤"]
    
     private let tlabel2Array: NSArray = ["メンバー:5","メンバー:8350","メンバー:3523","","",""]
    
    private let tlabel3Array: NSArray = ["リーダー:田所","リーダー:もやし","リーダー:トマト","やってるー？","ダリャああああ","焼肉食べたい"]
    
    
    
    
    private let ticonArray: NSArray = [UIImage(named:"野獣先輩.jpg"),UIImage(named:"もやし.png"),UIImage(named:"とまと.jpg"),UIImage(named:"安村.jpg"),UIImage(named:"ミートボール.jpg"),UIImage(named:"コダック.jpg")]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ttable.register(UINib(nibName:"TyatCell",bundle:nil),forCellReuseIdentifier:"TyatCell")
        
        ttable.dataSource = self
        
        ttable.delegate = self
        
        }
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        return tyatnames.count
    
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "TyatCell") as! TyatCell
        
        cell.tlabel1.text = tyatnames[indexPath.row] as! String
        cell.tlabel2.text = tlabel2Array[indexPath.row] as! String
        cell.tlabel3.text = tlabel3Array[indexPath.row] as! String

        
        cell.ticon.image = ticonArray[indexPath.row] as! UIImage
        
        return cell

    }
    
    
    
    //セルが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        
        
    }
    
    
    
    }
    


    

    
    
    


    
    

