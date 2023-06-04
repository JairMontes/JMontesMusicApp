//
//  Data.swift
//  MusicApp
//
//  Created by Jair Montes on 03/06/23.
//

import Foundation
import SwiftUI
import Firebase

class OurData : ObservableObject {
    @Published public var albums = [Album(name: "True Colors", image: "beautifulnow",
                        songs: [Song(name: "Beautiful now", time: "2:36"),
                                Song(name: "Can't Stop the Feeling!", time: "2:36"),
                                Song(name: "Hair Up", time: "2:36"),
                                Song(name: "Get Back Up Again", time: "2:36")]),
                  
                  Album(name: "Different World", image: "faded",
                                      songs: [Song(name: "Faded", time: "2:36"),
                                              Song(name: "All Falls Down", time: "2:36"),
                                              Song(name: "Lonely", time: "2:36"),
                                              Song(name: "Different World", time: "2:36")]),
                  
                  Album(name: "Random Access Memories", image: "getlucky",
                                      songs: [Song(name: "Get Lucky", time: "2:36"),
                                              Song(name: "Maintenant ou jamais", time: "2:36"),
                                              Song(name: "Flute", time: "2:36"),
                                              Song(name: "Counting Stars", time: "2:36")]),
                  
                  Album(name: "NRJ Hit Music Only 2014", image: "shotmedown",
                                      songs: [Song(name: "Shot Me Down", time: "2:36"),
                                              Song(name: "Instant Crush", time: "2:36"),
                                              Song(name: "Touch", time: "2:36"),
                                              Song(name: "Contact", time: "2:36")])]
    
    func loadAlbums() {
        Firestore.firestore().collection("albums").getDocuments() { (snapshot, error) in
            if error == nil {
                print(snapshot)
            }else  {
                ("error")
            }
            
        }
    }
}
