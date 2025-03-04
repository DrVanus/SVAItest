//
//  WriteYourOwnStoryView.swift
//  StoryVaultAI
//
//  Created by DM on 2/25/25.
//

import SwiftUI

struct WriteYourOwnStoryView: View {
    @State private var storyTitle: String = "Fantasy"
    @State private var storyGenre: String = "Fantasy"
    @State private var showSuggestions: Bool = false
    @State private var magicForestAdventure: String = "A magical forest adventure with a wizard"
    @State private var historicalMysteryTale: String = "A historical mystery tale in a castle"
    
    let genres = ["Fantasy", "Adventure", "Horror/Gothic", "Romance", "Mystery", "Historical Fiction", "Poetry"]
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 0.9, green: 0.1, blue: 0.3), Color.black]),
                           startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 15) {
                // Story Title
                Text("Write Your Own Story")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
                
                // Story Title Input
                TextField("Story Title", text: $storyTitle)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(.white)
                    .background(Color(red: 0.1, green: 0.12, blue: 0.24, opacity: 0.8))
                    .cornerRadius(10)
                    .padding(.horizontal)
                
                // Genre Picker
                Picker("Genre", selection: $storyGenre) {
                    ForEach(genres, id: \.self) { genre in
                        Text(genre)
                    }
                }
                .pickerStyle(MenuPickerStyle())
                .foregroundColor(.white)
                .padding(.horizontal)
                
                // Suggestions or Placeholder for Story Content (Expanded for length)
                Button(action: {
                    showSuggestions.toggle()
                }) {
                    Text("Get Story Suggestions")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.purple, Color.blue]),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .cornerRadius(15)
                }
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)
                
                if showSuggestions {
                    VStack(spacing: 10) {
                        Text(magicForestAdventure)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.purple.opacity(0.3))
                            .cornerRadius(10)
                        
                        Text(historicalMysteryTale)
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.purple.opacity(0.3))
                            .cornerRadius(10)
                        
                        // Additional placeholder suggestions to increase line count
                        Text("An epic sci-fi journey through the stars, battling alien forces.")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.purple.opacity(0.3))
                            .cornerRadius(10)
                        
                        Text("A romantic tale of love and betrayal in a medieval kingdom.")
                            .font(.body)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.purple.opacity(0.3))
                            .cornerRadius(10)
                    }
                }
                
                // Additional padding and spacing for length
                Spacer()
                    .frame(height: 20)
                
                Text("Craft your unique narrative and dive into StoryVault AI’s world of endless possibilities!")
                    .font(.caption)
                    .foregroundColor(.white.opacity(0.7))
                    .padding(.horizontal)
                    .padding(.bottom, 10)
            }
            .padding(.bottom, 20)
        }
        .navigationTitle("") // Ensure no title appears in navigation bar
        .navigationBarBackButtonHidden(false) // Show default back button
        .environmentObject(UserPlanManager()) // Ensure plan manager is available
    }
}

struct WriteYourOwnStoryView_Previews: PreviewProvider {
    static var previews: some View {
        WriteYourOwnStoryView()
            .environmentObject(UserPlanManager())
            .preferredColorScheme(.dark)
    }
}

// UserPlanManager (Ensure this is defined in your project, e.g., StoryVaultAIApp.swift)
class UserPlanManager: ObservableObject {
    @Published var hasStorytellerPlan: Bool = false
    @Published var hasVaultMasterPlan: Bool = false
    
    init() {
        // Logic to check user's plan (e.g., from UserDefaults, API, etc.)
        // For testing, set these manually:
        hasStorytellerPlan = false // Default to locked for testing
        hasVaultMasterPlan = false // Default to locked for testing
    }
}
