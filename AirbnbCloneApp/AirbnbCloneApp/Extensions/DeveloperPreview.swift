//
//  DeveloperPreview.swift
//  AirbnbCloneApp
//
//  Created by Bartosz Mrugała on 29/08/2024.
//

import Foundation

class DeveloperPreview {
    static let shared = DeveloperPreview()
    var listing: [Listing] = [
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Mark Brown",
            ownerImageUrl: "man-photo",
            numberOfBedrooms: 4,
            numberOfBeds: 4,
            numberOfBathrooms: 4,
            numberOfGuests: 4,
            prcePerNight: 567,
            latitude: 37.3387,
            ImageURLs: ["listing-1", "listing-2", "listing-9", "listing-4"],
            longtitude: 121.8853,
            address: "123 Main Street",
            city: "San Jose",
            state: "California",
            title: "Sweet Brown Villa",
            rating: 3.34,
            features: [.selfChekIn, .superHost],
            amenities: [.wifi, .balcony, .kitchen, .office],
            type: .villa
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Kamal Perera",
            ownerImageUrl: "man-photo",
            numberOfBedrooms: 2,
            numberOfBeds: 2,
            numberOfBathrooms: 2,
            numberOfGuests: 2,
            prcePerNight: 324,
            latitude: 6.872916,
            ImageURLs: ["listing-10", "listing-8", "listing-9", "listing-4"],
            longtitude:79.888634,
            address: "234 Park Street",
            city: "Nugegoda",
            state: "Colombo",
            title: "Leisure Spot",
            rating: 5.34,
            features: [.selfChekIn, .superHost],
            amenities: [.wifi, .pool, .kitchen, .tv, .laundry],
            type: .house
        ),
        .init(
            id: NSUUID().uuidString,
            ownerUid: NSUUID().uuidString,
            ownerName: "Ann Claudia",
            ownerImageUrl: "woman-photo",
            numberOfBedrooms: 1,
            numberOfBeds: 2,
            numberOfBathrooms: 1,
            numberOfGuests: 2,
            prcePerNight: 123,
            latitude: 37.7749,
            ImageURLs:["listing-5", "listing-6", "listing-7", "listing-4"],
            longtitude:122.4194,
            address: "1st Lane",
            city: "Nugegoda",
            state: "Colombo",
            title: "Summer Garden",
            rating: 5.34,
            features: [.selfChekIn],
            amenities: [.wifi, .pool, .kitchen, .tv, .alarmSystem],
            type: .townHouse
        )
    ]
}
