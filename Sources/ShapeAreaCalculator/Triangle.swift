import Foundation

public struct Triangle: Shape {
    
    private let sideA: Double
    private let sideB: Double
    private let sideC: Double
    
    /// Checks if triangle is right-angled
    public var isRightAngled: Bool {
        let sides = [sideA, sideB, sideC].sorted()
        return sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]
    }
    
    /// Initializer either creates an object or throws an error in case of incorrect sides.
    ///
    /// Triangle rule: the sum of two smaller sides must be larger than the third side
    /// - Parameter radius: Non-negative circle radius
    public init(sideA: Double, sideB: Double, sideC: Double) throws {
        let sides = [sideA, sideB, sideC].sorted()
        guard sides[0] + sides[1] > sides[2] else {
            throw TriangleError.triangleRuleNotRespected
        }
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }

    // MARK: Shape protocol
    public func area() -> Double {
        let p = (sideA + sideB + sideC) / 2
        return sqrt(p * (p - sideA) * (p - sideB) * (p - sideC))
    }
}

public enum TriangleError: Error {
    case triangleRuleNotRespected
}
