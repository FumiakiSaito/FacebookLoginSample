//
//  ViewController.swift
//  FacebookLoginSample
//
//  Created by Fumiaki Saito on 2015/03/10.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBLoginViewDelegate{
    
    @IBOutlet var fbLoginView : FBLoginView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Facebook Delegate Methods
    
    // ログイン中の表示をするとき
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        
        println("User Logged In")
        
    }
    
    // 公開プロフィールを取ってきたとき
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        
        println(user.name)
        println(user)
        
        // accessToken?
        var myToken = FBSession.activeSession().accessTokenData.accessToken
        println(myToken)
    }
    
    // ログアウト中の表示するとき
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        
        println("User Logged Out")
        
    }
    
    func loginView(loginView: FBLoginView!, handleError error: NSError!) {
        
    }
    
}

