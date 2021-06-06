//
//  ContentDetailView.swift
//  LearningApp
//
//  Created by cloud_vfx on 06/06/21.
//

import SwiftUI
import AVKit


struct ContentDetailView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        let lesson = model.currentModule!.content.lessons.count
        let url = 
        
        
        VideoPlayer(player: AVPlayer(url: <#T##URL#>))
        
        
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
