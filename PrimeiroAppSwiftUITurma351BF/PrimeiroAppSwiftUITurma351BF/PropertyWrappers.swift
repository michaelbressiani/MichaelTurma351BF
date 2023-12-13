//
//  PropertyWrappers.swift
//  PrimeiroAppSwiftUITurma351BF
//
//  Created by Michael Bressiani on 12/12/23.
//

import SwiftUI

struct PropertyWrappers: View {
    
    @State var novaMensagem: Bool = false
    @State var text: String = ""
    @State var ativado: Bool = false
    
    var body: some View {
        ZStack {
            Color(ativado ? .orange : .green)
            VStack(spacing: 50.0) {
                VStack {
                    Text(novaMensagem ? "Olá mundo" : "Olá velho mundo")
                        .font(.system(size: 26, weight: .bold))
                    Button("Alterar Mensagem") {
                        novaMensagem.toggle()
                    }
                    .padding()
                    .background(novaMensagem ? Color.blue : Color.red)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                }
                VStack {
                    Text(text.isEmpty ? "Digite um texto" : text)
                        .font(.title.bold())
                    TextField("Digite um texto", text: $text)
                        .textFieldStyle(.roundedBorder)
                }
                Toggle("", isOn: $ativado)
                    .labelsHidden()
            }
            .padding()
        }
        .ignoresSafeArea()
    }
}

#Preview {
    PropertyWrappers()
}
