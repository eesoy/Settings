//
//  ViewController.swift
//  Settings
//
//  Created by SO YOUNG on 2018. 1. 6..
//  Copyright © 2018년 SO YOUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        if let savedVer = UserDefaults.standard.value(forKey: "version") as? String {
            //최초 실행 아님
            if let currentVersion = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String {
                print("현재 앱 버전: \(currentVersion)")
                if savedVer != currentVersion {
                    print("업데이트 후 최초 실행, 앱 버전: \(currentVersion)")
                    UserDefaults.standard.set(currentVersion, forKey: "version") //현재 버전 저장
                }
            }
        } else {
            //최초 실행일 경우 현재 앱 버전을 가져와서 저장
            //get info.plist files - apps에 올라가는 버전값
            if let version = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as? String {
                print("최초 실행, 앱 버전: \(version)")
                UserDefaults.standard.set(version, forKey: "version")
            }
        }
        
        
        
        
    }

}

