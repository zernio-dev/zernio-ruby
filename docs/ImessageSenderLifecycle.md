# Zernio::ImessageSenderLifecycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **kind** | **String** |  | [optional] |
| **region** | **String** |  | [optional] |
| **handle** | **String** | The sender handle once activation assigns it | [optional] |
| **opt_in_link** | **String** | imessage:// deep link that opens Messages on this sender with a prefilled text. Share it so contacts message you first (Apple only lets a sender reach contacts who wrote to it first); null until the handle is assigned. | [optional] |
| **status** | **String** |  | [optional] |
| **price_cents** | **Integer** | Monthly price billed while the sender is active | [optional] |
| **provider** | **String** |  | [optional] |
| **profile_id** | **String** |  | [optional] |
| **display_name** | **String** |  | [optional] |
| **failure_reason** | **String** |  | [optional] |
| **account_id** | **String** | The messaging account created at activation | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImessageSenderLifecycle.new(
  id: null,
  kind: null,
  region: null,
  handle: null,
  opt_in_link: null,
  status: null,
  price_cents: null,
  provider: null,
  profile_id: null,
  display_name: null,
  failure_reason: null,
  account_id: null,
  created_at: null
)
```

