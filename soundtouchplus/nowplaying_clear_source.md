# Blueprint Summary

__SoundTouch NowPlaying Status Clear for Source__

Clears SoundTouchPlus source-specific NowPlaying status for the specified SoundTouch Source.

Use the following links for more information.
* [Requirements](#requirements)
* [What It Does](#what-does-it-do)
* [How It Works](#how-it-works)
* [Import Blueprint](#import-blueprint)
* [Change Log](#change-log)


# Requirements
* [SoundTouchPlus integration, version 1.0.30+](https://github.com/thlucas1/homeassistantcomponent_soundtouchplus/wiki)


# What It Does

Use this blueprint to manually clear the SoundtouchPlus NowPlayingStatus for a given source title.  

This blueprint should be used in conjunction with other blueprints that manually update the SoundtouchPlus NowPlayingStatus for a given source title (e.g. [NowPlaying Update Kodi Movie](./nowplaying_update_kodi_movie.md), [NowPlaying Update Kodi Music](./nowplaying_update_kodi_music.md), [NowPlaying Update Kodi TVShow](./nowplaying_update_kodi_tvshow.md), etc). 


# How It Works

For music service sources (Spotify, TuneIn, Pandora, etc), the SoundTouch device automatically updates the SoundTouchPlus integration NowPlayingStatus with information returned from the source (e.g. album name, cover art image, track name, etc).  This works really well for keeping the Home Assistant UI informed of current status for sources that support it.

For source that do not support automatic updates, the SoundTouch device does not provide the SoundTouchPlus integration with updates from the source - it simply reports that something is playing and that's it.  This is expected behavior, as the SoundTouch device knows nothing about the source other than it is selected and it is using it as an audio source.

To account for this, the SoundTouchPlus integration provides a custom service that allows you to send it updates (as frequently as you wish) with status updates for a given source.  For example, the SoundTouchPlus integration does not receive any NowPlayingStatus updates if my SoundTouch 300 soundbar is being used as the source (e.g. Product (TV)) for content played by a Kodi Media Player.  I can setup automations from Kodi attribute changes that supply these updates (e.g. a cover art image, movie title, track name, etc) to the SoundTouchPlus integration for the `Product (TV)` source.  It will then display these NowPlayingStatus updates in the SoundTouchPlus media player for the given source.

Once you are finished providing NowPlayingStatus updates to the SoundTouchPlus integration, use a call to the [NowPlaying Clear Source](./nowplaying_clear_source.md) blueprint to remove the source-specific NowPlayingStatus updates.  

Note that if you do not remove the source-specific NowPlayingStatus, then the last update you provided will continue to be shown as the current status and will remain in effect until you restart Home Assistant or reload the SoundTouchPlus integration.


# Import Blueprint

Use the following link to import the blueprint into your Home Assistant image.

<img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy">

<a href="https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fthlucas1%2Fhomeassistant_blueprints%2Fblob%2Fmaster%2Fsoundtouchplus%2Fnowplaying_clear_source.yaml"><img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy"></a>


# Change Log

#### [ 1.0.0 ] - 2024/03/05

  * Initial release.
