//
//  DestinationSearchView.swift
//  AirbnbCloneApp
//
//  Created by Bartosz Mrugała on 28/08/2024.
//

import SwiftUI

enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @ObservedObject var viewModel: ExploreViewModel
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var whoStepper = 0
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    
    var body: some View {
        VStack {
            
            // MARK: - X button
            HStack {
                Button {
                    withAnimation(.snappy) {
                        viewModel.updateListingsForLocation()
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                }
                
                
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()
            // MARK: - Where view
            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        
                        TextField("Search destinations", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }
                } else {
                    CollapsedPickerView(title: "Where", description: "Add where")
                }
            }
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .location ? 120: 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .location
                }
            }
            
            // MARK: - When view
            VStack(alignment: .leading){
                if selectedOption == .dates {
                        Text("When's your trip")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                        VStack {
                            DatePicker("From", selection: $startDate, displayedComponents: .date)
                            
                            Divider()
                            
                            DatePicker("To", selection: $endDate, displayedComponents: .date)
                        }
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        .fontWeight(.semibold)
                } else {
                    CollapsedPickerView(title: "When", description: "Add dates")
                }
            }
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .dates
                }
            }
            
            // MARK: - Who view
            VStack {
                if selectedOption == .guests {
                    Text("Who's coming")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Stepper("\(whoStepper) Adults", value: $whoStepper)
                    }
                } else {
                    CollapsedPickerView(title: "Who", description: "Add guests")
                }
            }
            .modifier(CollapsedDestinationViewModifier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) {
                    selectedOption = .guests
                }
            }
        }
        
        Spacer()
        
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

// MARK: - CollapsedPickerView
struct CollapsedPickerView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }
    }
}

// MARK: - CollapsedDestinationViewModifier
struct CollapsedDestinationViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .padding()
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
        .shadow(radius: 10)
    }
}
