# Zernio::Verification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **channel** | **String** |  | [optional] |
| **to** | **String** |  | [optional] |
| **expires_at** | **Time** |  | [optional] |
| **attempts** | **Integer** |  | [optional] |
| **max_attempts** | **Integer** |  | [optional] |
| **send_count** | **Integer** | Accepted deliveries (initial send + resends); each bills one verification fee. | [optional] |
| **last_sent_at** | **Time** |  | [optional] |
| **created_at** | **Time** |  | [optional] |
| **resend** | **Boolean** | Present on create responses: true when an active verification was resent instead of created. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::Verification.new(
  id: null,
  status: null,
  channel: null,
  to: null,
  expires_at: null,
  attempts: null,
  max_attempts: null,
  send_count: null,
  last_sent_at: null,
  created_at: null,
  resend: null
)
```

