import IDwallToolkit


@objc(Wall)
class Wall: RCTEventEmitter  {
  @objc override func supportedEvents() -> [String]! {
    return ["TOKEN"]
  }
  var event: RCTEventEmitter!
@objc
func startSDK() {
  DispatchQueue.main.async(execute: {
    IDwallToolkitSettings.sharedInstance().initWithAuthKey(("your_key"))
    let colorScheme = ColorScheme()
    IDwallToolkitSettings.sharedInstance().setColorScheme(colorScheme)
        IDwallToolkitFlow.sharedInstance().startComplete(with:
        IDwallDocumentTypeAny, andCallBack: { (data, error) in
        if let validError = error {
          print(validError)
        } else if let validData = data {
          self.sendEvent(withName: "TOKEN",body: validData["token"] as! String);
      }
    })
  })
}

@objc
  override static func requiresMainQueueSetup() -> Bool {
return true
}
  

}
