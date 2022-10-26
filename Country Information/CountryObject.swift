//
//  CountryObject.swift
//  Country Information
//
//  Created by Simon Wilson on 29/06/2022.
//

import Foundation

struct CountryObj {
    
    var officialName: String
    var tld: String
    var currencyName: String
    var currencySymbol: String
    var capital: String
    var latLng: Int
    var googleMapUrl: String
    var population: Int
    var timeZone: String
    var flagUrl: String
    var coatOfArmsUrl: String
    var area: Int
    
    init(officialName: String, tld: String, currencyName: String, currencySymbol: String, capital: String, latLng: Int, googleMapUrl: String, population: Int, timeZone: String, flagUrl: String, coatOfArmsUrl: String, area: Int) {
        
        self.officialName = officialName
        self.tld = tld
        self.currencyName = currencyName
        self.currencySymbol = currencySymbol
        self.capital = capital
        self.latLng = latLng
        self.googleMapUrl = googleMapUrl
        self.population = population
        self.timeZone = timeZone
        self.flagUrl = flagUrl
        self.coatOfArmsUrl = coatOfArmsUrl
        self.area = area
        
    }
    
    
}
