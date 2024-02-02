//
//  ReviewViewModel.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import Foundation

final class ReviewViewModel: ObservableObject {

    @Published var allReviews: [ReviewModel] = ReviewModel.reviews
}
