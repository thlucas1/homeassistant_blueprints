# Blueprint Summary

__SpotifyPlus Hue Lightshow__

Starts a Philips Hue lightshow effect when playing Spotify content via a SpotifyPlus media player.

Use the following links for more information.
* [Requirements](#requirements)
* [What It Does](#what-does-it-do)
* [How It Works](#how-it-works)
* [Import Blueprint](#import-blueprint)
* [Change Log](#change-log)


# Requirements
* [SpotifyPlus integration, version 1.0.165+](https://github.com/thlucas1/homeassistantcomponent_spotifyplus/wiki/)
* [Philips Hue integration](https://www.home-assistant.io/integrations/hue/)


# What It Does

Starts a lightshow effect on the specified Philips Hue lighting when playing Spotify content via a SpotifyPlus media player.
The lighting colors will change with the Spotify nowplaying image content.  The image is queried for the top 6 dominant
colors, and the lights alternate between these colors repeatedly until the nowplaying image changes.  

# How It Works

The SpotifyPlus media player must be turned on in order to receive Spotify Player playstate updates.
If the media player is off, then player state changes will not occur and your lighting won't change.

The `spotifyplus.get_image_palette_colors` service is called to retrieve the color palette of the nowplaying image url.

The `light.turn_on` service is called to change the Philips Hue light color.

The automation stops when the Spotify media player state is not `playing`.

# Import Blueprint

Use the following link to import the blueprint into your Home Assistant image.

<a href="https://my.home-assistant.io/redirect/blueprint_import/?blueprint_url=https%3A%2F%2Fgithub.com%2Fthlucas1%2Fhomeassistant_blueprints%2Fblob%2Fmaster%2Fspotifyplus%2Fspotifyplus_hue_lightshow.yaml%3Fversion=1.0.2"><img src="https://my.home-assistant.io/badges/blueprint_import.svg" alt="Open your Home Assistant instance and show the blueprint import dialog with a specific blueprint pre-filled." width="" height="" loading="lazy"></a>


# Change Log

#### [ 1.0.2 ] - 2025/09/25

  * Initial release.
