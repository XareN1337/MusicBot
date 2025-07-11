## Unofficial JMusicBot update with built-in Docker script (Forked from: https://github.com/jagrosh/MusicBot)

**[!NEW] > Version 0.4.3.8** introduces flexible update notifications! You can now:

- Enable/disable update notifications
- Choose which repository to monitor (original, forks, your own)
- Set custom check intervals

> [!IMPORTANT]
> This version has a built-in Docker script ([youtube-trusted-session-generator](https://github.com/iv-org/youtube-trusted-session-generator)) that enters po*token and visitor_data automatically into the \_tokens.txt* (file creates with first launch) file each time the bot is launched.
> For proper operation you need **Docker** installed and **_running_** on your device.

<img width="887" alt="Zrzut ekranu 2024-12-26 o 18 57 45" src="https://github.com/user-attachments/assets/e66d1fb3-3301-4c98-a44b-d521c0940dac" />

> [!TIP]
> If Docker doesn't work, enter PO_TOKEN and VISITOR_DATA manually to tokens.txt

```
ytpotoken=PO_TOKEN_HERE
ytvisitordata=VISITOR_DATA_HERE
```

```hocon
# Enable/disable update notifications
updatealerts=true

# Repository to check for updates (format: "owner/repository")
# Examples:
# - "jagrosh/MusicBot" (original repository)
# - "yourusername/YourMusicBotFork" (your fork)
# - "SeVile/MusicBot" (SeVile's fork)
updaterepo="jagrosh/MusicBot"

# How often to check for updates (in hours)
# Recommended: 24 hours (daily check)
# Minimum: 1 hour
updatecheckinterval=24
```

### Examples

**Monitor original repository:**

```hocon
updatealerts=true
updaterepo="jagrosh/MusicBot"
updatecheckinterval=24
```

**Monitor your own fork:**

```hocon
updatealerts=true
updaterepo="yourusername/YourMusicBotFork"
updatecheckinterval=12
```

<img align="right" src="https://i.imgur.com/zrE80HY.png" height="200" width="200">

# JMusicBot

[![Downloads](https://img.shields.io/github/downloads/jagrosh/MusicBot/total.svg)](https://github.com/jagrosh/MusicBot/releases/latest)
[![Stars](https://img.shields.io/github/stars/jagrosh/MusicBot.svg)](https://github.com/jagrosh/MusicBot/stargazers)
[![Release](https://img.shields.io/github/release/jagrosh/MusicBot.svg)](https://github.com/jagrosh/MusicBot/releases/latest)
[![License](https://img.shields.io/github/license/jagrosh/MusicBot.svg)](https://github.com/jagrosh/MusicBot/blob/master/LICENSE)
[![Discord](https://discordapp.com/api/guilds/147698382092238848/widget.png)](https://discord.gg/0p9LSGoRLu6Pet0k)<br>
[![CircleCI](https://dl.circleci.com/status-badge/img/gh/jagrosh/MusicBot/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/jagrosh/MusicBot/tree/master)
[![Build and Test](https://github.com/jagrosh/MusicBot/actions/workflows/build-and-test.yml/badge.svg)](https://github.com/jagrosh/MusicBot/actions/workflows/build-and-test.yml)
[![CodeFactor](https://www.codefactor.io/repository/github/jagrosh/musicbot/badge)](https://www.codefactor.io/repository/github/jagrosh/musicbot)

A cross-platform Discord music bot with a clean interface, and that is easy to set up and run yourself!

[![Setup](http://i.imgur.com/VvXYp5j.png)](https://jmusicbot.com/setup)

## Features

- Easy to run (just make sure Java is installed, and run!)
- Fast loading of songs
- No external keys needed (besides a Discord Bot token)
- Smooth playback
- Server-specific setup for the "DJ" role that can moderate the music
- Clean and beautiful menus
- Supports many sites, including Youtube, Soundcloud, and more
- Supports many online radio/streams
- Supports local files
- Playlist support (both web/youtube, and local)

## Supported sources and formats

JMusicBot supports all sources and formats supported by [lavaplayer](https://github.com/sedmelluq/lavaplayer#supported-formats):

### Sources

- YouTube
- SoundCloud
- Bandcamp
- Vimeo
- Twitch streams
- Local files
- HTTP URLs

### Formats

- MP3
- FLAC
- WAV
- Matroska/WebM (AAC, Opus or Vorbis codecs)
- MP4/M4A (AAC codec)
- OGG streams (Opus, Vorbis and FLAC codecs)
- AAC streams
- Stream playlists (M3U and PLS)

## Example

![Loading Example...](https://i.imgur.com/kVtTKvS.gif)

## Setup

Please see the [Setup Page](https://jmusicbot.com/setup) to run this bot yourself!

## Questions/Suggestions/Bug Reports

**Please read the [Issues List](https://github.com/jagrosh/MusicBot/issues) before suggesting a feature**. If you have a question, need troubleshooting help, or want to brainstorm a new feature, please start a [Discussion](https://github.com/jagrosh/MusicBot/discussions). If you'd like to suggest a feature or report a reproducible bug, please open an [Issue](https://github.com/jagrosh/MusicBot/issues) on this repository. If you like this bot, be sure to add a star to the libraries that make this possible: [**JDA**](https://github.com/DV8FromTheWorld/JDA) and [**lavaplayer**](https://github.com/sedmelluq/lavaplayer)!

## Editing

This bot (and the source code here) might not be easy to edit for inexperienced programmers. The main purpose of having the source public is to show the capabilities of the libraries, to allow others to understand how the bot works, and to allow those knowledgeable about java, JDA, and Discord bot development to contribute. There are many requirements and dependencies required to edit and compile it, and there will not be support provided for people looking to make changes on their own. Instead, consider making a feature request (see the above section). If you choose to make edits, please do so in accordance with the Apache 2.0 License.
