//
//  tipViewController.swift
//  1117小費器
//
//  Created by heroshi on 2016/11/19.
//  Copyright © 2016年 heroshi. All rights reserved.
//

import UIKit

class tipViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    var pv:Double = 0.0

    @IBOutlet weak var pricetext: UITextField!
    
    var tv:Int = 0
    @IBOutlet weak var tiplabel: UILabel!
    @IBAction func tipslider(_ sender: UISlider) {
        tiplabel.isHidden = false
        tv = Int(sender.value)
        tiplabel.text = "\(tv)%"
    }
    
    @IBAction func cal(_ sender: AnyObject) {
        tipvalue.isHidden = false
        
        let tv = Double(self.tv) //把tv從int轉double
        
        if pricetext.text == ""
        { tipvalue.text = "請輸入數字"
        }  //為輸入價錢時結帳閃退
        else
        {
        let tip =  (tv) * Double(pricetext.text!)! * 0.01
    tipvalue.text = "\(tip)"
    
    //收鍵盤
    
        func textFieldShouldReturn(_ textField: UITextField) -> Bool
        {
            pricetext.resignFirstResponder()
            return true
        }
        }
    }
    
    
    
    @IBOutlet weak var tipvalue: UILabel!

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
