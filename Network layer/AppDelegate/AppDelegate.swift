//
//  AppDelegate.swift
//  Network layer
//
//  Created by YADU MADHAVAN on 13/06/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        self.setUpPage()
        return true
    }
    
    func setUpPage(){
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        if let outh = UserDefaults.standard.decode(for: LoginModel.self, using: .LoginModel){
    
        }else{
            let loginViewController: LoginViewController = LoginViewController.instantiate(storyboard: .account)
            window.rootViewController = loginViewController
        }
    }

  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

}

