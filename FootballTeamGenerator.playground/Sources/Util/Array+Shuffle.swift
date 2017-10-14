import Foundation

// From here: https://gist.github.com/ijoshsmith/5e3c7d8c2099a3fe8dc3
extension Array {
    func shuffled() -> Array {
        var temp = self
        for _ in 0..<temp.count {
            temp.sort { (_,_) in arc4random() < arc4random() }
        }
        return temp
    }
}
