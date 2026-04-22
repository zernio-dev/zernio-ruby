# Zernio::SendInboxMessageRequestInteractive

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Which interactive layout to render. |  |
| **header** | [**SendInboxMessageRequestInteractiveHeader**](SendInboxMessageRequestInteractiveHeader.md) |  | [optional] |
| **body** | [**SendInboxMessageRequestInteractiveBody**](SendInboxMessageRequestInteractiveBody.md) |  |  |
| **footer** | [**SendInboxMessageRequestInteractiveFooter**](SendInboxMessageRequestInteractiveFooter.md) |  | [optional] |
| **action** | [**SendInboxMessageRequestInteractiveAction**](SendInboxMessageRequestInteractiveAction.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendInboxMessageRequestInteractive.new(
  type: null,
  header: null,
  body: null,
  footer: null,
  action: null
)
```

