//
//  ContentView.swift
//  Color_Game
//
//  Created by l on 15.08.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    @State private var score:Int =  0
    @State private var scoreAlert:Int =  0
    @State private var incColor:String = "red"
    @State private var button1:String = "blue"
    @State private var button2:String = "red"
    @State private var button3:String = "green"
    @State private var button4:String = "orange"
    var colorName : [String] = ["blue","red","green","orange"]
    var body: some View {
        VStack{
            
            Text("Color Game")
                .font(.largeTitle)
                .bold()
            
            Text(colorName.randomElement()!)
                .font(.title)
                .padding()
                .foregroundColor(Color(UIColor(named: incColor)!))
            
            Text("Score: \(score)")
                .padding()
                .font(.title)
            
            // buttons
            Button(action: {
                if(button1 == incColor){
                    score = score + 1
                    incColor = colorName.randomElement()!
                }else{
                    scoreAlert = score
                    showingAlert = true
                    score = 0
                }
            }, label: {
                Text("")
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.10, alignment: .center)
                    .background(Color(UIColor(named: button1)!))
                    
                
            }).alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Game over"),
                    message: Text("the points you have earned : \(scoreAlert)")
                )
            }
            
            
            Button(action: {
                if(button2 == incColor){
                    score = score + 1
                    incColor = colorName.randomElement()!
                }else{
                    scoreAlert = score
                    showingAlert = true
                    score = 0
                }
            }, label: {
                Text("")
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.10, alignment: .center)
                    .background(Color(UIColor(named: button2)!))
                
            }).alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Game over"),
                    message: Text("the points you have earned : \(scoreAlert)")
                )
            }
            
            Button(action: {
                if(button3 == incColor){
                    score = score + 1
                    incColor = colorName.randomElement()!
                }else{
                    scoreAlert = score
                    showingAlert = true
                    score = 0
                }
            }, label: {
                Text("")
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.10, alignment: .center)
                    .background(Color(UIColor(named: button3)!))
                
            }).alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Game over"),
                    message: Text("the points you have earned : \(scoreAlert)")
                )
            }
            
            Button(action: {
                if(button4 == incColor){
                    score = score + 1
                    incColor = colorName.randomElement()!
                }else{
                    scoreAlert = score
                    showingAlert = true
                    score = 0
                }
            }, label: {
                Text("")
                    .padding()
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.10, alignment: .center)
                    .background(Color(UIColor(named: button4)!))
                
            }).alert(isPresented: $showingAlert) {
                Alert(
                    title: Text("Game over"),
                    message: Text("the points you have earned : \(scoreAlert)")
                )
            }
        }.onAppear(){
            incColor = colorName.randomElement()!
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

