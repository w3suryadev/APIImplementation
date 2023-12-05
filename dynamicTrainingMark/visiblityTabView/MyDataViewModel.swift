import SwiftUI
//
//class MyDataViewModel: ObservableObject {
//    @Published var data = [MyDataModel]()
//    @Published var speedGames: [String] = []
//    
//    init() {
//        loadData()
//    }
//
//    func loadData() {
//        guard let url = Bundle.main.url(forResource: "Practice", withExtension: "json") else {
//            print("JSON file not found")
//            return
//        }
//
//        do {
//            let jsonData = try Data(contentsOf: url)
//            let decodedData = try JSONDecoder().decode(MyDataModel.self, from: jsonData)
////            let decodedData = try JSONDecoder().decode([MyDataModel].self, from: jsonData)
//            self.data = [decodedData]
////            extractGameNames(from: decodedData)
//             extractGameNames(from: decodedData, filter: .speed)
//            print(self.data)
////            print(decodedData)
////            let decodedData = try JSONDecoder().decode(People.self, from: jsonData) // If JSON is a dictionary
////            self.data = decodedData
//        } catch {
//            print("Error decoding JSON: \(error)")
//        }
//    }
//    
//    private func extractGameNames(from dataModel: MyDataModel, filter: Filter) {
//        self.speedGames = dataModel.tags
//            .filter { $0.filter == filter }
//            .flatMap { tag in
//                [tag.skillLevel.highSchool, tag.skillLevel.college, tag.skillLevel.professional].flatMap { $0 }
//            }
//            .map { $0.gameName }
//    }
//
////    private func extractGameNames(from dataModel: MyDataModel) {
////           self.speedGames = dataModel.tags
////               .filter { $0.filter == .speed }
////               .flatMap { tag in
////                   [tag.skillLevel.highSchool, tag.skillLevel.college, tag.skillLevel.professional].flatMap { $0 }
////               }
////               .map { $0.gameName }
////       }
//
//    
//    func refreshData() {
//        
//           loadData() // Assuming loadData() reloads the JSON data
//       }
//    
//}

///

//class MyDataViewModel: ObservableObject {
//    @Published var gamesByFilter: [Filter: [String]] = [:]
//
//    init() {
//        loadData()
//    }
//
//    func loadData() {
//        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
//            print("JSON file not found")
//            return
//        }
//
//        do {
//            let jsonData = try Data(contentsOf: url)
//            let decodedData = try JSONDecoder().decode(MyDataModel.self, from: jsonData)
//            updateGamesByFilter(from: decodedData)
//        } catch {
//            print("Error decoding JSON: \(error)")
//        }
//    }
//
//    private func updateGamesByFilter(from dataModel: MyDataModel) {
//        let filters: [Filter] = [.speed, .rhythm, .control, .reaction]
//        for filter in filters {
//            let games = dataModel.tags
//                .filter { $0.filter == filter }
//                .flatMap { tag in
//                    [tag.skillLevel.highSchool, tag.skillLevel.college, tag.skillLevel.professional].flatMap { $0 }
//                }
//                .map { $0.gameName }
//            gamesByFilter[filter] = games
//        }
//    }
//}

//class MyDataViewModel: ObservableObject {
//    @Published var gamesByFilter: [Filter: [String]] = [:]
//
//    init() {
//        loadData()
//    }
//
//    func loadData() {
//        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
//            print("JSON file not found")
//            return
//        }
//
//        do {
//            let jsonData = try Data(contentsOf: url)
//            let decodedData = try JSONDecoder().decode(MyDataModel.self, from: jsonData)
//            updateGamesByFilter(from: decodedData)
//        } catch {
//            print("Error decoding JSON: \(error)")
//        }
//    }
//
//    private func updateGamesByFilter(from dataModel: MyDataModel) {
//        for filter in Filter.allCases {
//            let games = dataModel.tags
//                .filter { $0.filter == filter }
//                .flatMap { tag in
//                    [tag.skillLevel.highSchool, tag.skillLevel.college, tag.skillLevel.professional].flatMap { $0 }
//                }
//                .map { $0.gameName }
//            gamesByFilter[filter] = games
//        }
//    }
//}



//class MyDataViewModel: ObservableObject {
//    @Published var gamesBySkillLevel: [String: [String]] = [:]
//
//    init() {
//        loadData()
//    }
//
//    func loadData() {
//        // Assuming you load the JSON data here and decode it into MyDataModel
//        // After loading and decoding, call:
//        categorizeGamesBySkillLevel()
//    }
//
//    func categorizeGamesBySkillLevel() {
//        // Assuming you have the MyDataModel instance (let's call it 'decodedData')
//        // This is a placeholder. Use your actual decoded data from JSON.
//        guard let url = Bundle.main.url(forResource: "data", withExtension: "json") else {
//                   print("JSON file not found")
//                   return
//               }
//        do {
//            // Example categorization logic (adjust according to your actual data structure)
//            let jsonData = try Data(contentsOf: url)
//            let decodedData = try JSONDecoder().decode(MyDataModel.self, from: jsonData)
//            
//            for tag in decodedData.tags where tag.filter == .speed {
//                gamesBySkillLevel["HighSchool"] = tag.skillLevel.highSchool.map { $0.gameName }
//                gamesBySkillLevel["College"] = tag.skillLevel.college.map { $0.gameName }
//                gamesBySkillLevel["Professional"] = tag.skillLevel.professional.map { $0.gameName }
//            }
//        } catch {
//                    print("Error decoding JSON: \(error)")
//                }
//    }
//
//    // Add a refreshData function if needed
//}



class MyDataViewModel: ObservableObject {
    @Published var myData: MyDataModel?

    func loadData() {
        guard let url = Bundle.main.url(forResource: "Practice", withExtension: "json"),
              let jsonData = try? Data(contentsOf: url) else {
            print("JSON file not found")
            return
        }

        self.myData = try? JSONDecoder().decode(MyDataModel.self, from: jsonData)
    }
}


