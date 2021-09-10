//
//  SideMenu.swift
//  SideMenu
//
//  Created by Michele Manniello on 10/09/21.
//

import SwiftUI

struct SideMenu: View {
    @Binding var showMenu : Bool
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 14) {
                Image("pic")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65, height: 65)
                    .clipShape(Circle())
                Text("Michele")
                    .font(.title2.bold())
                Text("@Michele")
                    .font(.callout)
                HStack(spacing: 12){
                    Button {
                        
                    } label: {
                        Label {
                            Text("Followers")
                        } icon: {
                            Text("189")
                                .fontWeight(.bold)
                        }
                    }
                    
                    Button {
                        
                    } label: {
                        Label {
                            Text("Following")
                        } icon: {
                            Text("1.2M")
                                .fontWeight(.bold)
                        }
                    }

                }
                .foregroundColor(.primary)
            }
            .padding(.horizontal)
            .padding(.leading)
            .padding(.bottom)
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    VStack(alignment: .leading, spacing: 45) {
    //                    Tab Buttons
                        TabButton(title: "Profile", image: "Profile")
                        TabButton(title: "Lists", image: "Lists")
                        TabButton(title: "Topics", image: "Topics")
                        TabButton(title: "Bookmarks", image: "Bookmarks")
                        TabButton(title: "Moments", image: "Moments")
                        TabButton(title: "Purchases", image: "Purchases")
                        TabButton(title: "Monetization", image: "Monetization")
                    }
                    .padding()
                    .padding(.leading)
                    .padding(.top,45)
                    Divider()
                    TabButton(title: "Twitter Ads", image: "Ads")
                        .padding()
                        .padding(.leading)
                    Divider()
                    VStack(alignment: .leading, spacing: 30) {
                        Button {
                            
                        } label: {
                            Text("Settings And Privacy")
                        }
                        Button {
                            
                        } label: {
                            Text("Help Center")
                        }
                    }
                    .padding()
                    .padding(.leading)
                    .padding(.bottom)
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .foregroundColor(.primary)
                }
            }
            VStack(spacing: 0){
                Divider()
                HStack{
                    Button {
                        
                    } label: {
                        Image("Light")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }

                    Spacer()
                    Button {
                        
                    } label: {
                        Image("QR")
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 22, height: 22)
                    }

                    
                }
                .padding([.horizontal,.top],15)
                .foregroundColor(.primary)
            }
        }
        .padding(.top)
        .frame(maxWidth: .infinity,alignment: .leading)
//        Max width..
        .frame(width: getRect().width - 90)
        .frame(maxHeight: .infinity)
        .background(
            Color.primary
                .opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)
        )
        .frame(maxWidth: .infinity,alignment: .leading)
    }
    @ViewBuilder
    func TabButton(title : String, image : String) -> some View{
        
//        For navigation..
//        Simple replace button with Navigation Links....
        NavigationLink {
            Text("\(title) View")
                .navigationTitle(title)
        } label: {
            HStack(spacing: 14){
                Image(image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 22, height: 22)
                Text(title)
            }
            .foregroundColor(.primary)
            .frame(maxWidth: .infinity,alignment: .leading)
        }
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// Extending View to get Screen Rect...
extension View{
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
