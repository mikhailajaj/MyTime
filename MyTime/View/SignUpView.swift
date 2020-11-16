//
//  SignUpView.swift
//  MyTime
//
//  Created by Mikhail on 2020-11-15.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullName :String = ""
    @State private var phone :String = ""
    @State private var address :String = ""
    @State private var email :String = ""
    @State private var password :String = ""
    @State private var saveMyInfo : Bool = true
    var body: some View {
        NavigationView{
            VStack( spacing: 20){
                HStack(alignment: .center){
                    Text("Sign Up").font(.title)
                }
                HStack{
                TextField("Full name",text: $fullName)
                }
                HStack{
                TextField("Phone#",text: $phone)
                }
                HStack{
                TextField("Address",text: $address)
                }
                HStack{
                TextField("Email",text: $email)
                }
                HStack{
                TextField("Password",text: $password)
                }
                HStack{
                    Toggle(isOn: $saveMyInfo){
                        Text("remember me?")
                    }
                }
                HStack(alignment: .center){
                    NavigationLink(destination: SignUpView()){
                        Text("Sign Up")
                    }
//                    Button(action:{
//
//                        print(#function,"SignUp Clicked")
//
//                    }){
//
//                        //prderd backgrond color radious
//                    }
                }
            }//VStack
            .padding()
            .navigationBarTitle("MyTime")
        }//NavigationView
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
