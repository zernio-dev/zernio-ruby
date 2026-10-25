# Zernio::ListTikTokSmartPlusReviews200ResponseListing

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **read_at** | **Time** | When the listing was read from TikTok. | [optional] |
| **source** | **String** | &#x60;fresh&#x60;: read within &#x60;maxAgeSeconds&#x60;. &#x60;fallback&#x60;: relisting failed and this is the older stored listing. | [optional] |
| **error** | [**ListTikTokSmartPlusReviews200ResponseListingError**](ListTikTokSmartPlusReviews200ResponseListingError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListTikTokSmartPlusReviews200ResponseListing.new(
  read_at: null,
  source: null,
  error: null
)
```

