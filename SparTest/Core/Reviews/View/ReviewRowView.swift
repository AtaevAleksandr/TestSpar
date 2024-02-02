//
//  ReviewRowView.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import SwiftUI

struct ReviewRowView: View {

    let review: ReviewModel

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(review.name)
                .font(.system(size: 14, weight: .bold))
                .foregroundColor(.black)

            Text(review.date)
                .font(.system(size: 14))
                .foregroundColor(.gray)

            StarsView(rating: review.rateValue)

            Text(review.reviewText)
                .font(.system(size: 14))
                .multilineTextAlignment(.leading)
                .foregroundColor(.black)
        }
        .padding()
        .background(Color.white)
        .clipShape(.rect(cornerRadius: 16))
        .shadow(color: .primary.opacity(0.2), radius: 5)
    }
}

#Preview {
    ReviewRowView(review: ReviewModel(name: "Александр В.",
                                      date: "7 мая, 2021",
                                      rateValue: 4,
                                      reviewText: "Хороший чай, мне очень понравился! \nХочу, чтобы все чаи были такими!"))
}
