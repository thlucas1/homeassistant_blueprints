# Blueprint Summary

__SoundTouch NowPlaying Advertisement Mute__

Mutes a SoundTouchPlus media player if the currently playing source is identified as an advertisement.  

Note that not all sources track advertisements.
- TuneIn source does not track advertisements; 
- Pandora music service source tracks advertisements.
- The above are the only sources I have tested with.  I am not sure if other sources (e.g. Spotify, SiriusXM, Deeezer, iHeart, etc) support advertisement detection or not.

Use the following links for more information.
* [Requirements](#requirements)
* [What It Does](#what-does-it-do)
* [How It Works](#how-it-works)
* [Import Blueprint](#import-blueprint)
* [Change Log](#change-log)


# Requirements
* [SoundTouchPlus integration, version 1.0.36+](https://github.com/thlucas1/homeassistantcomponent_soundtouchplus/wiki)


# What It Does

Use this blueprint to automatically mute the volume of a SoundTouch media player when the currently playing source starts playing an advertisement.  

This blueprint should be used in conjunction with the [SoundTouch NowPlaying Advertisement UnMute]() blueprint, which unmutes the media player when the advertisement is done playing.


# How It Works

The SoundTouch device supports various music services (Spotify, TuneIn, Pandora, etc) out of the box.  Some of these source support advertisement detection, so that an attribute in the NowPlayingStatus is set when an advertisement starts playing and is reset when the advertisement is done playing.

The IsAdvertisement flag is set in the SoundTouchPlus media player's custom state attributes, and will update when a NowPlaying status update is received from the SoundTouch device.  This attribute is then used in this blueprint automation, by muting the volume when it changes from false to true.


# Import Blueprint

Use the following link to import the blueprint into your Home Assistant image.

<a href="https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fthlucas1%2Fhomeassistant_blueprints%2Fblob%2Fmaster%2Fsoundtouchplus%2Fnowplaying_advertisement_mute.yaml"><img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy"></a>


# Change Log

#### [ 1.0.0 ] - 2024/03/22

  * Initial release.
