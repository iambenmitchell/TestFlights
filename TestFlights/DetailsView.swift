//
//  DetailsView.swift
//  TestFlights
//
//  Created by Ben Mitchell on 03/01/2020.
//  Copyright © 2020 Ben Mitchell. All rights reserved.
//

import SwiftUI

//struct DetailsView: View {
//    var body: some View {
//        VStack{
//                Text("Norton Security")
//                    .font(.title)
//                Image(systemName: "shield").resizable()
//                .frame(width: 64.0, height: 64.0)
//                Spacer()
//
//                Button(action: {
//                    print("Delete tapped!")
//                }) {
//                        Text("Open in Test Flight")
//                            .fontWeight(.semibold)
//                            .font(.title)
//                            .multilineTextAlignment(.center)
//
//                    }
//                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .padding()
//                    .cornerRadius(40)
//                }
//            }
//
//        }




//THIS FILE DOES NOT ACTUALLY DO ANYTHING AND IS ONLY USED FOR RENDERING A DEMO







struct DetailsView: View {
var body: some View {
    VStack {
        Text("Norton Security")
            .font(.largeTitle)
            .multilineTextAlignment(.center)
                Spacer()
        Button(action: {
            
        }) {
            Text("Button")
        }
        Spacer()
    }
    }
}
struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
