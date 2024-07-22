# Blueprint Summary

__SpotifyPlus Play Playlist with Shuffle__

Plays a Spotify Playlist with Shuffle enabled on the specified SpotifyPlus media player.

Use the following links for more information.
* [Requirements](#requirements)
* [What It Does](#what-does-it-do)
* [How It Works](#how-it-works)
* [Import Blueprint](#import-blueprint)
* [Change Log](#change-log)


# Requirements
* [SpotifyPlus integration, version 1.0.36+](https://github.com/thlucas1/homeassistantcomponent_spotifyplus/wiki)


# What It Does

Use this blueprint to automatically play a Spotify playlist, with shuffle enabled, on the specified SpotifyPlus media player.

# How It Works

The `set_shuffle` service is called on the specified SpotifyPlus media player to enable shuffle mode.

The `play_media` service is called on the specified SpotifyPlus media player to start play of the specified Spotify playlist URI.

# Import Blueprint

Use the following link to import the blueprint into your Home Assistant image.

<a href="https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fthlucas1%2Fhomeassistant_blueprints%2Fblob%2Fmaster%2FSpotifyPlus%2Fnowplaying_advertisement_muteoff.yaml"><img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy"></a>


# Change Log

#### [ 1.0.0 ] - 2024/07/22

  * Initial release.
