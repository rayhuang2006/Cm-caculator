//
//  ContentView.swift
//  Cm caculator
//  Version 1.0.1
//  Created by Ray Huang on 2023/1/1.
//

import SwiftUI

struct ContentView: View {
    @State private var soluteMass = ""
    @State private var soluteMolecularWeight = ""
    @State private var solventMass = ""
    
    var concentration: Double {
        guard
            let soluteMass = Double(soluteMass),
            let soluteMolecularWeight = Double(soluteMolecularWeight),
            let solventMass = Double(solventMass)
        
        else {
            return 0
        }
        
        return soluteMass / soluteMolecularWeight / solventMass
    }
    
    var body: some View {
        VStack {
            Spacer()
            TextField("溶質質量（公克）", text: $soluteMass)
                .keyboardType(.decimalPad)
                .padding(20)
            TextField("溶質分子量", text: $soluteMolecularWeight)
                .keyboardType(.decimalPad)
                .padding(20)
            TextField("溶劑質量（公斤）", text: $solventMass)
                .keyboardType(.decimalPad)
                .padding(20)
            Spacer()
            Text("重量莫耳濃度：\(concentration)")
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
