//
//  ViewController.swift
//  randomanhbuoi8
//
//  Created by Dương chãng on 11/2/19.
//  Copyright © 2019 macshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var anhUimageview: UIImageView!
    
    
    @IBOutlet weak var tenanhUiLablel: UILabel!
    
    
    @IBOutlet weak var onpressUibutton: UIButton!
    
    @IBOutlet weak var uiView: UIView!
    struct anh {
        var anhUImageview : String
        var tenanhUilablel : String
        var onpresUibutton : UIColor
        init (anh : String, tenanh : String, an : UIColor) {
            self.anhUImageview = anh
            self.tenanhUilablel = tenanh
            self.onpresUibutton = an
        }
    }
    let anh1 = anh(anh: "conbao", tenanh: "Con Báo", an: UIColor.red)
    let anh2 = anh(anh: "concho", tenanh: "Con Chó", an: UIColor.green)
    let anh3 = anh(anh: "conho", tenanh: "Con Hổ", an: UIColor.yellow)
    let anh4 = anh(anh: "conngua", tenanh: "Con Ngựa", an: UIColor.purple)
    let anh5 = anh(anh: "conrua", tenanh: "Con Rùa", an: UIColor.blue)
    let anh6 = anh(anh: "conthiennga", tenanh: "Con Thiên Nga", an: UIColor.white)
    let anh7 = anh(anh: "convet", tenanh: "Con Vẹt" , an: UIColor.brown)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        onpressUibutton.layer.cornerRadius = onpressUibutton.bounds.width/2 // bo chòn hình dạng nut buton
        view.backgroundColor = UIColor.red // đổi màu view cha
        uiView.backgroundColor = UIColor.green // dổi màu view con
        anhUimageview.image = UIImage(named: anh7.anhUImageview) // hiển thị ảnh ra màn hình ứng dụng
        tenanhUiLablel.text = anh7.tenanhUilablel // hiển thị tên ảnh theo tên của  anh7
        onpressUibutton.backgroundColor = anh7.onpresUibutton // hiển thị màu nut ấn theo màu nut ấn của anh7
    }

    @IBAction func on(_ sender: Any) {
        let arr:[anh] = [anh1, anh2, anh3, anh4, anh5, anh6, anh7]
        let chay = arr.randomElement()!
        anhUimageview.image = UIImage(named: chay.anhUImageview)
        tenanhUiLablel.text = chay.tenanhUilablel
        onpressUibutton.backgroundColor = chay.onpresUibutton
    }
    
}

