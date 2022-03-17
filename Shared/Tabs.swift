//
//  Tabs.swift
//  TabViewExample
//
//  Created by Alex Nagy on 17.03.2022.
//

import SwiftUI

class Tabs: ObservableObject {
    
    @Published var selection: Tab = .home
    
    init(initialSelection: Tab = .home) {
        self.selection = initialSelection
    }
}

enum Tab {
    case home, profile
}
