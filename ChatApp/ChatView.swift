//
//  ChatView.swift
//  ChatApp
//
//  Created by Tanishk Sahni on 03/05/24.
//

import SwiftUI

struct ChatView: View {
    @State var searchableText: String = ""
    
    var body: some View {
        NavigationStack {
            List{
                ForEach(chatsData, id: \.receiver?.userId){ chat in
                    NavigationLink(destination: MessageScreenView()) {
                        ChatListCard(userName: chat.sender, lastText: chat.lastMessage, lastTextTime: chat.lastMessageTime)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Chats")
            .searchable(text: $searchableText)
        }
    }
}

#Preview {
    ChatView()
}


struct ChatListCard: View {
    var userName: String
    var lastText: String
    var lastTextTime: String
    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            VStack(alignment: .leading) {
                Text(userName)
                    .font(.headline)
                    .fontWeight(.bold)
                Text(lastText)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }
            Spacer()
            Text(lastTextTime)
                .font(.caption2)
                .foregroundColor(.blue)
        }
        .padding(.horizontal)
    }
}
