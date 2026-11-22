# Zernio::ConnectedStore

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **profile_id** | **String** |  |  |
| **store_account_id** | **String** | A Shopify, WordPress, Wix or Webflow account connected to the profile. |  |
| **url** | **String** | The store&#39;s public address, when it differs from the one the store reports. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectedStore.new(
  profile_id: null,
  store_account_id: null,
  url: null
)
```

