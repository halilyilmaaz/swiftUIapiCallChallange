//
//  ContentView.swift
//  swiftUIapiCallChallange
//
//  Created by halil yılmaz on 23.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = UsersViewModel()
    
    var body: some View {
        NavigationView{
            ZStack{
                if vm.isRefreshing {
                    ProgressView()
                }else {
                    List{
                        ForEach(vm.users, id: \.id){user in
                            UserCard(user: user).listRowSeparator(.hidden)
                        }
                        
                    }
                    .listStyle(.plain)
                    .navigationTitle("Users")
                    .alert(isPresented: $vm.hasError,error: vm.error){
                        Button(action: vm.fetchUsers){
                            Text("Retry")
                        }
                    }
                }
            }
            
            
        }
        .onAppear(perform: vm.fetchUsers)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
