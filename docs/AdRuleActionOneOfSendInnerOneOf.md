# Zernio::AdRuleActionOneOfSendInnerOneOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | A connected Slack account (&#x60;GET /v1/accounts&#x60;, platform &#x60;slack&#x60;). |  |
| **channel_id** | **String** | The Slack channel to post in. Defaults to the channel the account was connected with; the bot joins public channels on its own. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AdRuleActionOneOfSendInnerOneOf.new(
  account_id: null,
  channel_id: null
)
```

