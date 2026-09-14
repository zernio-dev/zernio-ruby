# Zernio::GetInboxConversationMessages200ResponseMessagesInnerDeliveryError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **title** | **String** |  | [optional] |
| **message** | **String** |  | [optional] |
| **details** | **String** | Platform&#39;s extended detail for &#x60;code&#x60; (WhatsApp: Meta&#39;s &#x60;error_data.details&#x60;), when the platform sent one. Absent on SMS. | [optional] |
| **href** | **String** | Link to the platform&#39;s documentation for &#x60;code&#x60;, when the platform sent one. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxConversationMessages200ResponseMessagesInnerDeliveryError.new(
  code: null,
  title: null,
  message: null,
  details: null,
  href: null
)
```

