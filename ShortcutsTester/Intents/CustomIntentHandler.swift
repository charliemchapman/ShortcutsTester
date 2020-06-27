import UIKit
import Intents

class CustomIntentHandler: NSObject, CustomIntentIntentHandling {
    func handle(intent: CustomIntentIntent, completion: @escaping (CustomIntentIntentResponse) -> Void) {
        completion(CustomIntentIntentResponse(code: CustomIntentIntentResponseCode.success, userActivity: nil))
    }

    func resolveCustom(for intent: CustomIntentIntent, with completion: @escaping (CustomTypeResolutionResult) -> Void) {
        completion(CustomTypeResolutionResult.success(with: CustomType(identifier: "1", display: "Custom 1")))
    }

    func provideCustomOptionsCollection(for intent: CustomIntentIntent, with completion: @escaping (INObjectCollection<CustomType>?, Error?) -> Void) {
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
