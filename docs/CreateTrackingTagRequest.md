# Zernio::CreateTrackingTagRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | Meta ad account id, e.g. &#x60;act_123456789&#x60;. Required by this endpoint but ignored for OpenAI Ads. |  |
| **name** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateTrackingTagRequest.new(
  ad_account_id: null,
  name: null
)
```

