# Zernio::GetAllAccountsHealth200ResponseAccountsInnerMessagingRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** | WhatsApp Cloud API error code. Null on Facebook and Instagram. | [optional] |
| **subcode** | **Integer** | Meta error subcode (Facebook and Instagram). Null on WhatsApp. | [optional] |
| **message** | **String** |  | [optional] |
| **first_seen_at** | **Time** |  | [optional] |
| **last_seen_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAllAccountsHealth200ResponseAccountsInnerMessagingRestriction.new(
  code: null,
  subcode: null,
  message: null,
  first_seen_at: null,
  last_seen_at: null
)
```

