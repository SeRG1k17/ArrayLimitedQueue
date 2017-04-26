// The Player data type stores a random name, and a random number of
// points from -5000 - 5000.
public struct Player: Comparable {
    public var name: String
    public var points: Int
    
    public init() {
        self.name = String.random()
        self.points = random(min: -5000, max: 5000)
    }
    
    public init(name: String, points: Int) {
        self.name = name
        self.points = points
    }
    
}

// Player x is equal to Player y if and only if both players have the
// same name and number of points.
public func == (x: Player, y: Player) -> Bool {
    return x.name == y.name && x.points == y.points
}

// Player x is less than Player y if x has less points than y.
public func < (x: Player, y: Player) -> Bool {
    return x.points < y.points
}
