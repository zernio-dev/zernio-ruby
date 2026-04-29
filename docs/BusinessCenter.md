# Zernio::BusinessCenter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bc_id** | **String** | Business Center ID | [optional] |
| **name** | **String** | Display name set by the BC owner | [optional] |
| **advertiser_count** | **Integer** | Number of advertisers (ad accounts) reachable under this BC for the calling token | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessCenter.new(
  bc_id: 7123456789012345678,
  name: Acme Agency,
  advertiser_count: 23
)
```

