//
//  PriceView.swift
//  SparTest
//
//  Created by Aleksandr Ataev on 02.02.2024.
//

import SwiftUI

struct PriceView: View {

    @State private var selection: String = "Шт"
    let option: [String] = ["Шт",
                            "Кг"]

    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.primary)
                .frame(height: 1)
                .shadow(radius: 1)
                .blur(radius: 6)

            Picker(selection: $selection) {
                ForEach(option, id: \.self) { option in
                    Text(option)
                }
            } label: {
                Text("Picker")
            }
            .pickerStyle(.segmented)
            .padding(.horizontal)

            HStack {
                VStack {
                    Text("55.9 ₽/кг")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.primary)

                    Text("199.0")
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                        .strikethrough(true)
                }

                Spacer()

                HStack {
                    Button {

                    } label: {
                        Text("-")
                            .font(.system(size: 30))
                    }

                    Spacer()

                    VStack {
                        Text("1 шт")
                            .font(.system(size: 16, weight: .bold))

                        Text("120,0₽")
                            .font(.system(size: 12, weight: .light))
                    }

                    Spacer()

                    Button {

                    } label: {
                        Text("+")
                            .font(.system(size: 30))
                    }
                }
                .frame(width: 130, height: 40)
                .foregroundColor(.white)
                .padding(.horizontal, 10)
                .background(Color.green)
                .clipShape(.rect(cornerRadius: 30))
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    PriceView()
}
