//
//  HomeView.swift
//  StoryVaultAI
//
//  Created by DM on 2/25/25.
//

import SwiftUI

struct HomeView: View {
    // If you have an environment object for your library or AI logic, keep it here:
    // @EnvironmentObject var library: LibraryModel
    
    // Example featured books array for the top slider (replace with your real data)
    let featuredBooks: [Book] = [
        // Fill this with your actual Book objects if you want them in the slider
        Book(title: "Alice’s Adventures in Wonderland", coverImage: "cover_alice_wonderland", isFeatured: true, genre: "Fantasy"),
        Book(title: "Peter Pan", coverImage: "cover_peter_pan", isFeatured: true, genre: "Fantasy")
    ]
    
    // Example array of genres to display in the horizontal scroll
    // Now includes Mystery & Science Fiction
    let genres: [String] = [
        "Fantasy",
        "Adventure",
        "Horror/Gothic",
        "Romance",
        "Mystery & Detective Fiction",
        "Science Fiction"
    ]
    
    var body: some View {
        ZStack {
            // Keep your existing background gradient code here
            // If you use a custom gradient, paste it below
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.blue.opacity(0.5)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                
                // 1) YOUR EXISTING TOP SLIDER
                // If you had a separate function or variable for it, just paste that code here.
                // For demonstration, here's a placeholder TabView using featuredBooks:
                TabView {
                    ForEach(featuredBooks) { book in
                        ZStack {
                            // Book cover or color
                            Image(book.coverImage)
                                .resizable()
                                .scaledToFill()
                                .frame(width: UIScreen.main.bounds.width - 40, height: 300)
                                .clipShape(RoundedRectangle(cornerRadius: 20))
                            
                            // Title overlay
                            Text(book.title)
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding(8)
                                .background(Color.black.opacity(0.5))
                                .cornerRadius(10)
                                .padding(.bottom, 20)
                                .padding(.horizontal, 20)
                        }
                        .padding(.horizontal, 20)
                        .onTapGesture {
                            // If tapping the slider leads to AI adventure or detail:
                            // navigateToAdventure(book: book)
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 300)
                .padding(.top, 20)
                
                // 2) "Write Your Own Story" with a gradient background
                NavigationLink(destination: WriteYourOwnStoryView()) {
                    Text("Write Your Own Story")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 20)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.purple, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(12)
                        .shadow(color: Color.black.opacity(0.3), radius: 4, x: 0, y: 2)
                }
                
                // 3) HORIZONTAL SCROLL OF GENRES (with gradient buttons)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(genres, id: \.self) { genre in
                            Button(action: {
                                // Example: navigate to Marketplace for that genre
                                // navigateToMarketplaceGenre(genre)
                            }) {
                                Text(genre)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 8)
                                    .padding(.horizontal, 16)
                                    .background(
                                        LinearGradient(
                                            gradient: Gradient(colors: [Color.purple, Color.blue]),
                                            startPoint: .leading,
                                            endPoint: .trailing
                                        )
                                    )
                                    .cornerRadius(20)
                            }
                            .shadow(color: Color.black.opacity(0.3), radius: 3, x: 0, y: 2)
                        }
                    }
                    .padding(.horizontal)
                }
                
                // 4) Placeholder for recent activity, etc.
                Text("Recent Activity & Achievements Coming Soon")
                    .font(.caption2)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.bottom, 20)
        }
    }
    
    // If you have custom functions like navigateToAdventure(book:) or navigateToMarketplaceGenre(genre:),
    // define them here or remove references above.
    /*
    private func navigateToAdventure(book: Book) {
        // Implement your logic for AI Adventure or detail screen
    }
    
    private func navigateToMarketplaceGenre(_ genre: String) {
        // Implement your logic to open Marketplace filtered by this genre
    }
    */
}

// Example Book struct if you haven't defined it. If you already have one, remove or adapt.
struct Book: Identifiable {
    let id = UUID()
    let title: String
    let coverImage: String
    let isFeatured: Bool
    let genre: String
}

// Example "Write Your Own Story" view. Replace with your real view.
struct WriteYourOwnStoryView: View {
    var body: some View {
        Text("Write Your Own Story Page")
            .foregroundColor(.white)
            .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
