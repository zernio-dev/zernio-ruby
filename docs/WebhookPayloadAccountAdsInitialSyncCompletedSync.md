# Zernio::WebhookPayloadAccountAdsInitialSyncCompletedSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Overall outcome of the initial sync. |  |
| **total_ads** | **Integer** | Total number of ads discovered for backfill. |  |
| **synced** | **Integer** | Number of ads successfully synced. |  |
| **failed** | **Integer** | Number of ads that failed to sync. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountAdsInitialSyncCompletedSync.new(
  status: null,
  total_ads: null,
  synced: null,
  failed: null
)
```

