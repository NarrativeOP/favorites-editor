# Favorites Editor
Create a truly great collection of Narrative Favorites by easily quick editing them with the Favorite Editor.

## Requirements
Requires npm for handling its only dependency; Bower. You should be fine with just Bower.

## Getting started

Install Bower if you do not already have it by issuing the following command.
```sh
$ npm install
```

After this (or if you already have bower globally installed) install the dependencies with
```sh
$ bower install
```

Now, you're good to go!

### NOTE

Currently, `bower_componets` is included in the repository. This is partly because we want 
to be able to serve this app on GitHub, and partly because a small hotfix needed to be done 
to Angular Swing, until this is taken care of in the main repository.

## Usage

To use the app on another location, a new Narrative Open Platform app needs to 
be created. Configure the client ID and client secret for the app as follows:
```javascript
NarrativeAuthProvider.defaults.oauthApplication = {
  clientID: "my-client-id",
  clientSecret: "my-client-secret"
};
```

Configure your Narrative Open Platform App with the Redirect URL that you are serving
your Favorites Editor app from.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request :D

## Credits

* Author: Anton Amlinger
