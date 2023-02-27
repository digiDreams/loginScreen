//
//  ContentView.swift
//  loginScreen
//
//  Created by Apprenant 16 on 27/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var mail = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            TextField("E-mail:", text: $mail)
            TextField("Mot de passe:", text: $password )
            // print message
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
