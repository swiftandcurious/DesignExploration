//
//  ProfileView.swift
//  DesignExploration
//
//  Created by swiftandcurious on 8/1/25.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var isExpanded: Bool = false
    @Namespace private var namespace
    
    var body: some View {
        ZStack {
            Image("1016")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            VStack {
                GlassEffectContainer(spacing: 80.0) {
                    HStack(spacing: 80.0) {
                        Image(systemName: "scribble.variable")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 36))
                            .glassEffect()
                            .glassEffectID("scribble", in: namespace)
                        
                        
                        if isExpanded {
                            Image(systemName: "eraser.fill")
                                .frame(width: 80.0, height: 80.0)
                                .font(.system(size: 36))
                                .glassEffect()
                                .glassEffectID("eraser", in: namespace)
                        }
                    }
                }
                .padding(.bottom, 40)
                
                
                Button("Toggle") {
                    withAnimation(.easeInOut(duration: 0.25)) {
                        isExpanded.toggle()
                    }
                }
                .buttonStyle(.glass)
            }
        }
    }
}

#Preview {
    ProfileView()
}
