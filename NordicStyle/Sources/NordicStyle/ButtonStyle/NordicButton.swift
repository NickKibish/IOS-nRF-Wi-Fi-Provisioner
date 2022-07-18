//
//  File.swift
//  
//
//  Created by Nick Kibysh on 30/06/2022.
//

import SwiftUI

@available(iOS 15.0, *)
// button style with nordicBlue color and rounded corners
public struct NordicButtonStyle: ButtonStyle {
    
    public init() { }
    
    public func makeBody(configuration: Configuration) -> some View {
        #if os(iOS)
        configuration.label
            .padding()
            .frame(maxWidth: .infinity)
            .background(.nordicLake)
            .foregroundColor(configuration.isPressed ? .init(white: 0.95) : .white)
            .cornerRadius(4)
            .shadow(radius: 2)
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        #else
        configuration.label.padding()
        #endif
    }
}