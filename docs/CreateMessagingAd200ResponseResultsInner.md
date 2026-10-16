# Zernio::CreateMessagingAd200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node** | **String** |  |  |
| **status** | **String** |  |  |
| **reason** | **String** | On unverified: why Meta could not dry-run this node although the other nodes passed. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateMessagingAd200ResponseResultsInner.new(
  node: null,
  status: null,
  reason: null
)
```

