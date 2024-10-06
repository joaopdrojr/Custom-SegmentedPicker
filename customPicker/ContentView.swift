//
//  ContentView.swift
//  customPicker
//
//  Created by Joao Pedro Junior on 06/10/24.
// 

import SwiftUI

struct ContentView: View {
    
    // Variavel de estado atual da aba (Saudação ou Despedida)
    @State var currentTab = "Saudação"
    // Animação
    @Namespace var animation
    
    var body: some View {
        VStack {
            HStack{
                // MARK: - Botão de Saudação
                Text("Saudação")
                    .fontWeight(.bold)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 25)
                    .background(
                        ZStack{
                            // Muda a cor do fundo quando "Saudação" estiver selecionada
                            if currentTab == "Saudação"{
                                Color(.green)
                                // Arredonda os cantos do retângulo
                                    .cornerRadius(10)
                                // Cria animação entre as Tabs
                                    .matchedGeometryEffect(id: "TAB", in: animation)
                            }
                        }
                    )
                // Muda a cor do texto de acordo com a Tab selecionada
                    .foregroundColor(currentTab == "Saudação" ? .white : .black)
                //                MARK: - Ao tocar no botão
                    .onTapGesture {
                        // A animação é feita
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)){
                            // Muda o estado pra "Saudação"
                            currentTab = "Saudação"
                        }
                    }
                
                // MARK: - Botão de Despedida
                Text("Despedida")
                    .fontWeight(.bold)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 25)
                    .background(
                        ZStack{
                            if currentTab == "Despedida"{
                                Color(.green)
                                    .cornerRadius(10)
                                    .matchedGeometryEffect(id: "TAB", in: animation)
                            }
                        }
                    )
                    .foregroundColor(currentTab == "Despedida" ? .white : .black)
                    .onTapGesture {
                        withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.6)){
                            currentTab = "Despedida"
                        }
                    }
            }
            .padding(.vertical, 7)
            .padding(.horizontal, 10)
            .background(Color.black.opacity(0.3))
            .cornerRadius(10)
            
            // MARK: - Texto
            //            Mostra "Olá" ou "Até logo" de acordo com a Tab selecionada
            Text(currentTab == "Saudação" ? "Olá!" : "Até logo")
                .font(.largeTitle)
                .padding(.top, 50)
        }
        // Faz toda a view ocupar a tela
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        // Espaço da Dinamic Island
        .padding(.top)
    }
}

#Preview {
    ContentView()
}
