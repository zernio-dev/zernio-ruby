# Zernio::ForwardingRule

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Rule ID, used to delete it. | [optional] |
| **profile_id** | **String** |  | [optional] |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** | Platform destination (pixel, conversion action, rule, ...). | [optional] |
| **event_names** | **Array&lt;String&gt;** | Event names forwarded to this destination; null forwards every event. | [optional] |
| **sources** | **Array&lt;String&gt;** | Event sources forwarded to this destination; null forwards events from every source. | [optional] |
| **api_secret_verified** | **Boolean** | Only when an &#x60;apiSecret&#x60; was saved by this request. Google Analytics never confirms a Measurement Protocol API secret, so it is &#x60;false&#x60; there: the first events in GA4 Realtime prove the secret is right. | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ForwardingRule.new(
  id: null,
  profile_id: null,
  account_id: null,
  destination_id: null,
  event_names: null,
  sources: null,
  api_secret_verified: null,
  created_at: null
)
```

