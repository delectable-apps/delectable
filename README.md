> This plugin is still in the works. Join our [Discord community](https://discord.gg/zH8Pqws8) and we'll let you know once it's ready for beta.

The spirit of WAGMI, now in your Flutter app.

Delectable is a platform for managing and distributing rewards to users for completing challenges/bounties within your app.

## Features

Use this plugin in your Flutter app to:
- Tag in-app events you want to run bounties on using `delectable.track()`
- Generate a "burner" Solana wallet for receiving rewards
- Use pre-built screens for rewards history and basic wallet functions

## Getting started

- Sign up for an account and get an API token at https://delectable.dev
- Plan in-app events that you want to track
- Install the plugin and start tagging events
- Monitor how frequent each event is called
- Create your first in-app bounty 

## Usage

This section has examples of code for the following tasks:
- Initializing the plugin
- Tracking events
- Using the pre-built screens

### Initializing the plugin
After installing the package and getting an API token on the platform, you can initialize the plugin within your app using the following snippet of code.
```dart
import 'package:delectable/delectable.dart';

delectable = await Delectable.init('YOUR TOKEN');
```

### Tracking events
You can track events by calling `delectable.track()` when a user performs specific actions within your app.
```dart
delectable.track('YOUR EVENT NAME');
```

### Using the pre-built screens
Add the following screen to your routes and we'll handle the rest.
```dart
'/rewards': (context) {
    return DelectableScreen();
},
```

## Additional information

You can find more information on the Delectable website:<br> 
https://delectable.dev

File issues or contribute to the package on the Github repo:<br>
https://github.com/delectable-apps/delectable

And join our developers' Discord community here:<br>
https://discord.gg/zH8Pqws8

