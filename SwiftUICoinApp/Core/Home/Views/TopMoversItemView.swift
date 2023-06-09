//
//  TopMoversItemView.swift
//  SwiftUICoinApp
//
//  Created by Jose Martinez on 3/18/23.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            // image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            // coin info
            HStack(spacing: 2) {
                // BTC text
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                // price
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            // coin percent% change
            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        }
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
