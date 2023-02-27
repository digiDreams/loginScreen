//
//  ContentView.swift
//  loginScreen
//
//  Created by Apprenant 16 on 27/02/2023.
//

import SwiftUI
import RegexBuilder

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


let inPutPassword = OneOrMore(.word)
let checkFieldOne = Regex { // ^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$
    Capture {
        ZeroOrMore {
            inPutPassword
            "."
        }
        inPutPassword
    }
    "@"
    Capture {
        inPutPassword
        OneOrMore {
            "."
            inPutPassword
        }
    }
}

let text = "Email de test: zebu.zeplusoif@test.com"
if let match = text.firstMatch(of: checkFieldOne) {
    let (wholeMatch, name, domain) = match.output
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
