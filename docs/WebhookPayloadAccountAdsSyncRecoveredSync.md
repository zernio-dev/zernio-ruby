# Zernio::WebhookPayloadAccountAdsSyncRecoveredSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_successful_sync_at** | **Time** |  |  |
| **failing_since** | **Time** | The last successful sync before the failure started. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountAdsSyncRecoveredSync.new(
  last_successful_sync_at: null,
  failing_since: null
)
```

