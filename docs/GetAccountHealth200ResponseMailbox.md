# Zernio::GetAccountHealth200ResponseMailbox

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **reason** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **detected_at** | **Time** | When Microsoft last answered that the login has no mailbox. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAccountHealth200ResponseMailbox.new(
  status: null,
  reason: null,
  message: null,
  detected_at: null
)
```

