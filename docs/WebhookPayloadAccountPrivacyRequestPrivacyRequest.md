# Zernio::WebhookPayloadAccountPrivacyRequestPrivacyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | customer_data_request: the merchant asked for the data you hold about &#x60;customer&#x60;. Send it to the merchant.  customer_redact: erase the data you hold about &#x60;customer&#x60; and the orders in &#x60;orderIds&#x60;.  shop_redact: erase the data you hold about the whole shop. Sent 48 hours after the merchant uninstalled the app. |  |
| **shop_domain** | **String** |  |  |
| **shop_id** | **String** |  |  |
| **customer** | [**WebhookPayloadAccountPrivacyRequestPrivacyRequestCustomer**](WebhookPayloadAccountPrivacyRequestPrivacyRequestCustomer.md) |  |  |
| **order_ids** | **Array&lt;String&gt;** | The Shopify order ids the request covers. Empty for shop_redact. |  |
| **data_request_id** | **String** | Shopify&#39;s id for a customer_data_request. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WebhookPayloadAccountPrivacyRequestPrivacyRequest.new(
  type: null,
  shop_domain: sample-brand.myshopify.com,
  shop_id: null,
  customer: null,
  order_ids: null,
  data_request_id: null
)
```

