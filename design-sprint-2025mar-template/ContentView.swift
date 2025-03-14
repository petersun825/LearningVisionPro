//
//  ContentView.swift
//  design-sprint-2025mar-template
//
//  Created by jenny on 3/6/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    var body: some View {
        
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)
//handview
            Text("Hello, medVR!").onAppear {
                    Task {
                        await openImmersiveSpace(id: "HandView")
                    }
                }
            //add gestures
            
//            ToggleImmersiveSpaceButton()
        }
        .padding()
   }
}

#Preview(windowStyle: .automatic) {
    ContentView()
        .environment(AppModel())
}
