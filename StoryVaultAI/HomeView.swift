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
    
    // Example featured books array for the top slider (expanded with more books)
    let featuredBooks: [Book] = [
        Book(title: "Alice’s Adventures in Wonderland", coverImage: "cover_alice_wonderland", isFeatured: true, genre: "Fantasy"),
        Book(title: "Peter Pan", coverImage: "cover_peter_pan", isFeatured: true, genre: "Fantasy"),
        Book(title: "Mystery of the Lost Kingdom", coverImage: "cover_mystery_lost_kingdom", isFeatured: true, genre: "Mystery & Detective Fiction"),
        Book(title: "Dark Forest Chronicles", coverImage: "cover_dark_forest_chronicles", isFeatured: true, genre: "Horror"),
        Book(title: "The Phantom of the Opera", coverImage: "cover_phantom_opera", isFeatured: true, genre: "Mystery & Detective Fiction")
    ]
    
    // Example array of genres to display in the horizontal scroll
    let genres: [String] = [
        "Fantasy",
        "Adventure",
        "Horror",
        "Romance",
        "Mystery & Detective Fiction",
        "Science Fiction"
    ]
    
    var body: some View {
        ZStack { // No NavigationView here, as it’s handled at the app level in MainTabView
            // Full-Screen Blue-Black Gradient Background
            LinearGradient(
                gradient: Gradient(colors: [Color.black, Color.blue.opacity(0.5)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                // Larger Book Cover Slider (Carousel) with Book Covers, Now Functional
                TabView {
                    ForEach(featuredBooks) { book in
                        NavigationLink(destination: AIAdventureBetaView(story: book.title)) {
                            ZStack {
                                // Use local image names (replace with your actual image names in Assets.xcassets)
                                Image(book.coverImage)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: UIScreen.main.bounds.width - 40, height: 300)
                                    .clipShape(RoundedRectangle(cornerRadius: 20))
                                    .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
                                
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
                        }
                        .padding(.horizontal, 20)
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 300)
                .padding(.top, 20)
                
                // Write Your Own Story Button (Purple-Blue Gradient, Now Functional)
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
                
                // Horizontal Scroll of Genres (Purple-Blue Gradient Buttons, Now Functional)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 10) {
                        ForEach(genres, id: \.self) { genre in
                            Button(action: {
                                // Update selected genre and log for debugging
                                print("Selected genre: \(genre)")
                                // Add navigation or filtering logic here if needed (e.g., navigate to MarketplaceView filtered by genre)
                                // For now, it prints to console—expand as needed
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
                
                // Recent Activity & Achievements Placeholder
                Text("Recent Activity & Achievements Coming Soon")
                    .font(.caption2)
                    .foregroundColor(.gray)
                
                Spacer()
            }
            .padding(.bottom, 20)
        }
        .navigationTitle("") // Ensure no title appears in navigation bar
        .navigationBarHidden(true) // Hide navigation bar for clean home screen
        .environmentObject(UserPlanManager()) // Ensure plan manager is available
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

// Example Book struct (already defined, but included for completeness)
struct Book: Identifiable {
    let id = UUID()
    let title: String
    let coverImage: String
    let isFeatured: Bool
    let genre: String
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(UserPlanManager())
            .preferredColorScheme(.dark)
    }
}
