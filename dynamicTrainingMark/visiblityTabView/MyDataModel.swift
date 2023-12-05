
import Foundation


// MARK: - MyDataModel
struct MyDataModel: Codable {
    let modeName: String
    let ballConfidenceLevel: Int
    let ballConfig: BallConfig
    let tags: [Tag]

    enum CodingKeys: String, CodingKey {
        case modeName = "ModeName"
        case ballConfidenceLevel = "BallConfidenceLevel"
        case ballConfig = "BallConfig"
        case tags = "Tags"
    }
}

// MARK: - BallConfig
struct BallConfig: Codable {
    let iPad, iPhone: BallConfigIPad
}

// MARK: - BallConfigIPad
struct BallConfigIPad: Codable {
    let minBallHeight, maxBallHeight: Int

    enum CodingKeys: String, CodingKey {
        case minBallHeight = "MinBallHeight"
        case maxBallHeight = "MaxBallHeight"
    }
}

// MARK: - Tag
struct Tag: Codable {
    let filter: Filter
    let filterIcon: String
    let skillLevel: SkillLevel

    enum CodingKeys: String, CodingKey {
        case filter = "Filter"
        case filterIcon = "FilterIcon"
        case skillLevel = "SkillLevel"
    }
}

//enum Filter: String, Codable, {
//    case control = "Control"
//    case reaction = "Reaction"
//    case rhythm = "Rhythm"
//    case speed = "Speed"
//}

enum Filter: String, Codable, CaseIterable {
    case control = "Control"
    case reaction = "Reaction"
    case rhythm = "Rhythm"
    case speed = "Speed"
}

// MARK: - SkillLevel
struct SkillLevel: Codable {
    let highSchool, college, professional: [College]

    enum CodingKeys: String, CodingKey {
        case highSchool = "HighSchool"
        case college = "College"
        case professional = "Professional"
    }
}

// MARK: - College
struct College: Codable {
    let gameName: String
    let gameFilterType: Filter
    let trainingVideo: String?
    let gameConfig: GameConfig

    enum CodingKeys: String, CodingKey {
        case gameName = "GameName"
        case gameFilterType = "GameFilterType"
        case trainingVideo = "TrainingVideo"
        case gameConfig = "GameConfig"
    }
}

// MARK: - GameConfig
struct GameConfig: Codable {
    let iPad, iPhone: GameConfigIPad
    let scoreBoard: ScoreBoard

    enum CodingKeys: String, CodingKey {
        case iPad, iPhone
        case scoreBoard = "ScoreBoard"
    }
}

// MARK: - GameConfigIPad
struct GameConfigIPad: Codable {
    let ballLocation: [Int]
    let trainingMarkSize: Int?
    let trainingMark: [TrainingMark]?

    enum CodingKeys: String, CodingKey {
        case ballLocation = "BallLocation"
        case trainingMarkSize, trainingMark
    }
}

// MARK: - ScoreBoard
struct ScoreBoard: Codable {
}

// MARK: - TrainingMark
struct TrainingMark: Codable {
    let id, positionX, positionY: Int

    enum CodingKeys: String, CodingKey {
        case id
        case positionX = "position_x"
        case positionY = "position_y"
    }
}
