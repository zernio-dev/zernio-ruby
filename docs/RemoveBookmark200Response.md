# Zernio::RemoveBookmark200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **tweet_id** | **String** |  | [optional] |
| **bookmarked** | **Boolean** |  | [optional] |
| **platform** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::RemoveBookmark200Response.new(
  status: success,
  tweet_id: null,
  bookmarked: false,
  platform: twitter
)
```

