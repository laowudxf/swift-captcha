# swift-captcha

A simple captcha library base SwiftGD which is a simple Swift wrapper for libgd.

## Installation

Install the GD library on your computer. If you're using macOS, install [Homebrew](http://brew.sh/) then run the command `brew install gd`. If you're using Linux, run `apt-get libgd-dev` as root.

Modify your Package.swift file to include the following dependency:

    .package(url: "https://github.com/laowudxf/swift-captcha.git", from: "0.1.2")

and modify add following product in your target's dependency

	.product(name: "Captcha", package: "swift-captcha")

### Usage

```swift
let image = drawContent(content: randomString(length: 4))
let data = try image?.export(as: .png)
```



