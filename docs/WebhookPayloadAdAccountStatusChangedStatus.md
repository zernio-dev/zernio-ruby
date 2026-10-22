# Zernio::WebhookPayloadAdAccountStatusChangedStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **previous** | **String** |  |  |
| **current** | **String** |  |  |
| **raw** | **String** | Platform-native status, forwarded verbatim (Meta &#x60;account_status&#x60; code such as &#x60;2&#x60;, Google &#x60;SUSPENDED&#x60;, TikTok &#x60;STATUS_LIMIT&#x60;, X &#x60;REJECTED&#x60;). |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAdAccountStatusChangedStatus.new(
  previous: null,
  current: null,
  raw: null
)
```

