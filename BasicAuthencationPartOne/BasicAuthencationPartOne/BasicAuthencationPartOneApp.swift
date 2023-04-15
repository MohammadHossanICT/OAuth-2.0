//
//  BasicAuthencationPartOneApp.swift
//  BasicAuthencationPartOne
//
//  Created by M A Hossan on 15/04/2023.
//

import SwiftUI

@main
struct BasicAuthencationPartOneApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: SignInViewModel())
        }
    }
}
