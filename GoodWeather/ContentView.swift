//
//  ContentView.swift
//  GoodWeather
//
//  Created by Иван Соколовский on 01.04.2020.
//  Copyright © 2020 Ivan Sokolovskii. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var weatherViewModel: WeatherViewModel
    
    init() {
        self.weatherViewModel = WeatherViewModel()
    }
    
    var body: some View {
        VStack(alignment: .center) {
            TextField("Enter city name", text: self.$weatherViewModel.cityName) {
                self.weatherViewModel.search()
            }.font(.custom("Arial", size: 50))
                .padding()
                .fixedSize()
            
            Text(self.weatherViewModel.temperature)
                .font(.custom("Arial", size: 100))
                .foregroundColor(.white)
                .offset(y: 100)
                .padding()
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.green)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
