## FootballTeamGenerator ⚽️

Given a set of players, like: 

```swift
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
```

It will output two teams:

```
------------    Team 1    ------------ 
1. Player5
2. Player6
3. Player2
4. Player4
5. Player8
6. Player10
------------   Total:28   ------------ 


------------    Team 2    ------------ 
1. Player11
2. Player12
3. Player3
4. Player7
5. Player9
6. Player1
------------   Total:27   ------------ 
```

Where the goal is to have a random, but "more or less" balanced teams. 😅

