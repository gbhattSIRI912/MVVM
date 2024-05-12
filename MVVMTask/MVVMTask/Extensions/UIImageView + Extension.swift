//
//  UIImageView + Extension.swift
//  MVVMTask
//
//  Created by Gaurav Bhatt on 17/03/23.
//

import Foundation
import Kingfisher
import UIKit

extension UIImageView {
    func setImage(with urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }
        kf.indicatorType = .activity
        kf.setImage(with: url)
    }
}

