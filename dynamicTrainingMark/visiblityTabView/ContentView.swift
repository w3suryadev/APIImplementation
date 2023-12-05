
import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = MyDataViewModel()
    var trainingMarks: [TrainingMark]
//    var trainingMarks: [TrainingMark(id: 1, positionX: 100, positionY: 430), TrainingMark(id: 2, positionX: 320, positionY: 430)]
    
    var body: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
//            VStack {
            ForEach(trainingMarks, id: \.id) { mark in
                           TranslucentCircleView(positionX: CGFloat(mark.positionX), positionY: CGFloat(mark.positionY))
                       }
            
//            TranslucentCircleView(positionX: 100, positionY: 430)
//            TranslucentCircleView(positionX: 320, positionY: 430)
//                TranslucentCircleView().position(x: 320, y: 430)
//            }
        }
        //        NavigationView {
        //
        //            List {
        //                if let data = viewModel.myData {
        //                    Section(header: Text("Mode Name")) {
        //                        Text(data.modeName)
        //                    }
        //                    Section(header: Text("Ball Confidence Level")) {
        //                        Text("\(data.ballConfidenceLevel)")
        //                    }
        ////                    ForEach(data.tags , id: \.filter) { tag in
        ////                                            Section(header: Text(tag.filter.rawValue)) {
        ////                                                skillLevelView(skillLevel: tag.skillLevel, title: "High School", games: tag.skillLevel.highSchool)
        ////                                                skillLevelView(skillLevel: tag.skillLevel, title: "College", games: tag.skillLevel.college)
        ////                                                skillLevelView(skillLevel: tag.skillLevel, title: "Professional", games: tag.skillLevel.professional)
        ////                                            }
        ////                                        }
        //                    ForEach(data.tags.filter { $0.filter == .rhythm }, id: \.filter) { tag in
        //                        Section(header: Text("RHYTHM")) {
        //                            skillLevelView(skillLevel: tag.skillLevel,title: "High School", games: tag.skillLevel.highSchool)
        //                            skillLevelView(skillLevel: tag.skillLevel,title: "College", games: tag.skillLevel.college)
        //                            skillLevelView(skillLevel: tag.skillLevel,title: "Professional", games: tag.skillLevel.professional)
        //                        }
        //                    }
        //
        //                } else {
        //                    Text("Loading data...")
        //                }
        //            }
        //            .navigationBarTitle("Game Data")
        //            .onAppear {
        //                viewModel.loadData()
        //            }
        //        }
        
        
    }
    
    @ViewBuilder
        private func skillLevelView(skillLevel: SkillLevel, title: String, games: [College]) -> some View {
            if !games.isEmpty {
                Text(title).font(.headline)
                ForEach(games, id: \.gameName) { game in
                    Text(game.gameName)
                }
            }
        }
}


struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView(trainingMarks: [
            TrainingMark(id: 1, positionX: 320, positionY: 540),
            TrainingMark(id: 2, positionX: 300, positionY: 380),
            TrainingMark(id: 3, positionX: 320, positionY: 140),
            TrainingMark(id: 4, positionX: 170, positionY: 140),
            TrainingMark(id: 5, positionX: 170, positionY: 540)
        ])
    }
}


//struct TranslucentCircleView: View {
//    var body: some View {
//        Circle()
//            .fill(Color.blue.opacity(0.5))
//            .frame(width: 95, height: 95)
//            .overlay(
//                    Circle()
//                        .stroke(Color.black, lineWidth: 1.5)
//                        )    }
//}

struct TranslucentCircleView: View {
    var positionX: CGFloat
    var positionY: CGFloat

    var body: some View {
        Circle()
            .fill(Color.blue.opacity(0.5))
            .frame(width: 95, height: 95)
            .overlay(
                Circle()
                    .stroke(Color.black, lineWidth: 1.5)
            )
            .position(x: positionX, y: positionY) // Position the circle
    }
}
