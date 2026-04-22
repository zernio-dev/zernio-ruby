# Zernio::BlueskyPlatformData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **thread_items** | [**Array&lt;TwitterPlatformDataThreadItemsInner&gt;**](TwitterPlatformDataThreadItemsInner.md) | Complete sequence of posts in a Bluesky thread. The first item becomes the root post, subsequent items are chained as replies. When threadItems is provided, the top-level content field is used only for display and search purposes, it is NOT published. You must include your first post as threadItems[0].  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BlueskyPlatformData.new(
  thread_items: null
)
```

