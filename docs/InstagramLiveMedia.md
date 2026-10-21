# Zernio::InstagramLiveMedia

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Instagram media ID of the live broadcast. |  |
| **media_type** | **String** | BROADCAST for a live video. |  |
| **media_product_type** | **String** | LIVE for a live video. |  |
| **username** | **String** | Instagram handle of the broadcasting account. |  |
| **timestamp** | **String** | Creation time of the broadcast media as Meta returns it (ISO 8601). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InstagramLiveMedia.new(
  id: null,
  media_type: BROADCAST,
  media_product_type: LIVE,
  username: null,
  timestamp: null
)
```

