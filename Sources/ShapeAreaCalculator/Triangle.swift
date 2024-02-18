import Foundation

public struct Triangle: Shape {
    
    private let sideA: Double
    private let sideB: Double
    private let sideC: Double
    
    public var isRightAngled: Bool {
        let sides = [sideA, sideB, sideC].sorted()
        return sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]
    }
    
    private var halfPerimeter: Double {
        (sideA + sideB + sideC) / 2
    }
    
    // В задании ничего не сказано про проверку правильности фигуры
    // Например, что любые две стороны треугольника больше третьей
    // Решил сделать проверку на это и бросать ошибку в ините
    public init(sideA: Double, sideB: Double, sideC: Double) throws {
        let sides = [sideA, sideB, sideC].sorted()
        guard sides[0] + sides[1] > sides[2] else {
            throw TriangleError.triangleRuleNotRespected
        }
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }
    
    public func area() -> Double {
        sqrt(halfPerimeter * (halfPerimeter - sideA) * (halfPerimeter - sideB) * (halfPerimeter - sideC))
    }
}

public enum TriangleError: Error {
    case triangleRuleNotRespected
}
