//
//  AllAccounts.swift
//  PasswordKeeper
//
//  Created by Dana Alenezi on 4/13/20.
//  Copyright © 2020 Dana Alenezi. All rights reserved.
//

import SwiftUI

struct SaveAccount: View {
    
    @State var type: String = ""
    @State var Username: String = ""
    @State var Password: String = ""
    
    var body: some View {
        
        VStack(alignment: .leading){
        
            
            HStack{
                Text("Password Keeper").foregroundColor(.blue)
                .font(.largeTitle)
                Image(systemName: "lock.shield")
                .resizable()
                .foregroundColor(.blue)
                .frame(width: 50, height: 50)
                
            }
            HStack {
                
                Image(systemName: "pencil.circle").foregroundColor(.blue)
                Text("Account Type :").foregroundColor(.blue)
                TextField("",text: $type)
                
            }.padding()
            
            HStack {
                
                Image(systemName: "person.circle").foregroundColor(.blue)
                Text("Username :").foregroundColor(.blue)
                TextField("" , text: $Username)
                
                
            }.padding()
            
            HStack {
                
                Image(systemName: "lock.circle").foregroundColor(.blue)
                Text("Password :").foregroundColor(.blue)
                TextField(" ", text: $Password)
                
                
            }.padding()
            Button(action: {
                let account = Account (AccType: self.type, UserName: self.Username, Password: self.Password)
                
                Networking.createItem(account, inCollection: "accounts"){
                    print("Done")
                }
                
                }
            
                ){
                    Text("Save").bold()
                } .padding()
               .foregroundColor(.white)
               .background(Color.blue)
              
            
            
            
            
            
            
        }.padding()
    }
}
struct SaveAccount_Previews: PreviewProvider {
    static var previews: some View {
        SaveAccount()
    }
}
