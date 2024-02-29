//
//  SideMenueView.swift
//  SideMenue
//
//  Created by mohamdan on 29/02/2024.
//

import SwiftUI

struct SideMenueView: View {
    @Binding var isShowing: Bool
    @Binding var selectedTab: Int
    @State private var selectedOption: SideMenueOptionModel?
    var body: some View {
        ZStack{
            if isShowing{
                Rectangle()
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {isShowing.toggle()}
                HStack{
                    VStack(alignment: .leading, spacing: 32){
                        SideMenueHeaderView()
                        VStack{
                            ForEach(SideMenueOptionModel.allCases){ option in
                                Button {
                                    selectedOption = option
                                    selectedTab = option.rawValue
                                    isShowing = false
                                } label: {
                                    SideMenueRowView(option: option, selectedOption: $selectedOption)
                                }

                            }
                        }
                        Spacer()
                    }
                    .padding()
                    .frame(width: 270, alignment: .leading)
                    .background(.white)
                    Spacer()
                }
                .transition(.move(edge: .leading))
            }
        }
        .animation(.easeInOut, value: isShowing)
    }
}

#Preview {
    SideMenueView(isShowing: .constant(true), selectedTab: .constant(0))
}
