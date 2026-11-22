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
| **instagram_user_id** | **String** | Instagram accounts only. | [optional] |
| **subscription_id** | **String** | Instagram accounts only. Id of the subscription record after the repair. | [optional] |
| **previous_subscription_id** | **String** | Instagram accounts only. Id of the record before the repair; null when there was none. | [optional] |
| **recreated** | **Boolean** | Instagram accounts only. True when the subscription record id changed. | [optional] |
| **missing_fields** | **Array&lt;String&gt;** | Instagram accounts only. Webhook fields Zernio expects that Meta did not subscribe. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ResyncPageWebhookSubscription200Response.new(
  resubscribed: null,
  page_id: null,
  app_subscribed: null,
  leadgen: null,
  subscribed_fields: null,
  warning: null,
  instagram_user_id: null,
  subscription_id: null,
  previous_subscription_id: null,
  recreated: null,
  missing_fields: null
)
```

