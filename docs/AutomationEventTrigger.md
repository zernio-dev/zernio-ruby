# Zernio::AutomationEventTrigger

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The Zernio event that starts it. |  |
| **profile_id** | **String** | The profile whose events start it, from &#x60;GET /v1/profiles&#x60;. |  |
| **account_ids** | **Array&lt;String&gt;** | Only events of these accounts. Leave out for every account of the profile. | [optional] |
| **filter** | [**AutomationFactCondition**](AutomationFactCondition.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationEventTrigger.new(
  type: post.failed,
  profile_id: null,
  account_ids: null,
  filter: null
)
```

