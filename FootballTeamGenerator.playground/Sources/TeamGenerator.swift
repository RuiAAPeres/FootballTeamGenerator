public typealias Team = [Player]
public typealias Teams = (Team, Team)

public func generateTeams(_ allPlayers: [Player]) -> Teams {

    func intoTwoTeams(teams: Teams, player: Player) -> Teams {

        let lhsTeam = teams.0
        let rhsTeam = teams.1

        if totalScore(lhsTeam) > totalScore(rhsTeam) {
            return (lhsTeam, rhsTeam + [player])
        }
        else {
            return (lhsTeam + [player], rhsTeam)
        }
    }

    return allPlayers.shuffled().reduce(([], []), intoTwoTeams)
}

private func totalScore(_ team: Team) -> Int {
    func toScore(_ score: Int, player: Player) -> Int {
        return score + player.skills.total
    }
    return team.reduce(0, toScore)
}

public func prettyPrint(_ teams: Teams) {
    let team1 = teams.0
    let team2 = teams.1

    func printPlayer(_ position: Int, _ player: Player) {
        print("\(position + 1). \(player.name)")
    }



    func printTeam(_ teamName: String, _ team: Team) {
        print("------------    \(teamName)    ------------ ")
        team.enumerated().forEach(printPlayer)
        print("------------   Total:\(team |> totalScore)   ------------ ")
    }

    printTeam("Team 1", team1)
    print("\n")
    printTeam("Team 2", team2)
}
