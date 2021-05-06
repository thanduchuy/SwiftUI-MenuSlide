//
//  MenuView.swift
//  Weather
//
//  Created by than.duc.huy on 06/05/2021.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack {
            HStack(spacing: 24) {
                Spacer()
                Text("Hải Tú")
                    .foregroundColor(Color("gray"))
                    .font(.system(size: 24, weight: .black))
                
                Image("haitu")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipShape(Circle())
            }
            
            Spacer()
            
            VStack(spacing: 20) {
                HStack(spacing: 20) {
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("Việt Nam")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color("darkPurple"))
                        
                        Text("Đà Nẵng")
                            .font(.system(size: 18, weight: .thin))
                    }
                    
                    Image(systemName: "location.circle")
                        .font(.system(size: 20))
                }
                .foregroundColor(Color("lightPurple"))
                
                HStack(spacing: 20) {
                    Spacer()
                    
                    VStack(alignment: .trailing) {
                        Text("Việt Nam")
                            .font(.system(size: 20, weight: .bold))
                            .foregroundColor(Color("darkPurple"))
                        
                        Text("Quảng Nam")
                            .font(.system(size: 18, weight: .thin))
                    }
                    
                    Image(systemName: "location.circle")
                        .font(.system(size: 20))
                }
                .foregroundColor(Color("lightPurple"))
                
                HStack {
                    Spacer()
                    
                    HStack(spacing: 20) {
                        Text("Thêm thành phố")
                            .font(.system(size: 20, weight: .bold))
                        
                        Image(systemName: "plus.circle")
                            .font(.system(size: 20))
                    }
                    .foregroundColor(Color("gray"))
                }
            }
            
            Spacer()
            HStack {
                Spacer()
                
                VStack(spacing: 20) {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack(spacing: 20) {
                            Text("Settings")
                            
                            Image(systemName: "gearshape")
                                .font(.system(size: 20))
                        }
                        .foregroundColor(Color("gray"))
                    })
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        HStack(spacing: 20) {
                            Text("Sign out")
                            
                            Image(systemName: "arrowshape.zigzag.forward")
                                .font(.system(size: 20))
                        }
                    })
                }
            }
            .foregroundColor(Color("pink"))
        }
        .padding()
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
