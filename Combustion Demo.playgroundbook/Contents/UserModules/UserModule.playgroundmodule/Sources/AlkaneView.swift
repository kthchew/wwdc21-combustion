import SwiftUI

public struct AlkaneView: View {
    public init(_ alkane: Alkane) {
        self.alkane = alkane
    }
    
    let alkane: Alkane
    
    public var body: some View {
        VStack {
            Text("\(alkane.member.description) (\(alkane.numberOfCarbons) carbon\(alkane.numberOfCarbons > 1 ? "s" : ""))")
                .font(.title)
            displayedFormula
        }
        .padding(.vertical)
    }
    
    var displayedFormula: some View {
        VStack {
            HStack {
                hydrogen
                horizontalBond
                carbonWithBonds
                ForEach(1..<alkane.numberOfCarbons, id: \.self) { _ in 
                    carbonWithBonds
                }
                hydrogen
            }
        }
    }
    
    var carbonWithBonds: some View {
        HStack {
            VStack {
                hydrogen
                verticalBond
                carbon
                verticalBond
                hydrogen
            }
            horizontalBond
        }
    }
    
    var carbon: some View {
        ZStack {
            Circle()
                .foregroundColor(.red)
                .frame(width: 34, height: 34)
            Text("C")
                .foregroundColor(.white)
                .font(.title)
        }
    }
    
    var verticalBond: some View {
        Rectangle()
            .foregroundColor(.primary)
            .frame(width: 3, height: 20)
    }
    
    var horizontalBond: some View {
        Rectangle()
            .foregroundColor(.primary)
            .frame(width: 20, height: 3)
    }
    
    var hydrogen: some View {
        ZStack {
            Circle()
                .foregroundColor(.primary)
                .frame(width: 27, height: 27)
            Text("H")
                .foregroundColor(.primary)
                .colorInvert()
                .font(.title)
        }
    }
}
