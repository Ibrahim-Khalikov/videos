//
//  ContentViewRow.swift
//  LearningApp
//
//  Created by cloud_vfx on 06/06/21.
//

import SwiftUI

struct ContentViewRow: View {
    
    @EnvironmentObject var model: ContentModel
    
    let index: Int
    
    var body: some View {
        
        let lesson = model.currentModule!.content.lessons[index]
        
        
        ZStack(alignment: .leading){
            
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(radius: 5)
                .frame(height: 66)
            
            HStack{
                Text(String(index + 1))
                    .bold()
                
                VStack(alignment:.leading){
                    Text("\(lesson.title)")
                        .bold()
                    Text(String(lesson.duration))
                    
                }
                .padding(.leading)
            }.padding()
        }
    }
}

