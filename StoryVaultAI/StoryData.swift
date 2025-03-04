//
//  StoryData.swift
//  StoryVaultAI
//
//  Created by DM on 2/25/25.
//

import Foundation
import SwiftUI

// Existing structs for story segments and choices
struct StorySegment: Identifiable, Codable, Hashable {
    let id: String
    let text: String
    let choices: [Choice]
}

struct Choice: Identifiable, Codable, Hashable {
    let id: String
    let text: String
    let destination: String
}

// Updated Story struct to conform to Identifiable
struct Story: Identifiable {
    let id: UUID // Add an id property for Identifiable conformance
    let title: String
    let imageName: String
    let segmentId: String? // Links to a StorySegment if needed
}

// Updated StoryManager to include stories with covers
class StoryManager: ObservableObject {
    @Published var segments: [String: StorySegment] = [:]
    @Published var stories: [Story] = [] // Array for stories with covers
    @Published var errorMessage: String? = nil
    
    init() {
        loadBasicSegments()
        loadStories() // Load stories with covers
    }
    
    func loadBasicSegments() {
        // If you have a story.json file, load it; otherwise, use fallback data.
        fallbackToDefaultData()
    }
    
    func loadStories() {
        // Hardcode the five stories you want on the slider, using Sherlock Holmes instead of The Hound of the Baskervilles
        stories = [
            Story(id: UUID(), title: "Alice in Wonderland", imageName: "aliceWonderlandCover", segmentId: "aliceSegment"),
            Story(id: UUID(), title: "Treasure Island", imageName: "treasureIslandCover", segmentId: "treasureSegment"),
            Story(id: UUID(), title: "Dracula", imageName: "draculaCover", segmentId: "draculaSegment"),
            Story(id: UUID(), title: "Romeo and Juliet", imageName: "romeoJulietCover", segmentId: "romeoSegment"),
            Story(id: UUID(), title: "Sherlock Holmes", imageName: "sherlockHolmesCover", segmentId: "sherlockSegment")
        ]
    }
    
    func fallbackToDefaultData() {
        let defaultJSON = """
        [
            {
                "id": "defaultPage",
                "text": "Default story text. There was an error loading the story data.",
                "choices": []
            }
        ]
        """
        if let data = defaultJSON.data(using: .utf8),
           let segmentsArray = try? JSONDecoder().decode([StorySegment].self, from: data) {
            self.segments = Dictionary(uniqueKeysWithValues: segmentsArray.map { ($0.id, $0) })
        }
    }
}
