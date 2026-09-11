# Zernio::GetPageWebhookSubscription200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page_id** | **String** |  | [optional] |
| **app_subscribed** | **Boolean** | False when the Page carries no subscription for our app at all. | [optional] |
| **leadgen** | **Boolean** | Whether lead ads submitted on this Page reach Zernio in real time. | [optional] |
| **subscribed_fields** | **Array&lt;String&gt;** |  | [optional] |
| **warning** | **String** | Present only when leadgen is missing. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetPageWebhookSubscription200Response.new(
  page_id: null,
  app_subscribed: null,
  leadgen: null,
  subscribed_fields: null,
  warning: null
)
```

