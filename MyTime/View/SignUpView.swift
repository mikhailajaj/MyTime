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
    @State private var timeAvailabilityList = [0,4,8,12,16]
    @State private var timeAvailability:Int = 0
    @State private var AvailableFrom:Date = Date()
    @State private var offOnDate:Date = Date()
    var body: some View {
        NavigationView{
            
            VStack(){
                Section{
                HStack(alignment: .center){
                    Text("Sign Up").font(.title)
                }
                }
                Section{
                HStack{
                TextField("Full name",text: $fullName)
                }
                }
                Section{
                HStack{
                TextField("Phone#",text: $phone)
                }
                }
                Section{
                HStack{
                TextField("Address",text: $address)
                }
                }
                Section{
                HStack{
                TextField("Email",text: $email)
                }
                }
                Section{
                HStack{
                TextField("Password",text: $password)
                }
                }
                Section(header: Text("Hours Availability")){
                HStack{
                    Picker(selection:$timeAvailability,label:Text("Hours Availability")){
                        ForEach (0 ..< timeAvailabilityList.count){
                            item in Text("\( timeAvailabilityList[item])")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                }
                DatePicker("You are available from", selection: $AvailableFrom, displayedComponents: .date)
                //DatePicker("You are off on", selection: $offOnDate, displayedComponents: .date)
                HStack{
                    Toggle(isOn: $saveMyInfo){
                        Text("remember me?")
                    }
                }
                HStack(alignment: .center){
                    NavigationLink(destination: Dashboard()){
                        Text("Sign Up")
                    }
                }
                //Spacer()
//
                
            }//VStack
            .padding()
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading:
                                    HStack{
                                        //we can add some function when the user click the logo
                                    Image("Logo").resizable()
                    .aspectRatio(contentMode: .fit)
                                        .frame(width: 70, height: 70, alignment: .center)
                                    Text("MyTime").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    })
            }
        }//NavigationView
    
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
