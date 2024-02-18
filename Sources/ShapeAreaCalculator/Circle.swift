import Foundation

public struct Circle: Shape {
    
    public let radius: Double
    
    // В задании ничего не сказано про проверку правильности фигуры
    // Например, что радиус должен быть неотрицательным
    // Решил сделать проверку на это и бросать ошибку в ините
    public init(radius: Double) throws {
        guard radius >= 0 else {
            throw CircleError.negativeRadius
        }
        self.radius = radius
    }
    
    public func area() -> Double {
        Double.pi * pow(radius, 2)
    }
}

public enum CircleError: Error {
    case negativeRadius
}
