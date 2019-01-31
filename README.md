# brew tap to install graalvm

## Register Tap

```
brew tap aahmed-se/homebrew-graalvm
```

## Install Graalvm
```
brew install graalvm
```

## Run Hello World

```
wget "https://raw.githubusercontent.com/leereilly/hello-world-java/master/HelloWorld.java"
gjavac HelloWorld.java
gjava HelloWorld
gnative-image HelloWorld
./helloworld
```
