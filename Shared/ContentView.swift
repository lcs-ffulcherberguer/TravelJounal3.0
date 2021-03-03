//
//  ContentView.swift
//  Shared
//
//  Created by Fulcherberguer, Fernanda on 2021-03-03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    var body: some View {
        
        VStack{
            
            
            Spacer()
            
            Text("Home")
                
            Spacer()
            
        }
        
    }
}

struct Map : View {
    var body: some View {
        
        VStack{
            
            
            Spacer()
            
            Text("Map")
                
            Spacer()
            
        }
        
    }
}

struct Journal : View {
    var body: some View {
        
        VStack{
            
            
            
            Spacer()
            
            Text("Journal")
                
            Spacer()
            
        }
        
    }
}

//Creating tab view

struct MainView : View {
    
    
    @State var tab = "Explore"
    var body: some View {
        
        VStack(spacing: 0) {
            
            Spacer()
            
            HStack(spacing:0) {
                
                tabButton(title: "Home", tab: $tab)
                
                Spacer(minLength: 0)
                
                tabButton(title: "Map", tab: $tab)
                
                Spacer(minLength: 0)
                
                tabButton(title: "Journal", tab: $tab)
                
                
                
            }
            .padding(.top)
            //for smaller size Iphones
            .padding(.bottom, UIApplication.shared.windows.first!.safeAreaInsets.bottom == 0 ? 15 : UIApplication.shared.windows.first!.safeAreaInsets.bottom)
            
        }
       
        .edgesIgnoringSafeArea(.all)
        .background(Color("bg").edgesIgnoringSafeArea(.all))
    }
    
}


//Tab Buttons

struct tabButton : View {
    
    var title : String
    @Binding var tab : String
    
    var body: some View {
    
    Button(action: {tab = title}){
        
        Image(title)
            .renderingMode(.original)
            .foregroundColor(tab == title ? .white : .gray)
            .padding(.vertical,10)
            .padding(.horizontal)
            .background(Color("Color").opacity(tab == title ? 1 : 0))
            .clipShape(Capsule())
        
       }
    
    }
   
}

