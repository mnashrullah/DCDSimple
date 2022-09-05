//
//  UserView.swift
//  dcdSimple
//
//  Created by Muhammad Nashrullah on 01/09/22.
//

import SwiftUI

struct UserView: View {
    @State var users = [User]()
    @State private var showingSheet = false
    var body: some View {
        NavigationView(){
            List{
                ForEach(users, id: \.id) { item in
                    VStack(alignment: .leading){
                        NavigationLink(destination: UserDetailView(item: item)) {
                            UserCardView(item: item, detail: false)
                        }
                    }
                }
            }
            .navigationTitle("User")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button("Profile"){
                            showingSheet.toggle()
                        }
                }
            }
            .sheet(isPresented: $showingSheet) {
                ProfileView()
            }
            .onAppear(perform: loadData)
        }
    }
    
    func loadData() {
        let apiUser = "https://jsonplaceholder.typicode.com/users"
        guard let url = URL(string: apiUser) else {
            print("Invalid URL")
            return
        }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) {data, response, error in
            if let data = data {
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                if let decodedResponse = try?
                    decoder.decode([User].self, from: data) {
                    DispatchQueue.main.async {
                        self.users = decodedResponse
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
