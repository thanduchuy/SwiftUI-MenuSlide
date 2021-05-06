//
//  BottomView.swift
//  Weather
//
//  Created by than.duc.huy on 06/05/2021.
//

import SwiftUI

struct BottomView: View {
    let gradient = LinearGradient(gradient: Gradient(colors: [Color("lightPurple"), Color("darkPurple")]), startPoint: .top, endPoint: .bottom)
    let items = [Session(id: 1, time: "19:00", temperature: 19),
                 Session(id: 2, time: "20:00", temperature: 21),
                 Session(id: 3, time: "21:00", temperature: 18),
                 Session(id: 4, time: "22:00", temperature: 18),
                 Session(id: 5, time: "23:00", temperature: 15),
                 Session(id: 6, time: "24:00", temperature: 13)]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()

                RoundedRectangle(cornerRadius: 35)
                    .foregroundColor(Color("lightPurple"))
                    .frame(width: 80, height: 5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)

                Spacer()
            }

            HStack {
                Text("Today")
                    .foregroundColor(Color("darkPurple"))
                    .fontWeight(.semibold)

                Spacer()

                Text("Next 7 days")
                    .foregroundColor(Color("lightPurple"))
                    .font(.system(size: 14))
            }
            
            ListView(items: items, gradient: gradient)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(30)
        .animation(.easeInOut)
    }
}

struct ListView: View {
    var items: [Session]
    var gradient: LinearGradient
    @State var selectItem = 1
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(items, id: \.self) { item in
                    VStack(spacing: 10) {
                        Text(item.time)
                            .font(.system(size: 14, weight: .thin))
                        
                        Image(systemName: "cloud")
                        
                        HStack(alignment: .top, spacing: 0) {
                            Text("\(item.temperature)")
                                .font(.system(size: 14, weight: .semibold))
                            
                            Text("o")
                                .font(.system(size: 10, weight: .semibold))
                        }
                    }
                    .foregroundColor(selectItem == item.id ? Color.white : Color("gray"))
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color("gray"), lineWidth: 0.5)
                    )
                    .background (
                        selectItem == item.id ? AnyView(gradient) : AnyView(Color.white)
                    )
                    .cornerRadius(15)
                    .onTapGesture {
                        selectItem = item.id
                    }
                }
            }
        }
        .padding()
    }
}
