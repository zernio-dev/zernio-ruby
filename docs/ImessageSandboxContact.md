# Zernio::ImessageSandboxContact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **handle** | **String** | Phone (E.164) or lowercase Apple ID email | [optional] |
| **status** | **String** |  | [optional] |
| **join_text** | **String** | Send this from the handle to the sandbox line to activate it | [optional] |
| **join_link** | **String** | Opens Messages on the sandbox line with joinText prefilled | [optional] |
| **activated_at** | **Time** |  | [optional] |
| **last_inbound_at** | **Time** | Replies are allowed for 24 hours after this | [optional] |
| **created_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ImessageSandboxContact.new(
  id: null,
  handle: null,
  status: null,
  join_text: null,
  join_link: null,
  activated_at: null,
  last_inbound_at: null,
  created_at: null
)
```

