# Zernio::WebhookAdsSyncAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The ads connection&#39;s account ID (same as used in /v1/accounts/{accountId}) |  |
| **profile_id** | **String** |  |  |
| **platform** | **String** | The ads connection platform, e.g. metaads, googleads, tiktokads, linkedinads |  |
| **username** | **String** |  |  |
| **display_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookAdsSyncAccount.new(
  account_id: null,
  profile_id: null,
  platform: null,
  username: null,
  display_name: null
)
```

