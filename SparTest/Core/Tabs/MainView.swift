//
//  MainView.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject private var viewModel: ReviewViewModel

    @State private var selectedOption: String = "Шт"
    let filterOption: [String] = ["Шт",
                                  "Кг"]

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    VStack {
                        HStack {
                            Text("Цена по карте")
                                .font(.system(size: 10))
                                .padding(.all, 5)
                                .background(Color.green)
                                .clipShape(.rect(cornerRadius: 6))
                                .foregroundColor(.white)

                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 5)

                        Image("Tea")
                            .resizable()
                            .scaledToFit()
                            .frame(height: 270)

                        HStack(spacing: 3) {
                            Image(systemName: "star.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 17)
                                .foregroundColor(.yellow)

                            Text("4.1")
                                .font(.system(size: 14, weight: .bold))
                                .foregroundColor(.primary)

                            Divider()
                                .foregroundColor(.gray)

                            Text("19 отзывов")
                                .font(.system(size: 14))
                                .foregroundColor(.gray)

                            Spacer()

                            Text("-5%")
                                .font(.system(size: 12))
                                .padding(.horizontal, 8)
                                .padding(.vertical, 6)
                                .background(Color.red)
                                .clipShape(.rect(cornerRadius: 6))
                                .foregroundColor(.white)
                        }
                        .padding(.horizontal)

                        Text("Чайный Напиток SPAR Наглый Фрукт 100г")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                            .padding(.horizontal, 9)

                        HStack {
                            Image("Spain")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 30)

                            Text("Испания, Риоха")
                                .font(.system(size: 14))
                                .foregroundColor(.primary)

                            Spacer()
                        }
                        .padding(.horizontal)

                        HStack {
                            Text("Описание")
                                .font(.headline)
                                .foregroundColor(.primary)

                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)

                        Text("Яркий фруктовый напиток, такого вы еще не пробовали! Настоящие цветы гибискуса, кусочки яблока, ананаса, шиповника, землянки и изюма! Почувствуйте бодрость, вкус и пользу натуральных фруктов!")
                            .font(.footnote)
                            .foregroundColor(.primary)
                            .padding(.horizontal)
                            .padding(.top, 1)

                        HStack {
                            Text("Основные характеристики")
                                .font(.headline)
                                .foregroundColor(.primary)

                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)

                        DescriptionView()

                        HStack {
                            Button {

                            } label: {
                                Text("Все характеристики")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(.green)
                            }

                            Spacer()
                        }
                        .padding(.horizontal)
                        .padding(.top, 20)

                        HStack {
                            Text("Отзывы")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.primary)

                            Spacer()

                            Button {

                            } label: {
                                Text("Все 152")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundColor(.green)
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 30)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(viewModel.allReviews) { review in
                                    ReviewRowView(review: review)
                                        .padding()
                                }
                            }
                        }

                        Button {

                        } label: {
                            Text("Оставить отзыв")
                                .font(.system(size: 16, weight: .bold))
                                .foregroundColor(.green)
                                .frame(height: 40)
                                .frame(maxWidth: .infinity)
                                .padding(.horizontal)
                                .padding(.bottom)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .strokeBorder(Color.green, lineWidth: 2)
                                        .padding(.horizontal)
                                        .padding(.bottom)
                                )
                        }
                    }
                }
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    backButton
                    listButton
                    uploadButton
                    favoriteButton
                }
                PriceView()
            }
        }
        .navigationViewStyle(.stack)
    }
}

extension MainView {
    private var backButton: some ToolbarContent {
        ToolbarItem(placement: .topBarLeading) {
            Button {

            } label: {
                Image(systemName: "arrow.left")
                    .foregroundColor(.green)
            }
        }
    }

    private var listButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {

            } label: {
                Image(systemName: "list.bullet.rectangle.portrait")
                    .foregroundColor(.green)
            }
        }
    }

    private var uploadButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {

            } label: {
                Image(systemName: "square.and.arrow.up")
                    .foregroundColor(.green)
            }
        }
    }

    private var favoriteButton: some ToolbarContent {
        ToolbarItem(placement: .topBarTrailing) {
            Button {

            } label: {
                Image(systemName: "heart")
                    .foregroundColor(.green)
            }
        }
    }
}

struct DescriptionView: View {
    var dottedLine: String {
            return String(repeating: ".", count: 1000)
        }

    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Производство")
                    .font(.footnote)
                    .padding(.horizontal)
                    .padding(.top)

                Text(dottedLine)
                    .layoutPriority(-1)
                    .lineLimit(1)

                Text("Россия, Краснодарский \nкрай")
                    .font(.footnote)
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal)
                    .lineLimit(2)
            }

            HStack {
                Text("Энергетическая \nценность, ккал/100г")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal)

                Text(dottedLine)
                    .layoutPriority(-1)
                    .lineLimit(1)

                Text("25 ккал, 105 \nкДж")
                    .font(.footnote)
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal)
                    .lineLimit(2)
            }

            HStack {
                Text("Жиры/100 г")
                    .font(.footnote)
                    .padding(.horizontal)

                Text(dottedLine)
                    .layoutPriority(-1)

                Text("0,1 г")
                    .font(.footnote)
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal)
            }
            .lineLimit(1)

            HStack {
                Text("Белки/100 г")
                    .font(.footnote)
                    .padding(.horizontal)

                Text(dottedLine)
                    .layoutPriority(-1)

                Text("1,3 г")
                    .font(.footnote)
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal)
            }
            .lineLimit(1)

            HStack {
                Text("Углеводы/100 г")
                    .font(.footnote)
                    .padding(.horizontal)

                Text(dottedLine)
                    .layoutPriority(-1)

                Text("3,3 г")
                    .font(.footnote)
                    .multilineTextAlignment(.trailing)
                    .padding(.horizontal)
            }
            .lineLimit(1)
        }
        .foregroundColor(.primary)
    }
}

#Preview {
    MainView()
        .environmentObject(ReviewViewModel())
}
