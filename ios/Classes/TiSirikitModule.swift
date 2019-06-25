//
//  TiSirikitModule.swift
//  titanium-sirikit
//
//  Created by Your Name
//  Copyright (c) 2019 Your Company. All rights reserved.
//

import Intents
import TitaniumKit

@available(iOS 10.0, *)
@objc(TiSirikitModule)
class TiSirikitModule: TiModule {
  
  public let testProperty: String = "Hello World"
  
  func moduleGUID() -> String {
    return "7b914b8c-1790-4dc2-84aa-5b63d879fa28"
  }
  
  override func moduleId() -> String! {
    return "ti.sirikit"
  }
  
  @objc(donateInteraction:)
  func donateInteraction(args: [Any]) {
    guard let params = args.first as? [String: Any] else { return }
    guard let intentName = params["intentName"] as? String, let TiIntent = NSClassFromString(intentName) as? INIntent.Type else { return }
    guard let suggestedInvocationPhrase = params["suggestedInvocationPhrase"] as? String else { return }
    guard let callback = params["callback"] as? KrollCallback else { return }

    let intent = TiIntent.init()

    if #available(iOS 12.0, *) {
      intent.suggestedInvocationPhrase = suggestedInvocationPhrase
    }
    
    let interaction = INInteraction(intent: intent, response: nil)
    
    interaction.donate { (error) in
      guard error == nil else {
        callback.call([["success": false, "error": error!.localizedDescription]], thisObject: self)
        return
      }

      callback.call([["success": true]], thisObject: self)
    }
  }
  
  @objc(requestSiriPermissions:)
  func requestSiriPermissions(args: [Any]?) {
    guard let args = args, let callback = args.first as? KrollCallback else { return }

    INPreferences.requestSiriAuthorization { status in
      callback.call([["status": status]], thisObject: self)
    }
  }
  
  @objc(hasSiriPermissions:)
  func hasSiriPermissions(unused: Any?) -> Bool {
    return INPreferences.siriAuthorizationStatus() == .authorized
  }
}

