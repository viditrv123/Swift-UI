//
//  ContentView.swift
//  Swift-UI
//
//  Created by ShanaayaVidit on 25/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight=false
    
    var body: some View {
        ZStack{
            BackgroundView(isNight: $isNight)
            VStack{
                CityTextView(cityName: "Gurgaon, India")
                MainWeatherStatusView(weatherImage: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 20){
                    WhetherDayView(dayOfWeek: "TUE",
                                   imageName:"cloud.sun.fill",
                                   temperature: 74)
                    
                    WhetherDayView(dayOfWeek: "TUE",
                                   imageName:"sun.max.fill",
                                   temperature: 74)
                    
                    WhetherDayView(dayOfWeek: "TUE",
                                   imageName:"wind.snow",
                                   temperature: 74)
                    
                    WhetherDayView(dayOfWeek: "TUE",
                                   imageName:"cloud.sun.fill",
                                   temperature: 74)
                    
                    WhetherDayView(dayOfWeek: "TUE",
                                   imageName:"snow",
                                   temperature: 74)
                }
                Spacer()
                Button{
                    isNight.toggle()
                }
                label:{
                    WeatherButton(buttonName: "Change Day Time", backgroundColor: .white)
                }
                Spacer()
                
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WhetherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack{
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()					
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("LightBlue")]), startPoint:.topLeading ,endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName:String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    
    var weatherImage: String
    var temperature: Int
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: weatherImage)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}


