//
//  ContentView.swift
//  LearningApp
//
//  Created by cloud_vfx on 06/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model: ContentModel
    
    var body: some View {
        
        ScrollView{
            
            LazyVStack{
                
                if model.currentModule != nil {
                    
                    ForEach(0..<model.currentModule!.content.lessons.count){ index in
                    
                        NavigationLink(
                            destination: ContentDetailView()
                                .onAppear(perform: {
                                    model.beginLesson(index)
                                }),
                            label: {
                                ContentViewRow(index: index)                            })
                        
                        
                        
                        
                    }
                }
            }.navigationTitle("Swift Lesson")
            .accentColor(.black)
            .padding()
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
