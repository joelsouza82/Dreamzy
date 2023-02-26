//
//  CoordinatorView.swift
//  Dreamzy
//
//  Created by Joel de Almeida Souza on 25/02/23.
//

import SwiftUI

struct CoordinatorView: View {
    @StateObject private var coordinator = Coordinator()
    var body: some View {
        NavigationView(content: co)
    }
}

struct CoordinatorView_Previews: PreviewProvider {
    static var previews: some View {
        CoordinatorView()
    }
}
