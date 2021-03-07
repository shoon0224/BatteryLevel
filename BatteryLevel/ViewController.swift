//
//  ViewController.swift
//  BatteryLevel
//
//  Created by 이상훈 on 2021/03/07.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lblMyBattery: UILabel!
    @IBOutlet var pvBatteryView: UIProgressView!
    

    var myBattery: Float = 0.0 //내 배터리 변수 초기화
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        let batteryLevel = UIDevice.current.batteryLevel*100
        
        print("My Battery:\(batteryLevel)")
        
        
        myBattery = batteryLevel
        pvBatteryView.progress = myBattery/100 //프로그레스 배터리값
        
        
        lblMyBattery.text = String(batteryLevel)
        switch myBattery {
        case 80.0...100.0:
            pvBatteryView.progressTintColor = UIColor.green
        case 50.0..<80.0:
            pvBatteryView.progressTintColor = UIColor.blue
        case 20.0..<50.0:
            pvBatteryView.progressTintColor = UIColor.brown
        default:
            pvBatteryView.progressTintColor = UIColor.red
        }
    }


}

