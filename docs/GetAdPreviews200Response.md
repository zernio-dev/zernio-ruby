# Zernio::GetAdPreviews200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** |  | [optional] |
| **synced** | **Boolean** | False when the ad was read live from Meta because it is not in Zernio&#39;s store (request made with &#x60;accountId&#x60;). | [optional] |
| **previews** | [**Array&lt;GenerateAdPreviews200ResponsePreviewsInner&gt;**](GenerateAdPreviews200ResponsePreviewsInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdPreviews200Response.new(
  ad_id: null,
  synced: null,
  previews: null
)
```

