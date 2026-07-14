# Zernio::LinkedInAdsPlatformDataCarouselCardsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **image_url** | **String** |  |  |
| **headline** | **String** | Card title. Falls back to the ad-level headline. | [optional] |
| **landing_url** | **String** | Per-card click destination. LinkedIn requires one on every card; the ad-level &#x60;linkUrl&#x60; backfills cards that omit it.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::LinkedInAdsPlatformDataCarouselCardsInner.new(
  image_url: null,
  headline: null,
  landing_url: null
)
```

