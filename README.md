# WYD

Plan an event in seconds, make memories for a lifetime.

## Getting Started

### Prequisites
* Xcode and CocoaPods are needed to run this project. Make sure you have Xcode and CocoaPods installed on your local machine.
* Clone/ download the zipfile of this app project.

### Installing
* Open Terminal.
* CD to the folder of where the project has been cloned/ downloaded.
* All necessary cocoapods needed for this project are included (AlamoFire, FacebookSDK, Firebase, Kingfisher, SwiftMailgun, and Toucan).

Install the cocoapods needed by entering the below after cding into the project folder
```
pod install
```

## Run Project on Mac's iPhone Simulator
* Open the placeholderName project and open the file that says "whosfree.xcworkspace."
* Xcode will load the project for you. Click on "whosfree" in the left sidebar.
* On the upper left hand side of Xcode is play button, click to run project, an iPhone simulator will popup and take a few minutes to load.
* Click on the "Create Account" button.
* Enter a username, a first name, a last name, a valid email address, and a password (minimum six characters) in the designated textfields.
* Click on the "Sign Up" button.
* Check your email inbox for a verification email (in case it doesn't appear, check the SPAM folder).
* Verify your email address and start making events on WYD.

#### Create an Event
<a href="https://imgflip.com/gif/27tg9q"><img src="https://i.imgflip.com/27tg9q.gif" title="made at imgflip.com"/></a>
#### Select Place
<a href="https://imgflip.com/gif/27tgj3"><img src="https://i.imgflip.com/27tgj3.gif" title="made at imgflip.com"/></a>
<a href="https://imgflip.com/gif/27tgmx"><img src="https://i.imgflip.com/27tgmx.gif" title="made at imgflip.com"/></a>
#### Set Time, Set Date, and Invite Friends
<a href="https://imgflip.com/gif/27th6m"><img src="https://i.imgflip.com/27th6m.gif" title="made at imgflip.com"/></a>
#### RSVP
<a href="https://imgflip.com/gif/27thbp"><img src="https://i.imgflip.com/27thbp.gif" title="made at imgflip.com"/></a>
#### Chat with Friends Invited to an Event
<a href="https://imgflip.com/gif/27thm5"><img src="https://i.imgflip.com/27thm5.gif" title="made at imgflip.com"/></a>
#### Search for Venue Directions
<a href="https://imgflip.com/gif/27then"><img src="https://i.imgflip.com/27then.gif" title="made at imgflip.com"/></a>

## Step-By-Step Instructions To Create An Event
1) When you open the app you'll see the events page. This will have all of the events you've made along with the events you've been invited to.
2) When you tap the plus button in the upper right corner it will take you to the create event page. 
3) You can give your event a title (e.g. "Sushi Night") and a description (e.g. "Celebrating our Success!").
4) When you tap on search for a place, you'll be taken to the place search page. Here you can see what is available around you, or tap the icon next to the Searchbar and choose a different location. When you press enter, the page will refresh and show you options based on your criteria. You can tap on a place for more details, or tap the select place button to choose the place immediately
5) When you select a place it will take you back to the event you're creating, the banner picture and address will auto-populate.
6) You can then choose a time, and also tap invite friends to invite people. The invite friends page will show you contacts from your phone. You can tap the SMS icon to send a text invite, or the email icon to send an email invite. You can also tap either icon to unselect, or send via both options. Once you've made your final choices select Done in the upper right.
7) This will send you back to the create event page, where you can tap CREATE to make the event. WYD will let your selected friends know about the event without you having to send a separate message.

## Deployment to iOS Device
It is possible to sideload this project app into your iOS device by following these instructions :

* Open the placeholderName project and open the file that says "whosfree.xcworkspace."
* Xcode will load the project for you. Click on "whosfree" in the left sidebar.
* You’ll need to change a couple of settings in order to install the app on your iPhone. First, go to “Xcode -> Preferences“, and click on the “Accounts” tab. You’ll have to add your Apple ID here. You can simply click on the plus icon in the bottom of the screen and add your Apple ID. It doesn’t need to be a developer ID, you can use your free Apple ID, as well.
* Once you have done that, you will need to change a couple of settings for the Xcode project. Firstly, change the value next to “Bundle Identifier“, and make it anything that is unique, and looks like xyz.whosfree. In my case, I’ve replaced “xyz” with my name.
* You’re all set to install WYD on your iPhone. Simply connect your iPhone to your Mac. Then, go to “Product -> Destination“, and select your iPhone from the list.
* Now, click on the “Run” button in Xcode. Xcode will then begin compiling the app for your iPhone. If you get warnings (yellow triangle signs), don’t worry about them.
* Xcode will prompt you with an error saying that you need to trust the developer on the iPhone. On your iPhone, go to “Settings -> General -> Profiles and Device Management."
* Tap on the entry under “Developer App”, and tap on “Trust."
* You can now go to your homescreen, and look for POSTR. Tap on the app to launch it.  Allow location services. WYD is ready to use!

## Built With
* [AlamoFire](https://github.com/Alamofire/Alamofire)
* [FacebookSDK](https://developers.facebook.com/docs/ios/)
* [Firebase](https://firebase.google.com/)
* [KingFisher](https://github.com/onevcat/Kingfisher)
* [Mailgun](https://www.mailgun.com/)
* [Toucan](https://github.com/gavinbunney/Toucan)

## Authors 
 * **Luis Calle** - [Github](https://github.com/Luch0), [LinkedIn](https://www.linkedin.com/in/luismcalle)
 * **Richard Crichlow** - [Github](https://github.com/dementedcactus), [LinkedIn](https://www.linkedin.com/in/richard-crichlow-9082b74/)
 * **Lisa Jiang** - [Github](https://github.com/NYCgirlLearnsToCode), [LinkedIn](https://www.linkedin.com/in/lljiang/)
 * **Maryann Yin** - [Github](https://github.com/myin125), [LinkedIn](https://www.linkedin.com/in/maryannyin/)
