//
//  Chats.swift
//  ChatApp
//
//  Created by Tanishk Sahni on 03/05/24.
//

import Foundation


import Foundation

struct Chats {
    let sender: String
    let receiver: User?
    let lastMessage: String
    let lastMessageTime: String
    let messages: [Message]?
}

struct User {
    var userId: String
    var userName: String
}

struct Message {
    let sender: User
    let content: String
    let sentAt: String
}

var chatsData = [
    Chats(sender: "Pratham",
          receiver: User(userId: "12344", userName: "Tanishk"),
          lastMessage: "Hey! How are you?",
          lastMessageTime: "3:00 PM",
          messages: [
            Message(sender: User(userId: "12344", userName: "Tanishk"),
                    content: "Hey Pratham! I'm good, thanks! How about you?",
                    sentAt: "3:01 PM"),
            Message(sender: User(userId: "12344", userName: "Tanishk"),
                    content: "I wanted to ask about the project deadline.",
                    sentAt: "3:02 PM"),
            Message(sender: User(userId: "12344", userName: "Tanishk"),
                    content: "Are you available for a quick meeting today?",
                    sentAt: "3:03 PM"),
            Message(sender: User(userId: "12344", userName: "Tanishk"),
                    content: "Let me know!",
                    sentAt: "3:04 PM"),
            Message(sender: User(userId: "12344", userName: "Tanishk"),
                    content: "Hey! How are you?",
                    sentAt: "3:05 PM"),
            Message(sender: User(userId: "12344", userName: "Tanishk"),
                    content: "Hey! How are you?",
                    sentAt: "3:06 PM")
          ]),
    Chats(sender: "Alice",
          receiver: User(userId: "56789", userName: "Bob"),
          lastMessage: "Hi Bob! What's up?",
          lastMessageTime: "4:30 PM",
          messages: [
            Message(sender: User(userId: "56789", userName: "Bob"),
                    content: "Hey Alice! Not much, just working on some stuff.",
                    sentAt: "4:31 PM"),
            Message(sender: User(userId: "56789", userName: "Bob"),
                    content: "How about you?",
                    sentAt: "4:32 PM"),
            Message(sender: User(userId: "56789", userName: "Bob"),
                    content: "Did you finish the report we discussed?",
                    sentAt: "4:33 PM"),
            Message(sender: User(userId: "56789", userName: "Bob"),
                    content: "Let me know if you need any help.",
                    sentAt: "4:34 PM")
          ]),
    Chats(sender: "Ella",
          receiver: User(userId: "101112", userName: "David"),
          lastMessage: "Hey David! Are you free tomorrow?",
          lastMessageTime: "10:00 AM",
          messages: [
            Message(sender: User(userId: "101112", userName: "David"),
                    content: "Hey Ella! Yes, I'm free tomorrow. What's up?",
                    sentAt: "10:01 AM"),
            Message(sender: User(userId: "101112", userName: "David"),
                    content: "I have some free time, why?",
                    sentAt: "10:02 AM"),
            Message(sender: User(userId: "101112", userName: "David"),
                    content: "Do you want to catch up over coffee?",
                    sentAt: "10:03 AM"),
            Message(sender: User(userId: "101112", userName: "David"),
                    content: "Sure! Where and when?",
                    sentAt: "10:04 AM")
          ])
]
//
//struct Message: Hashable {
//    var id = UUID()
//    var content: String
//    var isCurrentUser: Bool
//}
//
//struct DataSource {
//    
//    static let messages = [
//        
//        Message(content: "Hi there!", isCurrentUser: true),
//        
//        Message(content: "Hello! How can I assist you today?", isCurrentUser: false),
//        Message(content: "How are you doing?", isCurrentUser: true),
//        Message(content: "I'm just a computer program, so I don't have feelings, but I'm here and ready to help you with any questions or tasks you have. How can I assist you today?", isCurrentUser: false),
//        Message(content: "Tell me a joke.", isCurrentUser: true),
//        Message(content: "Certainly! Here's one for you: Why don't scientists trust atoms? Because they make up everything!", isCurrentUser: false),
//        Message(content: "How far away is the Moon from the Earth?", isCurrentUser: true),
//        Message(content: "The average distance from the Moon to the Earth is about 238,855 miles (384,400 kilometers). This distance can vary slightly because the Moon follows an elliptical orbit around the Earth, but the figure I mentioned is the average distance.", isCurrentUser: false)
//      
//    ]
//}
