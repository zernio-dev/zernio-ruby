# Zernio::ConnectHandoff

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **accounts** | [**Array&lt;ConnectHandoffAccountsInner&gt;**](ConnectHandoffAccountsInner.md) | Filled when &#x60;status&#x60; is &#x60;connected&#x60;: every account the connect added (several when the user picked several pages, locations or organizations), each checked to be on the profile the connect was started for and written during this handoff. Empty otherwise. | [optional] |
| **error** | [**ConnectHandoffError**](ConnectHandoffError.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectHandoff.new(
  id: null,
  status: null,
  platform: null,
  accounts: null,
  error: null
)
```

