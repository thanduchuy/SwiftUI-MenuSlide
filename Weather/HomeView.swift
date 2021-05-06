//
//  HomeView.swift
//  Weather
//
//  Created by than.duc.huy on 06/05/2021.
//

import SwiftUI

struct HomeView: View {
    var date = Date()
    let gradient = LinearGradient(gradient: Gradient(colors: [Color("lightPurple"), Color("darkPurple")]), startPoint: .top, endPoint: .bottom)
    @State var activeMenu = false
    
    var body: some View {
        ZStack {
            MenuView()
            
            VStack {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Weather App")
                            .font(.system(size: 28, weight: .bold))
                        
                        Text("\(date.getFormattedDate(format: "EEEE, MMM d, yyyy"))")
                            .font(.system(size: 20, weight: .thin))
                    }
                    .padding(.top, 32)
                    
                    Spacer()
                    
                    Button(action: {
                        activeMenu.toggle()
                    }, label: {
                        Image(systemName: activeMenu ? "text.alignright" : "text.alignleft")
                            .font(.system(size: 30))
                    })
                }
                .foregroundColor(.white)
                .padding()
                
                Image("moon")
                    .padding(.vertical, 30)
                
                HStack(alignment: .lastTextBaseline) {
                    HStack {
                        Image(systemName: "chevron.up")
                            .font(.system(size: 10))
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("22")
                                .font(.system(size: 18, weight: .bold))
                            Text("o")
                                .font(.system(size: 10, weight: .bold))
                        }
                    }
                    
                    HStack(alignment: .top, spacing: 0) {
                        Text("19")
                            .font(.system(size: 52, weight: .black))
                        Text("o")
                            .font(.system(size: 24, weight: .black))
                    }
                    .padding(.horizontal, 30)
                    
                    HStack {
                        Image(systemName: "chevron.down")
                            .font(.system(size: 10))
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("18")
                                .font(.system(size: 18, weight: .bold))
                            Text("o")
                                .font(.system(size: 10, weight: .bold))
                        }
                    }
                }
                .foregroundColor(.white)
                
                Spacer()
                
                BottomView()
            }
            .background(gradient)
            .cornerRadius(30)
            .shadow(color: Color("lightPurple").opacity(0.8), radius: 20)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            .offset(x: activeMenu ? -UIScreen.main.bounds.width * 0.7 : 0)
            .onTapGesture {
                activeMenu.toggle()
            }
        }
        .animation(.default)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension Date {
    func getFormattedDate(format: String) -> String {
        let dateformat = DateFormatter()
        dateformat.dateFormat = format
        return dateformat.string(from: self)
    }
}
