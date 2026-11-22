# Zernio::AutomationControls

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **paused** | **Boolean** | True when every ad rule of the team is stopped. Each rule keeps its own status. |  |
| **paused_at** | **Time** | When the team switch was turned off; null while it is on. |  |
| **ad_accounts** | [**Array&lt;AutomationAdAccountControls&gt;**](AutomationAdAccountControls.md) | Every ad account your automations use, plus any ad account that has controls set. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AutomationControls.new(
  paused: null,
  paused_at: null,
  ad_accounts: null
)
```

