//
//  FooView.swift
//  FooFeature
//
//  Created by Rhys Morgan on 25/04/2021.
//

import Bar
import SwiftUI

struct FooView: View {
	///	Just initialising a `Bar` causes Xcode Previews to crash, as it
	///	The crash log has these telltale lines:
	///	```
	///	Application Specific Information:
	///	Fatal error: unable to find bundle named SPM-Bundle-Bug_Bar: file Bar/resource_bundle_accessor.swift, line 27
	///
	///
	///	Thread 0 Crashed:: Dispatch queue: com.apple.main-thread
	///	0   libswiftCore.dylib            	0x00007fff2c8600f4 _assertionFailure(_:_:file:line:flags:) + 532
	///	1   FooFeature                    	0x000000010a89350c closure #1 in variable initialization expression of static NSBundle.module + 2620

	///	```
	///
	///	So even though I'm following the recommendations and creating a typed accessor instead of exposing the whole Bundle, the Xcode Preview cannot find the value
	let bar = Bar()
	
    var body: some View {
		Text(bar.helloWorld)
    }
}

struct FooView_Previews: PreviewProvider {
    static var previews: some View {
        FooView()
			.previewDevice("iPhone 12 Pro")
    }
}
