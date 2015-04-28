# MeteorJS Docker image

This is a basic MeteorJS docker image with a provided docker-compose.yml as an example.

# Example: Orion

To build an orionCMS project, one could have the following structure:

```
.
├── bin
│   └── meteor
├── docker
│   ├── docker-compose.yml
│   └── Dockerfile
└── src
    ├── app.css
    ├── app.html
    ├── app.js
    └──.meteor
        ├── .finished-upgraders
        ├── .gitignore
        ├── .id
        ├── packages
        ├── platforms
        ├── release
        └── versions
```

The ```bin/meteor``` would be a docker command for running meteor using this image:

``` docker-compose -f ../docker/docker-compose.yml run web meteor $* ```

You could strip the ```Dockerfile``` and move the ```docker-compose.yml``` into the root, this is just an example.

The ```src``` is essentially your app

## Installing orion
```./bin/meteor add orionjs:core``` etc

# Feedback

Please post an issue on the issuetracker!
