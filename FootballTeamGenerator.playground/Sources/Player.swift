public struct Player: Decodable, Equatable {
    public let name: String
    public let skills: Skills

    public init(name: String, skills: Skills) {
        self.name = name
        self.skills = skills
    }

    public static func ==(lhs: Player, rhs: Player) -> Bool {
        return lhs.name == rhs.name &&
            lhs.skills == rhs.skills
    }
}

public struct Skills: Decodable, Equatable {
    public let pass: Level
    public let shot: Level
    public let stamina: Level
    public let dribble: Level

    public enum Level: Int, Decodable, Equatable {
        case low
        case medium
        case high
    }

    public init(pass: Level, shot: Level, stamina: Level, dribble: Level) {
        self.pass = pass
        self.shot = shot
        self.stamina = stamina
        self.dribble = dribble
    }
    
    public static func ==(lhs: Skills, rhs: Skills) -> Bool {
        return lhs.pass == rhs.pass &&
            lhs.shot == rhs.shot &&
            lhs.stamina == rhs.stamina &&
            lhs.dribble == rhs.dribble &&
            lhs.total == rhs.total
    }

    public var total: Int {
        func reducer(acc: Int, level: Level) -> Int {
            return acc + level.rawValue
        }
        return [pass, shot, stamina, dribble].reduce(0, reducer)
    }
}
