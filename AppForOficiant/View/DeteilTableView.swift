//
//  DeteilTableView.swift
//  AppForOficiant
//
//  Created by Jedi on 19.05.2024.
//

import SwiftUI

struct DeteilTableView: View {
    @StateObject  var viewModel: DetailTableViewModel
    @State private var newPositionCount = 1
    @State private var showAddPositionAlert = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Колличество гостей: ")
                .padding(12)
            TextField("Колличество Гостей",
                      value: $viewModel.table.guests,
                      format: .number)
            .padding(12)
            .background(.white)
            .clipShape(.capsule)
            .shadow(radius: 1)
            Button("Добавить в заказ") {
                showAddPositionAlert = true
            }
            .frame(maxWidth: .infinity)
            .frame(height: 48)
            .background(.blue)
            .foregroundColor(.white)
            .clipShape(.capsule)
            
            Text("Заказ:")
            List(viewModel.table.order) { position in
                Text("\(position.dish.title) - \(position.cost) руб")
                
            }
            HStack {
                Text("ИТОГО:")
                Spacer()
                Text("\(viewModel.table.sum) руб")
            }
        }
        .padding(12)
            .navigationTitle("Стол № \(viewModel.table.id)")
            .overlay {
                AddPositionAlert()
                    .offset(x: showAddPositionAlert ? 0 : 500)
            }
            .animation(.easeInOut, value: showAddPositionAlert)
    }
    
    @ViewBuilder
    func AddPositionAlert() -> some View {
        VStack(spacing: 16) {
            Text("Новая позиция").font(.title3).bold()
            Picker("Блюдо", selection: $viewModel.selectedDish) {
                ForEach(viewModel.dishes) { dish in
                    Text(dish.title).tag(dish)
                }
            }
            Stepper("Колличество: \(newPositionCount) шт", value: $newPositionCount, in: 1...5)
            
            Text("Стоимость: \(viewModel.selectedDish.price * newPositionCount) руб")
            
            HStack(spacing: 30) {
                Button("Добавить") {
                    print("Добавлено")
                    let position = Position(dish: viewModel.selectedDish, count: newPositionCount)
                    viewModel.table.order.append(position)
                    showAddPositionAlert = false
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 20)
                .background(.green)
                .foregroundColor(.white)
                .clipShape(.capsule)
                Button("Отмена") {
                    print("Отменить")
                    showAddPositionAlert = false
                }
                .padding(.vertical, 8)
                .padding(.horizontal, 20)
                .background(.red)
                .foregroundColor(.white)
                .clipShape(.capsule)
            }
        }
        .padding()
        .background(.white)
        .clipShape(.rect(cornerRadius: 24))
        .shadow(radius: 3)
        .padding(.horizontal, 20)
    }
    
}

#Preview {
    ContentView()
}
