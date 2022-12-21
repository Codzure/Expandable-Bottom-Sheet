//
//  ContentView.swift
//  BottomSheet
//
//  Created by Leonard Mutugi on 22/12/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var presentSheet = false
    var body: some View {
        VStack {
            Text("Expandable BottomSheet")
                .font(.headline)
                .foregroundColor(.primary)
            Button("Show BottomSheet") {
                presentSheet.toggle()
            }
            .buttonStyle(.borderedProminent)
            .sheet(isPresented: $presentSheet){
                Text("This is a Bottom Sheet")
                    .presentationDetents([.medium, .large])
            }
        }
        .padding()
    }
}

//.presentationDetents([.medium, .large]) or .fraction(0.25) or .fraction(0.50) or .height(100)

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
