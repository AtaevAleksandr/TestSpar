//
//  ReviewModel.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import Foundation
import SwiftUI

struct ReviewModel: Identifiable {
    var id = UUID()
    let name: String
    let date: String
    let rateValue: Int
    let reviewText: String

    static var reviews: [ReviewModel] = [
        ReviewModel(name: "Александр В.",
                    date: "7 мая 2021",
                    rateValue: 4,
                    reviewText: "Хороший чай, мне очень понравился! \nХочу, чтобы все чаи были такими!"),
        ReviewModel(name: "Александр В.",
                    date: "7 мая 2021",
                    rateValue: 4,
                    reviewText: "Хороший чай, мне очень понравился! \nХочу, чтобы все чаи были такими!"),
        ReviewModel(name: "Александр В.",
                    date: "7 мая 2021",
                    rateValue: 4,
                    reviewText: "Хороший чай, мне очень понравился! \nХочу, чтобы все чаи были такими!"),
        ReviewModel(name: "Александр В.",
                    date: "7 мая 2021",
                    rateValue: 4,
                    reviewText: "Хороший чай, мне очень понравился! \nХочу, чтобы все чаи были такими!")
    ]
}
