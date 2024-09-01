//
//  Listing.swift
//  AirbnbCloneApp
//
//  Created by Bartosz Mrugała on 29/08/2024.
//

import Foundation

struct Listing: Identifiable, Codable, Hashable {
    let id: String
    let ownerUid: String
    let ownerName: String
    let ownerImageUrl: String
    let numberOfBedrooms: Int
    let numberOfBeds: Int
    let numberOfBathrooms: Int
    let numberOfGuests: Int
    var prcePerNight: Int
    let latitude: Double
    var ImageURLs: [String]
    let longtitude: Double
    let address: String
    let city: String
    let state: String
    let title: String
    var rating: Double
    var features: [ListingFeatures]
    var amenities: [ListingAmenities]
    let type: ListingType
    
}

enum ListingFeatures: Int, Codable, Identifiable, Hashable {
    var id: Int { return self.rawValue }
    
    case selfChekIn
    case superHost
    
    var imageName: String {
        switch self {
        case .selfChekIn: return "door.left.hand.open"
        case .superHost: return "medal"
        }
    }
    
    var title: String {
        switch self {
        case .selfChekIn: return "Self check-in"
        case .superHost: return "Sueprhost"
        }
    }
    
    var subtitle: String {
        switch self {
        case .selfChekIn: return "Check yourself in with the keypad."
        case .superHost: return "Superhosts are experienced, highly rated hosts who are commited providing greate starts for guests "
        }
    }
}

enum ListingAmenities: Int, Codable, Identifiable, Hashable {
    var id: Int { return self.rawValue }
    
    case pool
    case kitchen
    case wifi
    case laundry
    case tv
    case alarmSystem
    case office
    case balcony
    
    var title: String {
        switch self {
        case .pool: return "Pool"
        case .kitchen: return "Kitchne"
        case .wifi: return "Wi fi"
        case .laundry: return "Laundry"
        case .tv: return "TV"
        case .alarmSystem: return "Alarm System"
        case .office: return "Office"
        case .balcony: return "Balcony"
        }
    }
    
    var imageName: String {
        switch self {
        case .pool: return "figure.pool.swim"
        case .kitchen: return "fork.knife"
        case .wifi: return "wifi"
        case .laundry: return "washer"
        case .tv: return "tv"
        case .alarmSystem: return "checkerboard.shield"
        case .office: return "pencil.and.ruller.fill"
        case .balcony: return "building`"
        }
    }
}

enum ListingType: Int, Codable, Identifiable, Hashable {
    var id: Int { return self.rawValue }
    case apartment
    case house
    case townHouse
    case villa
    
    var description: String {
        switch self {
        case .apartment: return "Apartment"
        case .house: return "Apartment"
        case .townHouse: return "Apartment"
        case .villa: return "Apartment"
        }
    }
    
   
}
