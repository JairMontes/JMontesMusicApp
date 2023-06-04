//
//  MusicAppApp.swift
//  MusicApp
//
//  Created by Jair Montes on 01/06/23.
//
//

import SwiftUI
import Firebase

@main
struct MusicAppApp: App {
    let data = OurData()
    init(){
        FirebaseApp.configure()
        data.loadAlbums()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView(data: data)
        }
    }
}
