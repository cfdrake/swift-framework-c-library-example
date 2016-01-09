# Swift Progress Bar Framework
This is the code example from my blog article: [Wrapping a C Library in a Swift Framework](http://colindrake.me/2015/10/05/wrapping-a-c-library-in-a-swift-framework/). To see the creation of this project from the beginning to end, feel free to read the post!

If you like this, feel free to check out [my site](http://colindrake.me)!

## Motivation
[Bridging Headers](https://developer.apple.com/library/ios/documentation/Swift/Conceptual/BuildingCocoaApps/MixandMatch.html) are the recommended way of including C, C++, and Objective-C code in your Swift projects. However, the compiler does not allow you do this for Framework targets, which is a problem if you wish to create a Framework that wraps a C library.

This repository is an example of how to create a Swift framework that is able to call out to a C library without using Bridging Headers. Instead, it uses Clang [Module Mapping](http://clang.llvm.org/docs/Modules.html#module-maps).

## Example Framework
The `Progressbar` framework is exported by this example project. It includes one class: `Progressbar`.

The `Progressbar` class has one initializer that takes two required parameters: `text` and `max`, the text to display and the maximum value of the progress bar.

Each `Progressbar` instance responds to two methods: `increment` and `finish`. `increment` bumps up (and animates) the progress bar by one unit. `finish` completes the bar and finishes drawing.

## Example Framework Usage
The Xcode project contains an Xcode Playground demonstrating usage of the module. You should see a progress bar animating over the course of 30 seconds once you open this file. If you don't see it, press **⌘-Shift-Y** to ensure that the Console window is showing.

## Dependencies/Thanks
[progressbar](https://github.com/doches/progressbar) is the C library that is wrapped in this example project. The source is included with this git repository. Thanks to the [original author](https://github.com/doches) for providing a simple library to wrap!
