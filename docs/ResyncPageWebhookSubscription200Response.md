# Zernio::ResyncPageWebhookSubscription200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resubscribed** | **Boolean** |  | [optional] |
| **page_id** | **String** |  | [optional] |
| **app_subscribed** | **Boolean** |  | [optional] |
| **leadgen** | **Boolean** |  | [optional] |
| **subscribed_fields** | **Array&lt;String&gt;** |  | [optional] |
| **warning** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ResyncPageWebhookSubscription200Response.new(
  resubscribed: null,
  page_id: null,
  app_subscribed: null,
  leadgen: null,
  subscribed_fields: null,
  warning: null
)
```

