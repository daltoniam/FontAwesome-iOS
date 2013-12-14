# FontAwesome-iOS #

FontAwesome-iOS takes the amazing font awesome (see that here: [FontAwesome](https://github.com/FortAwesome/Font-Awesome) ) and makes it a simple category to make embedding the icons simple.

# Requirements/Dependencies  #

Requires that you embed and use the Font Awesome font in your app.

Requires at least iOS 5/OSX 10.7 or above. Also required is: https://github.com/daltoniam/FontAwesome-iOS.

How to add a custom font to iOS app:

1. Download the [FontAwesome](https://github.com/FortAwesome/Font-Awesome) font.
2. Add that font files into your project using Xcode as a resource. Make sure it is part of the "Copy Bundle Resources" in the Build Phases.
3. Add a key to your Info.plist file called UIAppFonts. (Friendly name is: Fonts provided by application)
4. Make sure this key an array.
5. Enter the full name of your font file (including the extension) as an item to the UIAppFonts array. (Usually fontawesome-webfont.ttf)
6. Save your Info.plist.
7. Now in your application you can simply call [UIFont fontWithName:@"FontAwesome" size:12] to get the custom font to use with your UILabels and UITextViews, etc…

Also see this:

http://codewithchris.com/common-mistakes-with-adding-custom-fonts-to-your-ios-app/

If you get lost.

# example

```objc
UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 20, 100, 44)];
label.font = [UIFont fontWithName:@"FontAwesome" size:20];
label.text =  [NSString awesomeIcon:FaTwitter];
```

# install #

The recommended approach for installing FontAwesome-iOS is via the CocoaPods package manager, as it provides flexible dependency management and dead simple installation.

via CocoaPods

Install CocoaPods if not already available:

	$ [sudo] gem install cocoapods
	$ pod setup
Change to the directory of your Xcode project, and Create and Edit your Podfile and add FontAwesome-iOS:

	$ cd /path/to/MyProject
	$ touch Podfile
	$ edit Podfile
	platform :ios, '5.0'
	# Or platform :osx, '10.7'
	pod 'FontAwesome-iOS'

Install into your project:

	$ pod install

Open your project in Xcode from the .xcworkspace file (not the usual project file)

# License #

##[FontAwesome](https://github.com/FortAwesome/Font-Awesome) License

* The Font Awesome font is licensed under the [SIL Open Font License](http://scripts.sil.org/OFL)
* Font Awesome CSS, LESS, and SASS files are licensed under the [MIT License](http://opensource.org/licenses/mit-license.html)
* The Font Awesome pictograms are licensed under the [CC BY 3.0 License](http://creativecommons.org/licenses/by/3.0)
* Attribution is no longer required in Font Awesome 3.0, but much appreciated:
* *"Font Awesome by Dave Gandy - http://fortawesome.github.com/Font-Awesome"*

# Contact #

### Dalton Cherry ###
* https://github.com/daltoniam
* http://twitter.com/daltoniam
