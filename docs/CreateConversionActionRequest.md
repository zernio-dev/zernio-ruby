# Zernio::CreateConversionActionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | SocialAccount ID. Must be a &#x60;googleads&#x60; account. |  |
| **customer_id** | **String** | Google Ads customer id (digits only). Resolved automatically when the connection has exactly one accessible customer. | [optional] |
| **name** | **String** |  |  |
| **type** | **String** | Only WEBPAGE is supported for creation today. |  |
| **default_value** | **Float** | Default conversion value used when an event doesn&#39;t carry its own value. | [optional] |
| **always_use_default_value** | **Boolean** | When true, always use defaultValue and ignore any value sent with the event. Defaults to true when defaultValue is set. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateConversionActionRequest.new(
  account_id: null,
  customer_id: null,
  name: null,
  type: null,
  default_value: null,
  always_use_default_value: null
)
```

