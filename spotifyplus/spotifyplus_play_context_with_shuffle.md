# Blueprint Summary

__SpotifyPlus Play Context with Shuffle__

Plays a Spotify Playlist, Album, or Artist context with Shuffle enabled on the specified SpotifyPlus media player.  

Use the following links for more information.
* [Requirements](#requirements)
* [What It Does](#what-does-it-do)
* [How It Works](#how-it-works)
* [Import Blueprint](#import-blueprint)
* [Change Log](#change-log)


# Requirements
* [SpotifyPlus integration, version 1.0.43+](https://github.com/thlucas1/homeassistantcomponent_spotifyplus/wiki)


# What It Does

Play a Spotify playlist, album, or artist context with shuffle mode enabled, on the specified SpotifyPlus media player.

It also allows playback to start at a specific track in the context if desired, as well as supports targeting a specific Spotify Connect Player device id.


# How It Works

The `spotifyplus.player_set_shuffle_mode` service is called on the specified SpotifyPlus media player to enable shuffle mode.

The `spotifyplus.player_media_play_context` service is then called on the specified SpotifyPlus media player to start play of the specified Spotify context URI.


# Import Blueprint

Use the following link to import the blueprint into your Home Assistant image.

<a href="https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fthlucas1%2Fhomeassistant_blueprints%2Fblob%2Fmaster%2Fspotifyplus%2Fspotifyplus_play_context_with_shuffle.yaml%3Fversion=1.0.1b"><img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy"></a>


# Change Log

#### [ 1.0.0 ] - 2024/07/22

  * Initial release.

#### [ 1.0.1 ] - 2024/07/23

  * Switched media_player service calls to equivalent spotifyplus service calls.
