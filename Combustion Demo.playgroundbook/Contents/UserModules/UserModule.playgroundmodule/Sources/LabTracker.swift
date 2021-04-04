import Foundation

public class LabTracker: ObservableObject {
    @Published var didReleaseMethane = false
    @Published var didBurnMethane = false
}
