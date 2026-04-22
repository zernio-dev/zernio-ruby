# Zernio::RedditPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subreddit** | **String** | Target subreddit name (without \&quot;r/\&quot; prefix). Overrides the default. Use GET /v1/accounts/{id}/reddit-subreddits to list options. | [optional] |
| **title** | **String** | Post title. Defaults to the first line of content, truncated to 300 characters. | [optional] |
| **url** | **String** | URL for link posts. If provided (and forceSelf is not true), creates a link post instead of a text post. | [optional] |
| **force_self** | **Boolean** | When true, creates a text/self post even when a URL or media is provided. | [optional] |
| **flair_id** | **String** | Flair ID for the post. Required by some subreddits. Use GET /v1/accounts/{id}/reddit-flairs?subreddit&#x3D;name to list flairs. | [optional] |
| **native_video** | **Boolean** | Controls Reddit&#39;s native video upload flow. When true (default for video mediaItems), the video is uploaded to Reddit&#39;s CDN and submitted with kind&#x3D;video so it renders as an embedded Reddit video player. Reddit transcodes server-side (1080p/30fps cap). Set to false to fall back to a legacy link post. If the subreddit blocks video posts, the upload falls back to a link post automatically.  | [optional][default to true] |
| **videogif** | **Boolean** | When true (and nativeVideo is active), submits the video as a silent videogif (kind&#x3D;videogif). Use for short looping clips without audio. | [optional] |
| **video_poster_url** | **String** | Optional poster/thumbnail image URL for native video posts. If omitted, the first frame of the video is extracted and used automatically. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RedditPlatformData.new(
  subreddit: socialmedia,
  title: null,
  url: null,
  force_self: null,
  flair_id: a1b2c3d4-e5f6-7890-abcd-ef1234567890,
  native_video: null,
  videogif: null,
  video_poster_url: null
)
```

