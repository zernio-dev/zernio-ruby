# Zernio::GetAdMedia200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  | [optional] |
| **platform** | **String** | &#39;facebook&#39; or &#39;instagram&#39;. Only Meta is supported for now. | [optional] |
| **synced** | **Boolean** | False when the ad was read live from Meta because it is not in Zernio&#39;s store (request made with &#x60;accountId&#x60;). | [optional] |
| **media** | [**Array&lt;GetAdMedia200ResponseMediaInner&gt;**](GetAdMedia200ResponseMediaInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdMedia200Response.new(
  ad_id: null,
  platform: null,
  synced: null,
  media: null
)
```

