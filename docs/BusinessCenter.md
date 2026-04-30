# Zernio::BusinessCenter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bc_id** | **String** | Business Center ID | [optional] |
| **name** | **String** | Display name set by the BC owner | [optional] |
| **advertiser_count** | **Integer** | Number of advertisers reachable under this BC for the calling token. &#x60;null&#x60; when the BC asset walk returned empty or failed (typical for agency apps without full BC asset read scope) — distinct from &#x60;0&#x60;, which would imply the BC genuinely has no advertisers.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessCenter.new(
  bc_id: 7123456789012345678,
  name: Acme Agency,
  advertiser_count: 23
)
```

