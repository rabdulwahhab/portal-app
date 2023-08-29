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
docker run -it -p 4000:4000 -v $PWD/portal:/root/portal portal:latest /bin/bash
```

You can alias these commands for easier usage.

Once inside the container, `cd portal/`. This contains the app code.

You can get the web app dev server going with:
```
yarn web
```

You can get the ios app dev server going with:
```
yarn ios
```

---
#### References
[Expo Docs](https://docs.expo.dev/tutorial/introduction/)