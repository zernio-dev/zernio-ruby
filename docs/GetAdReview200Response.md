# Zernio::GetAdReview200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_id** | **String** | Zernio ad id; null for an unsynced Meta ad read with &#x60;accountId&#x60;. | [optional] |
| **platform** | **String** |  | [optional] |
| **platform_ad_id** | **String** |  | [optional] |
| **synced** | **Boolean** | False when the ad was read live from Meta because it is not in Zernio&#39;s store. | [optional] |
| **review** | [**GetAdReview200ResponseReview**](GetAdReview200ResponseReview.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdReview200Response.new(
  ad_id: null,
  platform: null,
  platform_ad_id: null,
  synced: null,
  review: null
)
```

