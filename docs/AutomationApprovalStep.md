# Zernio::AutomationApprovalStep

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **type** | **String** |  |  |
| **to** | **Array&lt;String&gt;** | Team members, by email. Each once. |  |
| **expires_in** | **String** | From &#x60;15m&#x60; to &#x60;7d&#x60;, in whole minutes. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationApprovalStep.new(
  id: null,
  type: null,
  to: null,
  expires_in: 1d
)
```

