//
//  ContentView.swift
//  BasicAuthencationPartOne
//
//  Created by M A Hossan on 15/04/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: SignInViewModel

    var body: some View {
            HStack {
                Spacer()

                VStack {
                    VStack(alignment: .leading) {
                        Text("Email")
                        TextField("Email", text: $viewModel.email)
                            .autocapitalization(.none)
                            .keyboardType(.emailAddress)
                            .disableAutocorrection(true)
                        Text("Password")
                        SecureField("Password", text: $viewModel.password)
                    }
                    .textFieldStyle(.roundedBorder)
                    .disabled(viewModel.isSigningIn)

                    if viewModel.isSigningIn {
                        ProgressView()
                            .progressViewStyle(.circular)
                    } else {
                        Button("Sign In") {
                            viewModel.signIn()
                        }
                    }

                    Spacer()
                }
                .padding()
                .frame(maxWidth: 400.0)

                Spacer()
            }
            .alert(isPresented: $viewModel.hasError) {
                Alert(
                    title: Text("Sign In Failed"),
                    message: Text("The email/password combination is invalid.")
                )
            }
        }

    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: SignInViewModel())
    }
}
