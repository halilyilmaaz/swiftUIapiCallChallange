//
//  UserCard.swift
//  swiftUIapiCallChallange
//
//  Created by halil yılmaz on 23.05.2022.
//

import SwiftUI

struct UserCard: View {
        
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("**Name**: \(user.name)")
            Text("**Email**: \(user.email)")
            Divider()
            Text("**Company**: \(user.company.name)")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.gray.opacity(0.1),in: RoundedRectangle(cornerRadius: 10,style: .continuous))
        .padding(.horizontal,4) 
    }
}

struct UserCard_Previews: PreviewProvider {
    static var previews: some View {
        UserCard(user: .init(id: 0, name: "halil", email: "hail@gmail.com", company: .init(name: "HDev")))
    }
}
