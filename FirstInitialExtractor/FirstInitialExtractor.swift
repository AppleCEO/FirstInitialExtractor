//
//  FirstInitialExtractor.swift
//  FirstInitialExtractor
//
//  Created by joon-ho kil on 8/27/19.
//  Copyright © 2019 길준호. All rights reserved.
//

import Foundation

struct FirstInitialExtractor {
    private let startOfHangul: UInt32 = 44032 // 한글 유니코드 시작값
    private let endOfHangul: UInt32 = 55215   // 한글 유니코드 끝값
    
    private let initialConsonantArray = [
        "ㄱ", "ㄲ", "ㄴ", "ㄷ", "ㄸ", "ㄹ", "ㅁ", "ㅂ", "ㅃ", "ㅅ", "ㅆ", "ㅇ", "ㅈ", "ㅉ", "ㅊ", "ㅋ", "ㅌ", "ㅍ", "ㅎ"
    ]
    private let notHaveInitial = ""
    
    func extractFristInitial(string: String) -> String {
        guard let unicode = string.unicodeScalars.first else {
            return notHaveInitial
        }
        
        let currentUnicodeValue = unicode.value
        
        // 유니코드 값이 한글 범위인 경우
        if ( startOfHangul <= currentUnicodeValue &&
            endOfHangul >= currentUnicodeValue ) {
            
            return initialConsonantArray[Int(((currentUnicodeValue - startOfHangul) / 28) / 21)]
        } else { // 유니코드 값이 한글 범위가 아닌 경우
            if let scalar = UnicodeScalar(currentUnicodeValue) {
                return String(scalar)
            }
        }
        
        return notHaveInitial
    }
}
