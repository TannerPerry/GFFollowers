//
//  UIViewController+Ext.swift
//  GFFollowers
//
//  Created by Tanner Perry on 9/15/22.
//

import UIKit
import SafariServices

fileprivate var containerView: UIView!

extension UIViewController {
    
  func  presentGFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
      DispatchQueue.main.async {
          let alertVC = GFAlertViewController(title: title, message: message, buttonTitle: buttonTitle)
          alertVC.modalPresentationStyle = .overFullScreen
          alertVC.modalTransitionStyle = .crossDissolve
          self.present(alertVC, animated: true)
      }
    }
    
    
    func presentSafariVC(with url: URL) {
        let safariVC = SFSafariViewController(url: url)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
        
    }
}
