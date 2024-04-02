//
//  SwiftUIView.swift
//  Photo King
//
//  Created by Timothy Liu on 4/2/24.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView{
            HStack {
                ScrollView {
                    HStack {
                        VStack(spacing: 0) {
                            ForEach(0 ..< 6) { item in
                                snap_chat_text(nameOfUser: "Emma", msgStatus: "Delivered", streak: "67")
                            }
                        }
                    }
                }
            }
        }
    }
}

struct snap_chat_text: View {
    var nameOfUser: String
    var msgStatus: String
    var streak: String
    
    var body: some View {
        VStack(spacing: 10) {
            HStack{
                Text(nameOfUser).frame(width: .infinity, alignment: .leading)
            }
        }
    }
}
#Preview {
    SwiftUIView()
}
