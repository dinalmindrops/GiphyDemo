//
//  Globals.swift
//  GiphyDemo
//
//  Created by Dinal's iMac on 16/05/22.
//

import Foundation
import SVProgressHUD
import Reachability

let GiphyKey = "dPis2GgzXfOX6rYHtZUmJwTPLqxErmMc"

func HasInternet() -> Bool {
    if let _ = Reachability(hostname: "google.com") {
        return true
    }else{
        return false
    }
}


class API_Constant: NSObject {
    static let BASE_URL = "https://api.giphy.com/v1/gifs/"
    
    
    static let GET_TRENDING_GIF = API_Constant.BASE_URL + "trending"
    static let GET_SEARCH_GIF = API_Constant.BASE_URL + "search"
}


class CommonClass: NSObject{
    func show() {
        SVProgressHUD.show()
        SVProgressHUD.setDefaultMaskType(.clear)
        SVProgressHUD.setBackgroundColor(.black)
        SVProgressHUD.setForegroundColor(UIColor.white)
    }
    
    func hide_hud() {
        SVProgressHUD.dismiss()
    }
}

extension UIViewController{
    func showAlert(message: String){
        let alert = UIAlertController(title: "Giphy", message: message, preferredStyle: UIAlertController.Style.alert)
        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: { action -> Void in
            //Just dismiss the action sheet
            let selector: Selector = NSSelectorFromString("alertOkButtonHandler")
            if self.responds(to: selector){
                _ = self.perform(selector)
            }
        })
        alert.addAction(okAction)
        self.present(alert, animated: true, completion: nil)
    }
}


