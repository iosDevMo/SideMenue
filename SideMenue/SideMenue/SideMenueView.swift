//
//  SideMenueView.swift
//  SideMenue
//
//  Created by mohamdan on 29/02/2024.
//

import SwiftUI

struct SideMenueView: View {
    @Binding var isShowing: Bool
    var body: some View {
        ZStack{
            if isShowing{
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {isShowing.toggle()}
            }
        }
    }
}

#Preview {
    SideMenueView(isShowing: .constant(true))
}
