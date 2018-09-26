//
//  ViewController.swift
//  MyPoem
//
//  Created by leon on 2018/9/26.
//  Copyright © 2018年 leonlee. All rights reserved.
//

import UIKit
import SVProgressHUD
import SwiftyJSON

class ViewController: UIViewController {
   
    
    

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var paragraphLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let path = Bundle.main.path(forResource: "china", ofType: "json")else{ return }
        let url = URL(fileURLWithPath: path)
        
        do{
           let data = try Data(contentsOf: url)
           let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
          
        
        }catch{
            print(error)
        }
        
        
        titleLabel.text = "帝京篇十首"
        authorLabel.text = "太宗皇帝"
        paragraphLabel.text = "秦川雄帝宅，函谷壯皇居。綺殿千尋起，離宮百雉餘。連甍遙接漢，飛觀迥凌虛。雲日隱層闕，風煙出綺疎。"
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        SVProgressHUD.show(withStatus: "working")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

