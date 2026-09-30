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
| **delivery_status** | **String** | WhatsApp only, returned by GET /v1/verify/verifications/{verificationId} (null on create and check responses): what Meta reported for the latest send, null until it reports. A code that never reached the recipient (for example a number not on WhatsApp) reads failed, with the Meta error in deliveryErrorCode. failed does not settle the verification: Meta can report failed and later deliver the same message. Reported for at least an hour after the send, well past any code&#39;s expiry. | [optional] |
| **delivery_error_code** | **Integer** | Meta error code when deliveryStatus is failed (e.g. 131026, message undeliverable). | [optional] |
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
  delivery_status: null,
  delivery_error_code: null,
  created_at: null,
  resend: null
)
```

