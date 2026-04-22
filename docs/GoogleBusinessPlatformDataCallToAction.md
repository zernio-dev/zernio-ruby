# Zernio::GoogleBusinessPlatformDataCallToAction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Button action type: LEARN_MORE, BOOK, ORDER, SHOP, SIGN_UP, CALL |  |
| **url** | **String** | Destination URL for the CTA button (required when callToAction is provided) |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GoogleBusinessPlatformDataCallToAction.new(
  type: null,
  url: null
)
```

