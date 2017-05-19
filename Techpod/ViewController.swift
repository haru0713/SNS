//
//  ViewController.swift
//  Techpod
//
//  Created by 阿部遥人 on 2017/01/27.
//  Copyright © 2017年 阿部遥人. All rights reserved.
//

import UIKit

//UITableViewのDataSourse（データソース）メソッドを使う為の「プロトコル宣言」を行う
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
@IBOutlet weak var table: UITableView!
    
    
    // Tableで使用する配列を定義する.
    private let zibunItems: NSArray = ["太郎"]
    
    private let groupItems: NSArray = ["10/20オフ会", "もやし", "トマト",]
    
    private let tomodachiItems: NSArray = ["鈴木", "田中", "佐藤",]
    
      private let label2Array: NSArray = ["リーダー:田所", "リーダー:もやし", "リーダー:トマト",]
    
    private let groupicon : NSArray = [UIImage(named:"野獣先輩.jpg" ),UIImage(named:"もやし.png" ),UIImage(named:"とまと.jpg" )]
    
    private let tomodachiicon : NSArray = [UIImage(named:"安村.jpg" ),UIImage(named:"ミートボール.jpg" ),UIImage(named:"コダック.jpg" )]

    
    
    
    // Sectionで使用する配列を定義する.
    private let mySections: NSArray = ["自分", "グループ","友達"]
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        
        table.register(UINib(nibName:"CustomCell",bundle:nil),forCellReuseIdentifier:"CustomCell")
        //tableviewcellをNibファイルとして登録
        
        //テーブルビューのデータソースメソッドはViewControllerクラスに書くよ、という設定
        table.dataSource = self
        
       //テーブルビューのデリゲートメソッドはViewControllerクラスに書くよ、という設定
        table.delegate = self
        
    }
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    //セクションの数を返す
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return mySections.count
    
    }
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {

        return mySections[section] as? String
   
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            
            return zibunItems.count
      
        } else if section == 1 {
            
            return groupItems.count
        
        } else if section == 2{
            
            return tomodachiItems.count
       
        }else {
            
            return 0
        
        }
    }
    
    
    /// セルに値を設定するデータソースメソッド（必須）
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // セルを取得
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! CustomCell
        
        
        if indexPath.section == 0{
            
             cell.label1.text = "田所"
            cell.iconImageView.image = UIImage(named:"野獣先輩.jpg" )
            
        }else if indexPath.section == 1{
            
            cell.label1.text =  groupItems[indexPath.row] as! String
            
            cell.label2.text = label2Array[indexPath.row] as! String
            
            cell.iconImageView.image = groupicon[indexPath.row] as! UIImage
            
            if indexPath.row == 0 {
                
                cell.rockImageView.image = UIImage(named:"鍵.png" )
            }
            
        }else {
            
            cell.label1.text =  tomodachiItems[indexPath.row] as! String

            cell.iconImageView.image = tomodachiicon[indexPath.row] as! UIImage
            
        }
        
        
        
    
        
       
        
       
        
        return cell
   
    }
    
    //セルが押された時に呼ばれるメソッド
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
    }
    
}
