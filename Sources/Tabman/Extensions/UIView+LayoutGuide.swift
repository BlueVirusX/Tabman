//
//  UIView+LayoutGuide.swift
//  Tabman
//
//  Created by Nghia Nguyen on 6/17/19.
//  Copyright © 2022 UI At Six. All rights reserved.
//

import UIKit

extension UIView {
    private var internalSafeAreaLayoutGuide: UILayoutGuide? {
        if self.responds(to: #selector(getter: UIView.safeAreaLayoutGuide)) == .some(true) {
            return self.safeAreaLayoutGuide
        } else {
            return nil
        }
    }
    
    var safeAreaTopAnchor: NSLayoutYAxisAnchor {
        return internalSafeAreaLayoutGuide?.topAnchor ?? topAnchor
    }
    
    var safeAreaBottomAnchor: NSLayoutYAxisAnchor {
        return internalSafeAreaLayoutGuide?.bottomAnchor ?? bottomAnchor
    }
    
    var safeAreaTrailingAnchor: NSLayoutXAxisAnchor {
        return internalSafeAreaLayoutGuide?.trailingAnchor ?? trailingAnchor
    }
    
    var safeAreaLeadingAnchor: NSLayoutXAxisAnchor {
        return internalSafeAreaLayoutGuide?.leadingAnchor ?? leadingAnchor
    }
}
