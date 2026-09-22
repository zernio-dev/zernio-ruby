# Zernio::CreateConversionActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID. Must be a &#x60;googleads&#x60; account. |  |
| **ad_account_id** | **String** | Platform ad account ID (Google customer ID, digits only). Resolved automatically when the connection has exactly one accessible customer. | [optional] |
| **customer_id** | **String** | Alias of adAccountId, kept for existing callers | [optional] |
| **name** | **String** |  |  |
| **type** | **String** | Only WEBPAGE is supported for creation today. |  |
| **default_value** | **Float** | Default conversion value used when an event doesn&#39;t carry its own value. | [optional] |
| **always_use_default_value** | **Boolean** | When true, always use defaultValue and ignore any value sent with the event. Defaults to true when defaultValue is set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateConversionActionRequest.new(
  account_id: null,
  ad_account_id: null,
  customer_id: null,
  name: null,
  type: null,
  default_value: null,
  always_use_default_value: null
)
```

