//
//  with.swift
//  StoryVaultAI
//
//  Created by DM on 3/4/25.
//


import SwiftUI

// ----------------------------------------------------------------------
// NOTE: We do NOT define Book here to avoid "redefinition of Book" errors.
// We assume you have a Book struct elsewhere in your project with:
//
//   struct Book: Identifiable {
//       let id = UUID()
//       let title: String
//       let coverImage: String
//       let isFeatured: Bool
//       let genre: String
//   }
//
// If your Book struct has different field names, rename references below.
// ----------------------------------------------------------------------

// A simple model grouping a genre name with an array of Book items.
struct MarketplaceGenre: Identifiable {
    let id = UUID()
    let name: String
    let books: [Book]
}

// The expanded list of genres and books for your Marketplace.
struct MarketplaceData {
    static let genres: [MarketplaceGenre] = [
        // Fantasy
        MarketplaceGenre(
            name: "Fantasy",
            books: [
                Book(title: "Alice’s Adventures in Wonderland", coverImage: "cover_alice_wonderland", isFeatured: false, genre: "Fantasy"),
                Book(title: "The Wonderful Wizard of Oz", coverImage: "cover_wizard_of_oz", isFeatured: false, genre: "Fantasy"),
                Book(title: "Peter Pan (Peter and Wendy)", coverImage: "cover_peter_pan", isFeatured: false, genre: "Fantasy"),
                Book(title: "Grimms’ Fairy Tales", coverImage: "cover_grimms_fairy_tales", isFeatured: false, genre: "Fantasy"),
                Book(title: "Through the Looking-Glass", coverImage: "cover_through_the_looking_glass", isFeatured: false, genre: "Fantasy"),
                Book(title: "One Thousand and One Nights", coverImage: "cover_one_thousand_and_one_nights", isFeatured: false, genre: "Fantasy"),
                Book(title: "Andersen’s Fairy Tales", coverImage: "cover_andersens_fairy_tales", isFeatured: false, genre: "Fantasy"),
                Book(title: "Le Morte d’Arthur", coverImage: "cover_le_morte_darthur", isFeatured: false, genre: "Fantasy"),
                Book(title: "Phantastes", coverImage: "cover_phantastes", isFeatured: false, genre: "Fantasy"),
                Book(title: "Journey to the West", coverImage: "cover_journey_to_the_west", isFeatured: false, genre: "Fantasy")
            ]
        ),
        // Science Fiction (New Genre)
        MarketplaceGenre(
            name: "Science Fiction",
            books: [
                Book(title: "Twenty Thousand Leagues Under the Sea", coverImage: "cover_twenty_thousand_leagues", isFeatured: false, genre: "Science Fiction"),
                Book(title: "Journey to the Center of the Earth", coverImage: "cover_journey_center_earth", isFeatured: false, genre: "Science Fiction"),
                Book(title: "The War of the Worlds", coverImage: "cover_war_of_the_worlds", isFeatured: false, genre: "Science Fiction"),
                Book(title: "The Time Machine", coverImage: "cover_time_machine", isFeatured: false, genre: "Science Fiction"),
                Book(title: "The Invisible Man", coverImage: "cover_invisible_man", isFeatured: false, genre: "Science Fiction"),
                Book(title: "The Island of Doctor Moreau", coverImage: "cover_island_of_doctor_moreau", isFeatured: false, genre: "Science Fiction"),
                Book(title: "A Princess of Mars", coverImage: "cover_princess_of_mars", isFeatured: false, genre: "Science Fiction"),
                Book(title: "Flatland: A Romance of Many Dimensions", coverImage: "cover_flatland", isFeatured: false, genre: "Science Fiction"),
                Book(title: "We", coverImage: "cover_we", isFeatured: false, genre: "Science Fiction")
            ]
        ),
        // Mystery & Detective Fiction (New Genre)
        MarketplaceGenre(
            name: "Mystery & Detective Fiction",
            books: [
                Book(title: "The Adventures of Sherlock Holmes", coverImage: "cover_sherlock_holmes", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Hound of the Baskervilles", coverImage: "cover_hound_baskervilles", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Murders in the Rue Morgue", coverImage: "cover_murders_rue_morgue", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Moonstone", coverImage: "cover_moonstone", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Woman in White", coverImage: "cover_woman_in_white", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Mysterious Affair at Styles", coverImage: "cover_mysterious_affair", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Murder of Roger Ackroyd", coverImage: "cover_murder_of_roger_ackroyd", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "Arsène Lupin, Gentleman Thief", coverImage: "cover_arsene_lupin", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Thirty-Nine Steps", coverImage: "cover_thirty_nine_steps", isFeatured: false, genre: "Mystery & Detective Fiction"),
                Book(title: "The Phantom of the Opera", coverImage: "cover_phantom_of_the_opera", isFeatured: false, genre: "Mystery & Detective Fiction")
            ]
        ),
        // Adventure
        MarketplaceGenre(
            name: "Adventure",
            books: [
                Book(title: "Treasure Island", coverImage: "cover_treasure_island", isFeatured: false, genre: "Adventure"),
                Book(title: "The Count of Monte Cristo", coverImage: "cover_monte_cristo", isFeatured: false, genre: "Adventure"),
                Book(title: "Robinson Crusoe", coverImage: "cover_robinson_crusoe", isFeatured: false, genre: "Adventure"),
                Book(title: "Around the World in Eighty Days", coverImage: "cover_around_world_eighty_days", isFeatured: false, genre: "Adventure"),
                Book(title: "The Three Musketeers", coverImage: "cover_three_musketeers", isFeatured: false, genre: "Adventure"),
                Book(title: "King Solomon’s Mines", coverImage: "cover_king_solomons_mines", isFeatured: false, genre: "Adventure"),
                Book(title: "Gulliver’s Travels", coverImage: "cover_gullivers_travels", isFeatured: false, genre: "Adventure"),
                Book(title: "White Fang", coverImage: "cover_white_fang", isFeatured: false, genre: "Adventure"),
                Book(title: "The Swiss Family Robinson", coverImage: "cover_swiss_family_robinson", isFeatured: false, genre: "Adventure")
            ]
        ),
        // Horror & Gothic
        MarketplaceGenre(
            name: "Horror & Gothic",
            books: [
                Book(title: "Dracula", coverImage: "cover_dracula", isFeatured: false, genre: "Horror & Gothic"),
                Book(title: "Frankenstein", coverImage: "cover_frankenstein", isFeatured: false, genre: "Horror & Gothic"),
                Book(title: "Carmilla", coverImage: "cover_carmilla", isFeatured: false, genre: "Horror & Gothic"),
                Book(title: "Jekyll and Hyde", coverImage: "cover_jekyll_hyde", isFeatured: false, genre: "Horror & Gothic"),
                Book(title: "The Picture of Dorian Gray", coverImage: "cover_dorian_gray", isFeatured: false, genre: "Horror & Gothic"),
                Book(title: "The Legend of Sleepy Hollow", coverImage: "cover_sleepy_hollow", isFeatured: false, genre: "Horror & Gothic"),
                Book(title: "The Turn of the Screw", coverImage: "cover_turn_of_the_screw", isFeatured: false, genre: "Horror & Gothic"),
                Book(title: "The Call of Cthulhu", coverImage: "cover_call_of_cthulhu", isFeatured: false, genre: "Horror & Gothic")
            ]
        ),
        // Romance & Drama
        MarketplaceGenre(
            name: "Romance & Drama",
            books: [
                Book(title: "Little Women", coverImage: "cover_little_women", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Pride and Prejudice", coverImage: "cover_pride_prejudice", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Jane Eyre", coverImage: "cover_jane_eyre", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Wuthering Heights", coverImage: "cover_wuthering_heights", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Sense and Sensibility", coverImage: "cover_sense_sensibility", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Emma", coverImage: "cover_emma", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Anna Karenina", coverImage: "cover_anna_karenina", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Madame Bovary", coverImage: "cover_madame_bovary", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "Far from the Madding Crowd", coverImage: "cover_far_from_madding", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "The Age of Innocence", coverImage: "cover_age_innocence", isFeatured: false, genre: "Romance & Drama"),
                Book(title: "A Room with a View", coverImage: "cover_room_with_view", isFeatured: false, genre: "Romance & Drama")
            ]
        ),
        // Historical Fiction
        MarketplaceGenre(
            name: "Historical Fiction",
            books: [
                Book(title: "War and Peace", coverImage: "cover_war_and_peace", isFeatured: false, genre: "Historical Fiction"),
                Book(title: "Les Misérables", coverImage: "cover_les_miserables", isFeatured: false, genre: "Historical Fiction"),
                Book(title: "A Tale of Two Cities", coverImage: "cover_tale_of_two_cities", isFeatured: false, genre: "Historical Fiction"),
                Book(title: "Ivanhoe", coverImage: "cover_ivanhoe", isFeatured: false, genre: "Historical Fiction"),
                Book(title: "The Scarlet Letter", coverImage: "cover_scarlet_letter", isFeatured: false, genre: "Historical Fiction"),
                Book(title: "Quo Vadis", coverImage: "cover_quo_vadis", isFeatured: false, genre: "Historical Fiction"),
                Book(title: "Ben-Hur: A Tale of the Christ", coverImage: "cover_ben_hur", isFeatured: false, genre: "Historical Fiction")
            ]
        ),
        // Children’s Literature
        MarketplaceGenre(
            name: "Children’s Literature",
            books: [
                Book(title: "Winnie-the-Pooh", coverImage: "cover_winnie_the_pooh", isFeatured: false, genre: "Children’s Literature"),
                Book(title: "The Secret Garden", coverImage: "cover_secret_garden", isFeatured: false, genre: "Children’s Literature"),
                Book(title: "Anne of Green Gables", coverImage: "cover_anne_green_gables", isFeatured: false, genre: "Children’s Literature"),
                Book(title: "Heidi", coverImage: "cover_heidi", isFeatured: false, genre: "Children’s Literature"),
                Book(title: "The Jungle Book", coverImage: "cover_jungle_book", isFeatured: false, genre: "Children’s Literature"),
                Book(title: "The Wind in the Willows", coverImage: "cover_wind_in_willows", isFeatured: false, genre: "Children’s Literature"),
                Book(title: "Black Beauty", coverImage: "cover_black_beauty", isFeatured: false, genre: "Children’s Literature"),
                Book(title: "The Adventures of Tom Sawyer", coverImage: "cover_tom_sawyer", isFeatured: false, genre: "Children’s Literature")
            ]
        ),
        // Drama & Plays
        MarketplaceGenre(
            name: "Drama & Plays",
            books: [
                Book(title: "Hamlet", coverImage: "cover_hamlet", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "Macbeth", coverImage: "cover_macbeth", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "Romeo and Juliet", coverImage: "cover_romeo_juliet", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "A Midsummer Night’s Dream", coverImage: "cover_midsummer_night", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "Othello", coverImage: "cover_othello", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "King Lear", coverImage: "cover_king_lear", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "The Tempest", coverImage: "cover_tempest", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "Cyrano de Bergerac", coverImage: "cover_cyrano", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "Faust", coverImage: "cover_faust", isFeatured: false, genre: "Drama & Plays"),
                Book(title: "Oedipus Rex", coverImage: "cover_oedipus_rex", isFeatured: false, genre: "Drama & Plays")
            ]
        ),
        // Poetry
        MarketplaceGenre(
            name: "Poetry",
            books: [
                Book(title: "The Iliad", coverImage: "cover_iliad", isFeatured: false, genre: "Poetry"),
                Book(title: "The Odyssey", coverImage: "cover_odyssey", isFeatured: false, genre: "Poetry"),
                Book(title: "The Divine Comedy", coverImage: "cover_divine_comedy", isFeatured: false, genre: "Poetry"),
                Book(title: "The Canterbury Tales", coverImage: "cover_canterbury_tales", isFeatured: false, genre: "Poetry"),
                Book(title: "Shakespeare’s Sonnets", coverImage: "cover_shakespeare_sonnets", isFeatured: false, genre: "Poetry"),
                Book(title: "Paradise Lost", coverImage: "cover_paradise_lost", isFeatured: false, genre: "Poetry"),
                Book(title: "Leaves of Grass", coverImage: "cover_leaves_of_grass", isFeatured: false, genre: "Poetry"),
                Book(title: "The Raven", coverImage: "cover_raven", isFeatured: false, genre: "Poetry"),
                Book(title: "Gitanjali", coverImage: "cover_gitanjali", isFeatured: false, genre: "Poetry"),
                Book(title: "The Waste Land", coverImage: "cover_waste_land", isFeatured: false, genre: "Poetry")
            ]
        )
    ]
}
