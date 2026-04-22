# Zernio::CreatePostRequestPlatformsInnerPlatformSpecificData

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatePostRequestPlatformsInnerPlatformSpecificData.openapi_one_of
# =>
# [
#   :'BlueskyPlatformData',
#   :'DiscordPlatformData',
#   :'FacebookPlatformData',
#   :'GoogleBusinessPlatformData',
#   :'InstagramPlatformData',
#   :'LinkedInPlatformData',
#   :'PinterestPlatformData',
#   :'RedditPlatformData',
#   :'SnapchatPlatformData',
#   :'TelegramPlatformData',
#   :'ThreadsPlatformData',
#   :'TikTokPlatformData',
#   :'TwitterPlatformData',
#   :'YouTubePlatformData'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::CreatePostRequestPlatformsInnerPlatformSpecificData.build(data)
# => #<BlueskyPlatformData:0x00007fdd4aab02a0>

Zernio::CreatePostRequestPlatformsInnerPlatformSpecificData.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `BlueskyPlatformData`
- `DiscordPlatformData`
- `FacebookPlatformData`
- `GoogleBusinessPlatformData`
- `InstagramPlatformData`
- `LinkedInPlatformData`
- `PinterestPlatformData`
- `RedditPlatformData`
- `SnapchatPlatformData`
- `TelegramPlatformData`
- `ThreadsPlatformData`
- `TikTokPlatformData`
- `TwitterPlatformData`
- `YouTubePlatformData`
- `nil` (if no type matches)

