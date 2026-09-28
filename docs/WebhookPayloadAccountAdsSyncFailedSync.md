# Zernio::WebhookPayloadAccountAdsSyncFailedSync

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_successful_sync_at** | **Time** |  |  |
| **failure_count** | **Integer** | Consecutive failed sync attempts on the ad account&#39;s ads. |  |
| **error_category** | **String** | ad_account_not_listed &#x3D; the platform no longer returns the ad account to this connection (access removed, or a platform-side change); sync_error &#x3D; the platform returned an error, see &#x60;error&#x60;; stale &#x3D; no sync succeeded and no error was recorded. New values may be added.  |  |
| **error** | **String** | Human-readable detail, for display and debugging. Branch on errorCategory. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountAdsSyncFailedSync.new(
  last_successful_sync_at: null,
  failure_count: null,
  error_category: null,
  error: null
)
```

