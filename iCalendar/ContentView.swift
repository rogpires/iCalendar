//
//  ContentView.swift
//  iCalendar
//
//  Created by Rogerio Pires on 06/09/22.
//

import SwiftUI

struct ContentView: View {
    @State private var date = Date()
    var body: some View {
        ///UI
        VStack {
            DatePicker(
                "",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            .padding(10)
            
            ///quiting application
            Button(action: {
                NSApplication.shared.terminate(self)
            }) {
                Text("Quit  ⌘Q")
                    .frame(maxWidth: .infinity)
            }.frame(maxWidth: .infinity)
                .padding(1)
            
            Text("@rogeriocpires")
                .font(.system(size: 10))
                .padding(8)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
