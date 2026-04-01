# Late::SyncExternalAds200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **synced** | **Integer** | New ads imported | [optional] |
| **skipped** | **Integer** | Already-synced ads updated | [optional] |
| **errors** | **Integer** | Failed ad imports | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::SyncExternalAds200Response.new(
  success: null,
  synced: null,
  skipped: null,
  errors: null
)
```

