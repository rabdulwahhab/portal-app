# Portal App

This is the official repo for the portal app.

***NOTE:*** You will need to install the Expo Go app on your iPhone to demo the ios app.

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

You can get the web app dev server going with:
```
yarn web
```

And then navigate to http://localhost:19006 in your browser.

You can get the ios app dev server going with (see note below):
```
yarn ios
```

***NOTE:*** You will need to install Xcode on your mac. _You cannot build the ios app in the docker container, but rather must run on your mac. This is because the docker container is a Linux OS. When doing this, make sure your node version matches that of the docker image! This cannot be stressed enough and will save you headaches in debugging (tip: use [`nvm`](https://github.com/nvm-sh/nvm))._

---
#### References
[Expo Docs](https://docs.expo.dev/tutorial/introduction/)
[TailwindCSS Docs](https://tailwindcss.com/docs/installation)
[NativeWind Docs](https://www.nativewind.dev/)
[Fastlane](https://fastlane.tools/)
