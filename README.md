# 💬 iOS SiriKit in Appcelerator Titanium
Ti.SiriKit is an open-source project to support the SiriKit API (aka Intents.framework) in Appcelerator's Titanium.
Intents (the concept behihind Siri) are triggered by it's Siri extension. See [this tutorial](http://docs.appcelerator.com/platform/latest/#!/guide/Creating_iOS_Extensions_-_Siri_Intents) for more infos on
how to implement Siri extensions.

Right now, the module is mainly meant to handle the autorization status and permissions. Please feel free to expose the 
specific Intents handlers (booking, calls, messages, fitness, ...) as well!

## Requirements
  - Titanium SDK 8.0.0+
  - iOS 10.0+
  - Xcode 10.0+

## Download + Setup

### Download
  * [Stable release](https://github.com/hansemannn/titanium-sirikit/releases)
  * [![gitTio](http://hans-knoechel.de/shields/shield-gittio.svg)](http://gitt.io/component/titanium-sirikit)

### Setup
Unpack the module and place it inside the `modules/iphone/` folder of your project.
Edit the modules section of your `tiapp.xml` file to include this module:
```xml
<modules>
    <module platform="iphone">ti.sirikit</module>
</modules>
```

## Supported API's

### Methods
- [x] requestSiriPermissions
- [x] hasSiriPermissions
- [x] donateInteraction

### Properties
- [x] siriLanguageCode
- [x] siriAuthorizationStatus

## Author
Hans Knoechel ([@hansemannnn](https://twitter.com/hansemannnn) / [Web](http://hans-knoechel.de))

## License
Apache 2.0

## Contributing
Code contributions are greatly appreciated, please submit a new [pull request](https://github.com/hansemannn/titanium-sirikit/pull/new/master)!
