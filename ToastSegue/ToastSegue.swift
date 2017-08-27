//
//  ToastSegue.swift
//  ToastSegue
//
//  Created by motoki on 2017/08/26.
//  Copyright © 2017年 vipt. All rights reserved.
//

import UIKit

class ToastSegue: UIStoryboardSegue {
    var message = ""
    
    override func perform() {
        let toast = self.makeToast()
        toast.alpha = 0
        self.source.view.addSubview(toast)
        UIView.transition(with: self.source.view, duration: 1, options: .curveLinear, animations: {
            toast.alpha = 1
        }, completion: { finished in
            toast.removeFromSuperview()
            self.destination.view.addSubview(toast)
            self.source.navigationController?.pushViewController(self.destination, animated: false)
            UIView.transition(with: self.destination.view, duration: 1, options: .curveLinear, animations: {
                toast.alpha = 0
            }, completion: { finished in
                toast.removeFromSuperview()
            })
        })
    }
    
    func makeToast() -> UILabel {
        let toast = UILabel(frame: CGRect(x: 0 , y: 0, width: 400, height: 44))
        toast.textAlignment = .center
        toast.backgroundColor = .black
        toast.textColor = .white
        toast.layer.cornerRadius = 22
        toast.layer.masksToBounds = true
        toast.center = CGPoint(x: self.source.view.center.x, y: self.source.view.bounds.height - toast.bounds.height)
        toast.text = self.message
        return toast
    }
}
