# Zernio::DiscordPlatformDataEmbedsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Embed title (max 256 chars) | [optional] |
| **description** | **String** | Embed body text (max 4,096 chars) | [optional] |
| **url** | **String** | URL the title links to | [optional] |
| **color** | **Integer** | Embed accent color as decimal integer (e.g. 5814783 for blue). Convert hex to decimal. | [optional] |
| **image** | [**DiscordPlatformDataEmbedsInnerImage**](DiscordPlatformDataEmbedsInnerImage.md) |  | [optional] |
| **thumbnail** | [**DiscordPlatformDataEmbedsInnerImage**](DiscordPlatformDataEmbedsInnerImage.md) |  | [optional] |
| **footer** | [**DiscordPlatformDataEmbedsInnerFooter**](DiscordPlatformDataEmbedsInnerFooter.md) |  | [optional] |
| **author** | [**DiscordPlatformDataEmbedsInnerAuthor**](DiscordPlatformDataEmbedsInnerAuthor.md) |  | [optional] |
| **fields** | [**Array&lt;DiscordPlatformDataEmbedsInnerFieldsInner&gt;**](DiscordPlatformDataEmbedsInnerFieldsInner.md) | Up to 25 fields per embed | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DiscordPlatformDataEmbedsInner.new(
  title: null,
  description: null,
  url: null,
  color: null,
  image: null,
  thumbnail: null,
  footer: null,
  author: null,
  fields: null
)
```

