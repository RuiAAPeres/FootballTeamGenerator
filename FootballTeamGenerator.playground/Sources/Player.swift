public struct Player: Decodable {
    public let name: String
    public let skills: Skills

    public init(name: String, skills: Skills) {
        self.name = name
        self.skills = skills
    }
}

public struct Skills: Decodable {
    public let pass: Level
    public let shot: Level
    public let stamina: Level
    public let dribble: Level

    public enum Level: Int, Decodable {
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

    public var total: Int {
        func reducer(acc: Int, level: Level) -> Int {
            return acc + level.rawValue
        }
        return [pass, shot, stamina, dribble].reduce(0, reducer)
    }
}
