# 💬 iOS SiriKit in Appcelerator Titanium
Ti.SiriKit is an open-source project to support the SiriKit API (aka Intents.framework) in Appcelerator's Titanium. 

## Requirements
  - Titanium Mobile SDK 5.5.1.GA+
  - iOS 10.0+
  - Xcode 8.0+

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

### Properties
- [x] siriLanguageCode
- [x] siriAuthorizationStatus

## Author
Hans Knoechel ([@hansemannnn](https://twitter.com/hansemannnn) / [Web](http://hans-knoechel.de))

## License
Apache 2.0

## Contributing
Code contributions are greatly appreciated, please submit a new [pull request](https://github.com/hansemannn/titanium-sirikit/pull/new/master)!
