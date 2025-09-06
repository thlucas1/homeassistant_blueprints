# Blueprint Summary

__SpotifyPlus Pause for Google TTS Speak then Resume__

Pauses the Spotify player to play a TTS message on a Google Cast device and then resumes play after the message.

Use the following links for more information.
* [Requirements](#requirements)
* [What It Does](#what-does-it-do)
* [How It Works](#how-it-works)
* [Import Blueprint](#import-blueprint)
* [Change Log](#change-log)


# Requirements
* [SpotifyPlus integration, version 1.0.75+](https://github.com/thlucas1/homeassistantcomponent_spotifyplus/wiki)
* [Google Translate Text-To-Speech integration](https://www.home-assistant.io/integrations/google_translate/)


# What It Does

Pauses the Spotify player to play a TTS message on a Google Cast device and then resumes play after the message.


# How It Works

The `spotifyplus.player_media_pause` service is called on the specified Google Cast device to pause the Spotify player.

The `tts.speak` service is called to play the specified message text on the Google Cast device.

The `spotifyplus.player_media_resume` service is called on the specified Google Cast device to resume the Spotify player.


# Import Blueprint

Use the following link to import the blueprint into your Home Assistant image.

<a href="https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fthlucas1%2Fhomeassistant_blueprints%2Fblob%2Fmaster%2Fspotifyplus%2Fspotifyplus_pause_tts_speak_google_resume.yaml%3Fversion=1.0.0"><img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy"></a>


# Change Log

#### [ 1.0.0 ] - 2025/09/06

  * Initial release.
