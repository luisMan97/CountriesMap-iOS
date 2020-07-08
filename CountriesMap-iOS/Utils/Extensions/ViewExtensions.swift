//
//  ViewExtensions.swift
//  CountriesMap-iOS
//
//  Created by Jorge Luis Rivera Ladino on 7/07/20.
//  Copyright © 2020 Jorge Luis Rivera Ladino. All rights reserved.
//

import SwiftUI

extension View {
    
    func resignKeyboardOnDragGesture() -> some View {
        return modifier(ResignKeyboardOnDragGesture())
    }
    
    /// Navigate to a new view.
    /// - Parameters:
    ///   - view: View to navigate to.
    ///   - binding: Only navigates when this condition is `true`.
    func navigate<SomeView: View>(to view: SomeView, when binding: Binding<Bool>) -> some View {
        modifier(NavigateModifier(destination: view, binding: binding))
    }
    
}
