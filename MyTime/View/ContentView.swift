//
//  ContentView.swift
//  MyTime
//
//  Created by Mikhail on 2020-10-17.
//

import SwiftUI

struct ContentView: View {
    @State private var email :String = ""
    @State private var password :String = ""
    @State private var saveMyInfo : Bool = true
    var body: some View {
        NavigationView{
            VStack( spacing: 20){
                HStack{
                TextField("Email",text: $email)
                }
                HStack{
                TextField("Password",text: $password)
                }
                HStack{
                    Toggle(isOn: $saveMyInfo){
                        Text("Remember My Password?")
                    }
                }
                HStack(alignment: .center){
                    Button(action:{
                        print(#function,"log In Clicked")}){
                        Text("Log In")
                    }
                }
                //it is not working well
                NavigationLink(destination: SignUpView()){
                    Text("Sign up text")
                }
                HStack(alignment: .center){
                    Button(action:{
                        print(#function,"SignUp Clicked")}){
                        Text("Sign Up")
                        
                        //prderd backgrond color radious
                    }
                }

                HStack(alignment: .center){
                    Button(action:{
                        print(#function,"reset password Clicked")}){
                        Text("Forgot your password! Click here to reset password")
                    }
                }
                HStack{
                    Button(action:{
                        //create map
                        print("hi")
                    }){
                        //pressing the word map alows the user to surff over all the location provider demo
                        Text("Map")
                        
                    }
                }
            }//VStack
            .padding()
            .navigationBarTitle("MyTime")
        }//NavigationView
    }//body
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
