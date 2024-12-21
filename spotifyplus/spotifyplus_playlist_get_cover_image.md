# Blueprint Summary

__SpotifyPlus Playlist Get Cover Image__

Retrieves a Spotify Playlist cover image from a CDN and stores it on the local HA instance.

Use the following links for more information.
* [Requirements](#requirements)
* [What It Does](#what-does-it-do)
* [How It Works](#how-it-works)
* [Import Blueprint](#import-blueprint)
* [Change Log](#change-log)


# Requirements
* [SpotifyPlus integration, version 1.0.75+](https://github.com/thlucas1/homeassistantcomponent_spotifyplus/wiki)


# What It Does

Retrieves a Spotify Playlist cover image from a CDN and stores it on the local HA instance.


# How It Works

The `spotifyplus.get_playlist_cover_image` service is called on the specified SpotifyPlus media player to retrieve the cover image url for the specified Spotify playlist id.

The `spotifyplus.get_cover_image_file` service is then called on the specified SpotifyPlus media player to transfer the url contents to the output path on the local HA server instance.


# Import Blueprint

Use the following link to import the blueprint into your Home Assistant image.

<a href="https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fthlucas1%2Fhomeassistant_blueprints%2Fblob%2Fmaster%2Fspotifyplus%2Fspotifyplus_playlist_get_cover_image.yaml%3Fversion=1.0.0"><img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy"></a>


# Change Log

#### [ 1.0.0 ] - 2024/12/24

  * Initial release.
