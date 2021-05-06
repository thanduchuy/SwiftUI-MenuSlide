//
//  Session.swift
//  Weather
//
//  Created by than.duc.huy on 06/05/2021.
//

import Foundation

struct Session: Identifiable, Hashable {
    var id: Int
    var time: String
    var temperature: Int
}
