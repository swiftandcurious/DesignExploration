//
//  HomeView.swift
//  DesignExploration
//
//  Created by swiftandcurious on 8/1/25.
//

import SwiftUI

struct HomeView: View {
    @Namespace private var namespace
    let symbolSet: [String] = ["cloud.bolt.rain.fill", "sun.rain.fill", "moon.stars.fill", "moon.fill"]
    
    var body: some View {
        ZStack {
                Image("1016")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 40.0) {
                GlassEffectContainer(spacing: 40.0) {
                    HStack(spacing: 40.0) {
                        Image(systemName: "scribble.variable")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 36))
                            .glassEffect()
                            .offset(x: 20.0, y: 0.0)
                        Image(systemName: "eraser.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 36))
                            .glassEffect()
                            .offset(x: -20.0, y: 0.0)
                    }
                }
                
                GlassEffectContainer(spacing: 20.0) {
                    HStack(spacing: 20.0) {
                        ForEach(symbolSet.indices, id: \.self) { item in
                            Image(systemName: symbolSet[item])
                                .frame(width: 80.0, height: 80.0)
                                .font(.system(size: 36))
                                .glassEffect()
                                .glassEffectUnion(id: item < 2 ? "1" : "2", namespace: namespace)
                        }
                    }
                }
            }
            
        }
    }
}

#Preview {
    HomeView()
}
