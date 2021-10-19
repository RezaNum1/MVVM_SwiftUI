//
//  ResultState.swift
//  MVVM
//
//  Created by Reza Harris on 15/10/21.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Article])
    case failed(error: Error)
}
