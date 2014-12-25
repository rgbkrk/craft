craft
=====

Minecraft server running [CanaryMod](http://canarymod.net/) with [ScriptCraft](https://github.com/walterhiggins/ScriptCraft) set up.

# Running

```console
$ git clone https://github.com/rgbkrk/craft.git
$ docker build -t rgbkrk/craft .
$ docker run -it -p 25565:25565 rgbkrk/craft
```

## Client side requirements

* Minecraft 1.7.10
* Java 8

On OS X, the java used is likely the system Java 6. Set the java launcher path in the minecraft settings to `/usr/bin/java`.
