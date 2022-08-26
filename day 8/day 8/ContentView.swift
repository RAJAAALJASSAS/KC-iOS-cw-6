//
//  ContentView.swift
//  day 8
//
//  Created by ابناء فهد on 20/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var mynote = ""
    @State var seleced : Color
    let color = [Color.indigo.opacity(0.3),Color.pink.opacity(0.3),Color.blue.opacity(0.3),Color.yellow.opacity(0.3)]
    var body: some View {
        NavigationView{
            ZStack{
                Color.gray.opacity(0.3)
                    .ignoresSafeArea()
                VStack{
                Spacer()
                    Text("اختر اللون المفضل 🎨")
                        .font(.system(size: 25))
                    HStack{
                        ForEach(color,id:\.self){ color in
                            
                            Circle()
                                .fill(color)
                                .frame(width: 50, height: 50)
                                .onTapGesture {
                                    selected = Color
                                }
                        
                        }
                    }.padding()
                    Text("ماذا تريد ان تكتب ؟")
                        .font(.system(size: 20))
                    
                    Spacer()
                    
                    TextField("اكتب هنا",text: $mynote)
                        .padding()
                        .frame(width: 300, height:50)
                        .background(.white)
                        .cornerRadius(50)
                    Spacer()
                         
                
                    NavigationLink(destination: ("SecondView") {
                                    Text("حفظ")
                                              .font(.title)
                                              .onTapGesture
                                }
                                
                }
                
            }
            
            
            .navigationTitle("دفتر اليوميات😍")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
