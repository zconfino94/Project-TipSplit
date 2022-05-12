//
//  ContentView.swift
//  Project 1 SUI
//
//  Created by Zachary Confino on 11/6/19.
//  Copyright © 2019 Zachary Confino. All rights reserved.
//

import SwiftUI
//Tells Swift we want to use the framework from SwiftUI
//Also SwiftUI auto places components in the Safe Area

struct ContentView: View {
    @State private var checkAmount = ""
    @State private var numberOfPeople = ""
    @State private var tipPercengage = 2
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var totalPerPerson: Double {
        let peopleNumber = Double(numberOfPeople) ?? 1
        let tipSelection = Double(tipPercentages[tipPercengage])
        let orderAmount = Double(checkAmount) ?? 0

        let tipValue = orderAmount / 100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal / peopleNumber
        
        return amountPerPerson
    }
    
    var totalTip: Double {
        let tipSelection = Double(tipPercentages[tipPercengage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tipValue = orderAmount / 100 * tipSelection
        
       return tipValue
    }
    
    var checkTotal: Double {
        let tipSelection = Double(tipPercentages[tipPercengage])
        let orderAmount = Double(checkAmount) ?? 0
        
        let tipValue = orderAmount / 100 * tipSelection
        let total = orderAmount + tipValue
        
        return total
    }
    
    var body: some View {
        NavigationView {
        Form {
            Section {
                TextField("Check Total", text: $checkAmount)
                    .keyboardType(.decimalPad)
                    
                //"Amount" is the placeholder text, the text entered is then read and added by "$checkAmount"
                //The $ allows you to reload the UI each time the variable is changed
                
                TextField("Number of People", text: $numberOfPeople)
                    .keyboardType(.decimalPad)
            }
            
            Section(header: Text("How much tip would you like to leave?")) {
                Picker("Tip percengage", selection: $tipPercengage) {
                    ForEach(0 ..< tipPercentages.count) {
                        Text("\(self.tipPercentages[$0])%")
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            Section(header: Text("Tip total")) {
                Text("$\(totalTip, specifier: "%.2f")")
            }
            
            Section(header: Text("Grand total")) {
                Text("$\(checkTotal, specifier: "%.2f")")
            }
            
            Section(header: Text("Total amount per person")) {
                Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }
        .navigationBarTitle("TipSplit")
        .navigationBarItems(trailing: Text("$\(checkTotal, specifier: "%.2f")"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    //Allows Xcode to show a preview of your UI design alongside your code in the Canvas element.
    //Doesnt affect the app itself, just the way the Canvas previews the UI elements
    static var previews: some View {
        ContentView()
    }
}
