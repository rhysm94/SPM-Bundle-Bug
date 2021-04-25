# SPM-Bundle-Bug

A demonstration of a bug in Swift Package Manager's `Bundle.module` handling, for Xcode Previews

Includes two modules:

- ## Bar
This holds the data type designed to be shared across other modules.
It also holds the English and Welsh localisations for `Bar.helloWorld`

- ## FooFeature
A very small example of a feature module, which depends upon Bar.
It features a View which creates an instance of `Bar` to access its `helloWorld` property, to display.
The code compiles, and works at runtime. However, the Xcode Preview for this view crashes with the following error:

```
Application Specific Information:
Fatal error: unable to find bundle named SPM-Bundle-Bug_Bar: file Bar/resource_bundle_accessor.swift, line 27


Thread 0 Crashed:: Dispatch queue: com.apple.main-thread
0   libswiftCore.dylib            	0x00007fff2c8600f4 _assertionFailure(_:_:file:line:flags:) + 532
1   FooFeature                    	0x000000010a89350c closure #1 in variable initialization expression of static NSBundle.module + 2620
```
