//
//  ListingItemView.swift
//  AirbnbCloneApp
//
//  Created by Bartosz Mrugała on 27/08/2024.
//

import SwiftUI

struct ListingItemView: View {
    let listing: Listing
    
    var body: some View {
        VStack(spacing: 8) {
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // MARK: - info
            HStack(alignment: .top) {
                VStack(alignment: .leading, spacing:3) {
                    
                    // TODO: - UZUPELNIC listing.city 
                    Text("\(listing.city), \(listing.state)")
                        .foregroundStyle(.black)
                    .fontWeight(.semibold)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack {
                        Text("$\(listing.prcePerNight)")
                            .fontWeight(.semibold)
                        Text("night")
                            
                    }
                    .foregroundStyle(.black)
                }
                Spacer()
                HStack(spacing: 2) {
                    Image(systemName: "star.fill")
                    Text(String(format: "%.1f", listing.rating))
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listing[0])
}
