//
//  main.swift
//  FirstInitialExtractor
//
//  Created by joon-ho kil on 8/27/19.
//  Copyright © 2019 길준호. All rights reserved.
//

import Foundation

let firstInitialExtractor = FirstInitialExtractor()
let firstInitial = firstInitialExtractor.extractFristInitial(string: "준호")

if firstInitial == "ㅈ" {
    print("success")
}

