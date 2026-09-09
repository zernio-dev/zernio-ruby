# Zernio::ListAdsInstagramAccounts200ResponseResolved

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** | Page selected by the shared ad-creation resolver. |  |
| **ig_user_id** | **String** | Instagram identity selected by the shared ad-creation resolver. |  |
| **source** | **String** | Discovery source of the resolved identity; null when absent from discovery. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdsInstagramAccounts200ResponseResolved.new(
  page_id: null,
  ig_user_id: null,
  source: null
)
```

