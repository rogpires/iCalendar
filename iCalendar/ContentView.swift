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
        ///UII
        VStack {
            DatePicker(
                "",
                selection: $date,
                displayedComponents: [.date]
            )
            .datePickerStyle(GraphicalDatePickerStyle())
            Spacer()
            
            ///quit application
            Button(action: {
                NSApplication.shared.terminate(self)
            }) {
                Text("Quit  ⌘Q")
                    .frame(maxWidth: .infinity)
            }.frame(maxWidth: .infinity)
                .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
