//
//  StarsView.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import SwiftUI

struct StarsView: View {

    var rating: Int

    var body: some View {
        ZStack {
            HStack {
                ForEach(1..<6) { index in
                    Image(systemName: "star.fill")
                        .font(.system(size: 14))
                        .foregroundColor(rating >= index ? Color.yellow : Color.gray)
                }
            }
        }
    }
}

#Preview {
    StarsView(rating: 4)
}
