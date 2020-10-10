//
//  UIImage+Extension.swift
//  FireChat
//
//  Created by Brian Vilchez on 10/9/20.
//

import Foundation
import UIKit

extension UIImage {
        
    func resize(targetSize: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size:targetSize).image { _ in
            self.draw(in: CGRect(origin: .zero, size: targetSize))
        }
    }

}

