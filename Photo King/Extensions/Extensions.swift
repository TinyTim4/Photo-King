//
//  Extensions.swift
//  Photo King
//
//  Created by Timothy Liu on 3/7/24.
//

import Foundation

extension NSAttributedString {
    
    static func createHPLink(_ text: String, _ substring: String, _ path: String) -> NSAttributedString {
        
        let subStringRange = NSString(string: text).range(of: substring)
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(.link, value: path, range: subStringRange)
        
        return attributedString
    }
}
