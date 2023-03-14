//
//  ContentView.swift
//  calculator_swiftUI
//
//  Created by werthen castro on 14/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var result = "0";
    
    var body: some View {
        // VStack deixar os itens na vertical (uma Collumn)
        // spacing remove o espaço entre seus filhos
        VStack( alignment: .trailing, spacing: 0 ){
            Text("\(result.count)").foregroundColor(Color.red)
            Spacer()
            Text(result)
                .padding()
                .lineLimit(1)
                .font(.system(size: CGFloat(80 / Int((Double(result.count + 10)/10.0)))))
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .fixedSize(horizontal: true, vertical: false)
            HStack{ // HStack deixa os itens na horizontal (uma Row)
                Button("AC")   {
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("+/-"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("%"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("/"){
                    
                }.padding(.vertical, 40) // colocando padiding em um elemento da HStack todos elementos ficam com esses valores
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            HStack{ // HStack deixa os itens na horizontal (uma Row)
                Button("7")   {
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("8"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("9"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("X"){
                    
                }.padding(.vertical, 40) // colocando padiding em um elemento da HStack todos elementos ficam com esses valores
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            
            HStack{
                Button("4"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("5"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("6"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("-"){
                    
                }.padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            HStack{
                Button("1"){
                    result += "1"
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("2"){
                    result += "2"
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("3"){
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("+"){
                    
                }.padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            GeometryReader{ // Controla a gemetria (tamanhos da tela)
                geometry in
                HStack{
                    Button("0"){
                        
                    }.padding()
                        .frame(minWidth: geometry.size.width/2)
                    Button(","){
                        
                    }.padding()
                        .frame(maxWidth: .infinity)
                    
                    Button("="){
                        
                    }.padding(.vertical, 40)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                }.foregroundColor(Color.white)
                
            }.frame(maxHeight: 92)
            
        }.frame(maxWidth: .infinity, maxHeight: .infinity )
            .background(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
