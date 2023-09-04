# Portal App

This is the official repo for the [Portal app]().

## Prequisites
- A Mac (for building iOS with Xcode)
- the Expo Go app on your mobile phone to demo the app
- [Docker](https://www.docker.com/)
- [NodeJS](https://github.com/nvm-sh/nvm)

The build environment is in docker. To build the docker image, run:
```
docker build --progress=plain --no-cache -t portal:latest .
```

at the project root.

Once that finishes, spin up a container with:
```
docker run -it -P -p 19006:19006 -v $PWD/portal:/root/portal portal:latest /bin/bash
```

You can alias these commands for easier usage.

Once inside the container, `cd portal/`. This contains the app code.

***Make sure you run `yarn` the first time you clone to get all the dependencies.***

## Web
You can get the web app dev server going with:
```
yarn web
```

And then navigate to http://localhost:19006 in your browser. Hot reloading works.

## iOS app
You can get the ios app dev server going with (see note below):
```
yarn ios
```

***NOTE:*** You will need to install Xcode on your mac. _You cannot build the ios app in the docker container, but rather must run on your mac. This is because the docker container is a Linux OS. When doing this, make sure your node version matches that of the docker image! This cannot be stressed enough and will save you headaches in debugging (tip: use [`nvm`](https://github.com/nvm-sh/nvm)). You may also need to install [`yarn`](https://classic.yarnpkg.com/en/) locally if you do not already have it._

### Xcode tips
You may run into some issues initializing Xcode. After installing Xcode from the app store, make sure you open it first to complete the first-time installation (go through the dialogues). Next, go to `Preferences > Locations` and in the dropdown for 'Command Line Tools' select your version. It should prompt for a password and setup the command line tools needed for Expo. If you get some `Error: EMFILE: too many open files, watch` error when trying to build, try `brew install watchman` (using [homebrew](https://brew.sh/) as pkg manager). 

---
## References
[Expo Docs](https://docs.expo.dev/tutorial/introduction/)
[TailwindCSS Docs](https://tailwindcss.com/docs/installation)
[Docker Docs](https://docs.docker.com/reference/)
[React Docs](https://react.dev/reference/react)
[React Native Docs](https://reactnative.dev/docs/getting-started)
[NativeWind Docs](https://www.nativewind.dev/)
[Fastlane](https://fastlane.tools/)
