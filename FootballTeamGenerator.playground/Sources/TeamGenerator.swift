public typealias Teams = ([Player], [Player])

private func shuffle(_ players: [Player]) -> [Player] {
    func score(lhs: Player, rhs: Player) -> Bool {
        return lhs.skills.total > rhs.skills.total
    }
    return players.shuffled().sorted(by: score)
}

public func generateTeams(_ players: [Player]) -> Teams {

    func intoTwoTeams(teams: Teams, player: Player) -> Teams {

        let lhsTeam = teams.0
        let rhsTeam = teams.1

        if lhsTeam.count > rhsTeam.count {
            return (lhsTeam, rhsTeam + [player])
        }
        else {
            return (lhsTeam + [player], rhsTeam)
        }
    }

    return shuffle(players).reduce(([], []), intoTwoTeams)
}

public func prettyPrint(_ teams: Teams) {
    let team1 = teams.0
    let team2 = teams.1

    func printPlayer(_ position: Int, _ player: Player) {
        print("\(position + 1). \(player.name)")
    }

    func totalScore(_ team: [Player]) -> Int {
        func toScore(_ score: Int, player :Player) -> Int {
            return score + player.skills.total
        }

        return team.reduce(0, toScore)
    }

    func printTeam(_ teamName: String, _ team: [Player]) {
        print("------------    \(teamName)    ------------ ")
        team.enumerated().forEach(printPlayer)
        print("------------   Total:\(team |> totalScore)   ------------ ")
    }

    printTeam("Team 1", team1)
    print("\n")
    printTeam("Team 2", team2)
}
