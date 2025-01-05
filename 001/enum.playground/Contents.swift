enum CompassPoint {
    case north
    case south
    case east
    case west
}

var directionToHead = CompassPoint.west

switch directionToHead {
case .north:
    print("北へ進む")
case .south:
    print("南へ進む")
case .east:
    print("東へ進む")
case .west:
    print("西へ進む")
}
