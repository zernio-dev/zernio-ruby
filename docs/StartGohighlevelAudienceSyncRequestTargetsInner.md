# Zernio::StartGohighlevelAudienceSyncRequestTargetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | The Zernio ads connection id (&#x60;targetChoices[].accountId&#x60;). |  |
| **ad_account_id** | **String** | The ad account on that connection, such as &#x60;act_123456789&#x60; for Meta. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StartGohighlevelAudienceSyncRequestTargetsInner.new(
  account_id: null,
  ad_account_id: null
)
```

