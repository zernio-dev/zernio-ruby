# Late::WebhookPayloadAccountConnectedAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The account&#39;s unique identifier (same as used in /v1/accounts/{accountId}) |  |
| **profile_id** | **String** | The profile&#39;s unique identifier this account belongs to |  |
| **platform** | **String** |  |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'late-sdk'

instance = Late::WebhookPayloadAccountConnectedAccount.new(
  account_id: null,
  profile_id: null,
  platform: null,
  username: null,
  display_name: null
)
```

