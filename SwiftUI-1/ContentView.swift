//
//  ContentView.swift
//  SwiftUI-1
//
//  Created by Farendza Muda on 28/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:20){
                Logo()
                FormBox()
            }
            .padding(.all,20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Logo : View {
    var body: some View{
        
        VStack{
            Image("Logo").resizable()
                    .frame(width: 80, height: 80)
                    .background(Color("MyColor"))
                    .foregroundColor(Color.white)
                .padding()
                .background(Color("MyColor"))
                .cornerRadius(20)
            
            Text("KisahKata").foregroundColor(Color.white)
        }
        
    }
}

struct FormBox: View{
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View{
        VStack(alignment:.leading){
            Text("Username").font(.callout).bold()
            TextField("Username...", text:$username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Password").font(.callout).bold()
            SecureField("Password...", text:$password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: {print("Hello Button")}){
                Text("Sign In")
                Spacer()
            }
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .foregroundColor(Color.white)
        }
        // ini tadi padding nya kurang . wkwkwkw
        .padding(.all, 30)
        .background(Color("MyColor"))
        .cornerRadius(10)
    }
}
