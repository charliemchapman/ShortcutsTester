import UIKit
import Intents

class CustomIntentHandler: NSObject, CustomTestIntentHandling {
    func handle(intent: CustomTestIntent, completion: @escaping (CustomTestIntentResponse) -> Void) {
        completion(CustomTestIntentResponse(code: CustomTestIntentResponseCode.success, userActivity: nil))
    }

    func resolveCustom(for intent: CustomTestIntent, with completion: @escaping (CustomTypeResolutionResult) -> Void) {
        completion(CustomTypeResolutionResult.success(with: CustomType(identifier: "1", display: "Custom 1")))
    }

    func provideCustomOptionsCollection(for intent: CustomTestIntent, with completion: @escaping (INObjectCollection<CustomType>?, Error?) -> Void) {
        let customTypes = [
            CustomType(identifier: "1", display: "Custom 1"),
            CustomType(identifier: "2", display: "Custom 2"),
            CustomType(identifier: "3", display: "Custom 3"),
            CustomType(identifier: "4", display: "Custom 4"),
            CustomType(identifier: "5", display: "Custom 5")
        ]

        completion(INObjectCollection(items: customTypes), nil)
    }
}
