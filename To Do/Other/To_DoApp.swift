//
//  To_DoApp.swift
//  To Do
//
//  Created by Aray Muratova on 13.09.2023.
//
import FirebaseCore
import SwiftUI

@main
struct To_DoApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
