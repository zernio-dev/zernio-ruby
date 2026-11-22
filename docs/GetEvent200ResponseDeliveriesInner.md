# Zernio::GetEvent200ResponseDeliveriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **status** | **String** | &#x60;dropped&#x60;: not sent because the visitor did not consent; &#x60;errorCode&#x60; says why (&#x60;consent_denied&#x60; or &#x60;consent_missing&#x60;). | [optional] |
| **attempt** | **Integer** | Send attempt (1 &#x3D; the first). | [optional] |
| **error** | **String** |  | [optional] |
| **error_code** | **String** |  | [optional] |
| **sent_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEvent200ResponseDeliveriesInner.new(
  account_id: null,
  destination_id: null,
  platform: null,
  status: null,
  attempt: null,
  error: null,
  error_code: null,
  sent_at: null
)
```

