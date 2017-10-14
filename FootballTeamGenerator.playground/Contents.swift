let p1 = Player(name: "Player1", skills: Skills(pass: .low, shot: .medium, stamina: .medium, dribble: .medium))
let p2 = Player(name: "Player2", skills: Skills(pass: .medium, shot: .high, stamina: .low, dribble: .medium))
let p3 = Player(name: "Player3", skills: Skills(pass: .medium, shot: .high, stamina: .low, dribble: .medium))
let p4 = Player(name: "Player4", skills: Skills(pass: .medium, shot: .high, stamina: .medium, dribble: .low))
let p5 = Player(name: "Player5", skills: Skills(pass: .high, shot: .medium, stamina: .high, dribble: .high))
let p6 = Player(name: "Player6", skills: Skills(pass: .medium, shot: .medium, stamina: .medium, dribble: .high))

let p7 = Player(name: "Player7", skills: Skills(pass: .low, shot: .high, stamina: .medium, dribble: .medium))
let p8 = Player(name: "Player8", skills: Skills(pass: .medium, shot: .high, stamina: .low, dribble: .medium))
let p9 = Player(name: "Player9", skills: Skills(pass: .medium, shot: .high, stamina: .low, dribble: .medium))
let p10 = Player(name: "Player10", skills: Skills(pass: .medium, shot: .high, stamina: .medium, dribble: .low))
let p11 = Player(name: "Player11", skills: Skills(pass: .high, shot: .medium, stamina: .high, dribble: .high))
let p12 = Player(name: "Player12", skills: Skills(pass: .medium, shot: .medium, stamina: .medium, dribble: .high))

let players: [Player] = [p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12]

private func generate() -> Teams {
    return players |> generateTeams
}

func main() {
    generate() |> prettyPrint
}
