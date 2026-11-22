# Zernio::GetAllAccountsHealth200ResponseAccountsInnerPublishingRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** |  | [optional] |
| **message** | **String** | The stored error message of the last failed publish. | [optional] |
| **since** | **Time** |  | [optional] |
| **last_failed_at** | **Time** |  | [optional] |
| **blocks_publish_now** | **Boolean** | True while POST /v1/posts refuses publish-now posts to this account with 422 &#x60;account_restricted&#x60; (24 hours after the last failure). Scheduled posts are always accepted. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAllAccountsHealth200ResponseAccountsInnerPublishingRestriction.new(
  reason: null,
  message: null,
  since: null,
  last_failed_at: null,
  blocks_publish_now: null
)
```

