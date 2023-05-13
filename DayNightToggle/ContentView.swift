//
//  ContentView.swift
//  DayNightToggle
//
//  Created by Artem on 13/05/2023.
//

import SwiftUI

var backgroundColorLight = Color(#colorLiteral(red: 0.5675077438, green: 0.7100378275, blue: 0.9950856566, alpha: 1))
var backgroundColorDark = Color(#colorLiteral(red: 0.3532450795, green: 0.5743020773, blue: 0.9943491817, alpha: 1))


var backgroundNightColorLight = Color(#colorLiteral(red: 0.1686133146, green: 0.1686386466, blue: 0.4519162774, alpha: 1))
var backgroundNightColorDark = Color(#colorLiteral(red: 0.08626949042, green: 0.08627844602, blue: 0.207742691, alpha: 1))


var sunColorLight = Color(#colorLiteral(red: 1, green: 0.828841269, blue: 0.2179760635, alpha: 1))
var sunColorDark = Color(#colorLiteral(red: 0.9983506799, green: 0.6176056266, blue: 0.257910639, alpha: 1))

var colorCLoudsBack = Color( #colorLiteral(red: 0.7987181544, green: 0.868881166, blue: 0.9999942183, alpha: 1))

var moonColorLight = Color(#colorLiteral(red: 0.9122403264, green: 0.9421511292, blue: 1, alpha: 1) )
var moonColorDark = Color(#colorLiteral(red: 0.8799393773, green: 0.9148588777, blue: 0.9956316352, alpha: 1) )

var craterShadow = Color(#colorLiteral(red: 0.7516168952, green: 0.8218181729, blue: 0.9993935227, alpha: 1))
var craterColor = Color(#colorLiteral(red: 0.9053127766, green: 0.9302264452, blue: 0.9941141009, alpha: 1) )



struct ContentView: View {
    
    @State var nightMode: Bool = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .fill(LinearGradient(gradient: Gradient(colors:  !nightMode ?  [backgroundColorLight, backgroundColorDark]: [backgroundNightColorDark, backgroundNightColorLight] ), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 350, height: 150)
                  
                HStack {
                    Circle()
                            .fill(colorCLoudsBack)
                            .frame(width: 120, height:  120)
                            .position(x: 80, y: !nightMode ? 150 : 1000)
                       
                    
                    Circle()
                        .fill(colorCLoudsBack)
                        .frame(width: 150, height:  150)
                        .position(x: 80, y: !nightMode ? 150 : 1000)
                    
                    Circle()
                        .fill(colorCLoudsBack)
                        .frame(width: 120, height:  120)
                        .position(x: 80, y: !nightMode ? 150 : 1000)
                    
                    Circle()
                        .fill(colorCLoudsBack)
                        .frame(width: 170, height:  170)
                        .position(x: 70, y: !nightMode ? 90 : 1000)
                }
                .position(x: 200, y: 80)
                
                HStack {
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors:!nightMode ? [sunColorLight, sunColorDark] : [moonColorLight, moonColorDark]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(width: 130, height: 130)
                        .overlay(
                            ZStack {
                               
                                    Circle()
                                        .frame(width: 50, height: 50)
                                        .foregroundStyle(
                                            craterColor.shadow(.inner(color: craterShadow, radius: 10, x: 10, y: 20))
                                        )
                                        .position(x: 35 , y: 80)
                                        .opacity(nightMode ? 1 : 0)
                                    
                                    
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundStyle(
                                            craterColor.shadow(.inner(color: craterShadow, radius: 10, x: 10, y: 20))
                                        )
                                        .position(x: 60, y: 30)
                                        .opacity(nightMode ? 1 : 0)
                                    Circle()
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(
                                            craterColor.shadow(.inner(color: craterShadow, radius: 10, x: 10, y: 20))
                                        )
                                        .position(x: 90, y: 90)
                                        .opacity(nightMode ? 1 : 0)
                                
                            }
                             
                        )
                        .position(x: !nightMode ? 80 : 270, y: 75)
                    Spacer()
                }
                HStack {
                    Circle()
                            .fill(.white)
                            .frame(width: 80, height:  80)
   
                            .position(x: 80, y: !nightMode ? 150 : 1000)
                       
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 120, height:  120)
                        .position(x: 80, y: !nightMode ? 150 : 1000)
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 85, height:  85)
                        .position(x: 80, y: !nightMode ? 150 : 1000)
                    
                    Circle()
                        .fill(.white)
                        .frame(width: 130, height:  130)
                        .position(x: 70, y: !nightMode ? 90 : 1000)
                }
                .position(x: 200, y: 80)
                Image("airplane")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 170, height: 170)
                    .position(x: !nightMode ? 270 : -100, y: !nightMode ? 90 : -50)
                
                Image("stars")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .position(x: !nightMode ? 100 : 90, y: 75)
                    .scaleEffect(nightMode ? 1 : 100)
                
                
                
            }
            .frame(width: 350, height: 150)
            .mask(  RoundedRectangle(cornerRadius: 100)
            .frame(width: 350, height: 150))
            .onTapGesture {
                withAnimation(.easeInOut(duration: 1.0)){
                    nightMode.toggle()
                    print(nightMode.description)
                }
            }
        }
    }
}




struct NewView: View {
    
    @State var nightMode: Bool = false
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            ZStack {
                RoundedRectangle(cornerRadius: 100)
                    .fill(LinearGradient(gradient: Gradient(colors: [backgroundNightColorDark, backgroundNightColorLight]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 350, height: 150)
                  
         
                
                HStack {
                    Circle()
                        
                        .frame(width: 130, height: 130)
                        .position(x: 270, y: 75)
                }

                
            }
            .frame(width: 350, height: 150)
            .mask(  RoundedRectangle(cornerRadius: 100)
            .frame(width: 350, height: 150))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        NewView()
    }
}
