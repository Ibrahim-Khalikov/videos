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
        
        let lesson = model.currentLesson
        let url = URL(string: Constants.Videohosturl + (lesson?.video ?? ""))
        
        VStack{
            
            if url != nil {
                VideoPlayer(player: AVPlayer(url: url!))
                    .cornerRadius(20)
            }
            
            
            if  model.hasnextLesson() {
                
                Button(action: {
                    model.Nextlesson()
                    
                },
                label: {
                    
                    ZStack{
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(width: 340, height: 62)
                            .cornerRadius(10)
                        
                        Text("Next Lesson:  \(model.currentModule!.content.lessons[model.currentLessonIndex + 1].title)")
                            .font(.title3)
                            
                            .foregroundColor(.white)
                            .bold()
                        
                        
                    }
                })
            }
            
        }
        .padding(10)
    }
}

struct ContentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ContentDetailView()
    }
}
