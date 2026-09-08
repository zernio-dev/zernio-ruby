# Zernio::BusinessAgentConnectorAllOfConnectionStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | ACTIVE, PENDING_OAUTH, EXPIRED or ERROR. | [optional] |
| **error_message** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BusinessAgentConnectorAllOfConnectionStatus.new(
  status: null,
  error_message: null
)
```

