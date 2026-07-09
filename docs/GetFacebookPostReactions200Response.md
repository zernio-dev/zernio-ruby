# Zernio::GetFacebookPostReactions200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **username** | **String** |  | [optional] |
| **post_id** | **String** |  | [optional] |
| **total** | **Integer** | Total reactions across all types | [optional] |
| **breakdown** | [**GetFacebookPostReactions200ResponseBreakdown**](GetFacebookPostReactions200ResponseBreakdown.md) |  | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetFacebookPostReactions200Response.new(
  account_id: null,
  platform: facebook,
  username: null,
  post_id: null,
  total: null,
  breakdown: null,
  last_updated: null
)
```

