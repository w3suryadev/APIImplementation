//import SwiftUI
//////
//////struct DetailView: View {
//////    var body: some View {
//////        Text("Detail View")
//////            .navigationBarTitle("Detail", displayMode: .inline)
//////    }
//////}
//////
//////struct HomeView: View {
//////    var body: some View {
//////        NavigationView {
//////            VStack {
//////                NavigationLink(destination: DetailView()) {
//////                    Text("Go to Detail")
//////                }
//////                .navigationTitle("Home")
//////            }
//////        }
//////    }
//////}
//////
//////struct SettingsView: View {
//////    var body: some View {
//////        Text("Settings")
//////            .navigationTitle("Settings")
//////    }
//////}
//////
//////struct MainTabView: View {
//////    @State private var selectedTab = 2
//////
//////    var body: some View {
//////        TabView(selection: $selectedTab) {
//////            HomeView()
//////                .tabItem {
//////                    Label("Home", systemImage: "house")
//////                }
//////                .tag(1)
//////
//////            SettingsView()
//////                .tabItem {
//////                    Label("Settings", systemImage: "gear")
//////                }
//////                .tag(2)
//////        }
//////    }
//////}
//////
////////@main
////////struct MyApp: App {
////////    var body: some Scene {
////////        WindowGroup {
////////            MainTabView()
////////        }
////////    }
////////}
////
//////struct ContentView: View {
//////    @ObservedObject var viewModel = MyDataViewModel()
//////
//////    var body: some View {
//////        List(viewModel, id: \.name) { item in
//////            Text("Name: \(item.name), Age: \(item.age)")
//////        }
//////    }
//////}
////
////import SwiftUI
////
////struct ContentView: View {
////    @ObservedObject var viewModel = MyDataViewModel()
////
//////    init(viewModel: MyDataViewModel = MyDataViewModel()) {
//////        self.viewModel.loadData()
//////        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
////////            self.viewModel = viewModel
//////            print(viewModel.data)
//////                       }
////////        self.viewModel = viewModel
////////        print(self.viewModel.data)
//////    }
////    
////    init() {
////        self.viewModel = MyDataViewModel()
////        viewModel.loadData()
////
////        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
////            print(viewModel.data)
////        }
////    }
////
////    
////    var body: some View {
////        NavigationView {
////            Text("suryadev")
//////            List(viewModel.data, id: \.name) { item in
//////                VStack(alignment: .leading) {
//////                    Text("Name: \(item.name)")
//////                        .font(.headline)
//////                    Text("Age: \(item.age)")
//////                        .font(.subheadline)
//////                }
////            }
////            .navigationBarTitle("JSON Data")
////        }
//////        .onAppear {
//////            self.viewModel.loadData()
//////        }
////    }
////
////
////struct ContentView_Previews: PreviewProvider {
////    static var previews: some View {
////        ContentView()
////    }
////}
//
//struct ContentView: View {
//    @ObservedObject var viewModel = MyDataViewModel()
//
//    var body: some View {
//        NavigationView {
//            if viewModel.speedGames.isEmpty {
//                Text("Sorry, no data available.")
//                    .font(.title)
//                    .multilineTextAlignment(.center)
//                    .frame(maxWidth: .infinity, maxHeight: .infinity)
//                    .navigationBarTitle("Speed Games")
//            } else {
//                List(viewModel.speedGames, id: \.self) { gameName in
//                    NavigationLink(destination: GameDetailView(gameName: gameName)) {
//                        Text(gameName)
//                    }
//                }
//                .navigationBarTitle("Speed Games")
//                .refreshable {
//                    viewModel.refreshData()
//                }
//            }
//        }
////        NavigationView {
////            Text("suryadev")
////            .onAppear {
////                
////                viewModel.loadData()
////                print(viewModel.data)
//////                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//////                    print(viewModel.data)
//////                }
////            }
////        }
////        .navigationBarTitle("JSON Data")
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = MyDataViewModel()

    var body: some View {
        NavigationView {
            if viewModel.speedGames.isEmpty {
                Text("Sorry, no data available.")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .navigationBarTitle("Speed Games")
            } else {
                List(viewModel.speedGames, id: \.self) { gameName in
                    NavigationLink(destination: GameDetailView(gameName: gameName)) {
                        Text(gameName)
                    }
                }
                .navigationBarTitle("Speed Games")
                .refreshable {
                    viewModel.refreshData()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



//struct ContentView: View {
//    @ObservedObject var viewModel = MyDataViewModel()
//
//    var body: some View {
//        TabView {
//            ForEach(Filter.allCases, id: \.self) { filter in
//                if let games = viewModel.gamesByFilter[filter] {
//                    List(games, id: \.self) { gameName in
//                        Text(gameName)
//                    }
//                    .tabItem {
//                        Label(filter.rawValue.capitalized, systemImage: "gamecontroller")
//                    }
//                }
//            }
//        }
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}


