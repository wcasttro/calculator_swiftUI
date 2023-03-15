//
//  ContentView.swift
//  calculator_swiftUI
//
//  Created by werthen castro on 14/03/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var previuos = 0
    @State var result = 0;
    @State var operation = 0
    @State var previousOperation  = 0
    
    func calculate(){
        if previousOperation == 1{
            result = previuos + result
            previousOperation = 0
        }
        previuos = result
    }
    
    func process(digit: Int)
    {
        
        if(operation > 0){
            result = 0;
            previousOperation = operation
            operation = -1
        }
        result = (result * 10) + digit;
    }
    var body: some View {
        // VStack deixar os itens na vertical (uma Collumn)
        // spacing remove o espaço entre seus filhos
        VStack( alignment: .trailing, spacing: 0 ){
            Text("\(String(result).count)").foregroundColor(Color.red)
            Spacer()
            Text(String(result))
                .padding()
                .lineLimit(1)
                .font(.system(size: CGFloat(80 / Int((Double(String(result).count + 10)/8.0)))))
                .foregroundColor(Color.white)
                .frame(maxWidth: .infinity)
                .fixedSize(horizontal: true, vertical: false)
            HStack{ // HStack deixa os itens na horizontal (uma Row)
                Button("AC")   {
                    result = 0;
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
                    process(digit: 7)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("8"){
                    process(digit: 8)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("9"){
                    process(digit: 9)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("X"){
                    
                }.padding(.vertical, 40) // colocando padiding em um elemento da HStack todos elementos ficam com esses valores
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            
            HStack{
                Button("4"){
                    process(digit: 4)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("5"){
                    process(digit: 5)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("6"){
                    process(digit: 6)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("-"){
                    
                }.padding(.vertical, 40)
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
            }.foregroundColor(Color.white)
            HStack{
                Button("1"){
                    process(digit: 1)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("2"){
                    process(digit: 2)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("3"){
                    process(digit: 3)
                }.padding()
                    .frame(maxWidth: .infinity)
                Button("+"){
                    calculate()
                    operation = 1
                    
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
                        calculate()
                        previousOperation = 999
                        operation = 999
                        
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
