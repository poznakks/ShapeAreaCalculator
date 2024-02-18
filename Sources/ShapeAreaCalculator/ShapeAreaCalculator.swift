import Foundation

// Не понятно как именно нужно было организовать добавление новых фигур
// Решил сделать массив с типом протокола и нужные методы для добавления и вычисления площадей
public final class ShapeAreaCalculator {
    
    private var shapes: [Shape] = []
    
    public init() {}
    
    public func addShape(_ shape: Shape) {
        shapes.append(shape)
    }
    
    public func calculateAreaForAllShapes() -> [Double] {
        shapes.map { $0.area() }
    }
}
