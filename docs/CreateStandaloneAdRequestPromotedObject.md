# Zernio::CreateStandaloneAdRequestPromotedObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pixel_id** | **String** | Facebook Pixel ID. Required for &#x60;goal: conversions&#x60;. | [optional] |
| **custom_event_type** | **String** | Standard event the campaign optimises against, e.g. &#x60;PURCHASE&#x60;, &#x60;LEAD&#x60;, &#x60;COMPLETE_REGISTRATION&#x60;, &#x60;ADD_TO_CART&#x60;. Uppercased internally so callers can pass any case. Required for &#x60;goal: conversions&#x60;.  | [optional] |
| **page_id** | **String** | Facebook Page ID. Used by &#x60;goal: lead_generation&#x60;. Auto-filled from the connected Page when omitted.  | [optional] |
| **application_id** | **String** | App ID. Required for &#x60;goal: app_promotion&#x60;. | [optional] |
| **object_store_url** | **String** | App Store / Play Store listing URL. Required for &#x60;goal: app_promotion&#x60;. | [optional] |
| **custom_conversion_id** | **String** | Custom Conversion ID, when optimising against one instead of a standard event. | [optional] |
| **product_catalog_id** | **String** | Catalog ID for catalog/Advantage+ Shopping campaigns. | [optional] |
| **product_set_id** | **String** | Product Set ID inside the catalog. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestPromotedObject.new(
  pixel_id: null,
  custom_event_type: null,
  page_id: null,
  application_id: null,
  object_store_url: null,
  custom_conversion_id: null,
  product_catalog_id: null,
  product_set_id: null
)
```

