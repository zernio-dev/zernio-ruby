# Zernio::CreateStandaloneAdRequestPromotedObject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pixel_id** | **String** | Pixel ID. **Meta:** Facebook Pixel ID, required for &#x60;goal: conversions&#x60;. **TikTok:** TikTok Pixel ID, required for &#x60;goal: conversions&#x60;.  | [optional] |
| **custom_event_type** | **String** | The event the campaign/ad group optimises against.  **Meta:** standard event like &#x60;PURCHASE&#x60;, &#x60;LEAD&#x60;, &#x60;COMPLETE_REGISTRATION&#x60;, &#x60;ADD_TO_CART&#x60;. Uppercased internally so callers can pass any case. Required for &#x60;goal: conversions&#x60;.  **TikTok:** an &#x60;optimization_event&#x60; code (UPPER_SNAKE, not Meta&#39;s vocabulary and not PascalCase), OR the exact event name shown in TikTok Events Manager (auto-resolved to its code). Must be one of the event types your TikTok Pixel tracks; custom events are not optimizable. Current taxonomy: &#x60;SHOPPING&#x60; (Purchase), &#x60;ON_WEB_CART&#x60; (Add to Cart), &#x60;INITIATE_ORDER&#x60; (Initiate Checkout), &#x60;FORM&#x60; (Lead), &#x60;ON_WEB_REGISTER&#x60; (Complete Registration), &#x60;ON_WEB_DETAIL&#x60; (View Content). &#x60;ON_WEB_ORDER&#x60; is deprecated. On rejection the error lists the event types your pixel actually tracks. Optional for &#x60;goal: conversions&#x60;.  | [optional] |
| **page_id** | **String** | Facebook Page ID. Used by &#x60;goal: lead_generation&#x60;. Auto-filled from the connected Page when omitted.  | [optional] |
| **application_id** | **String** | App ID. Required for &#x60;goal: app_promotion&#x60;. | [optional] |
| **object_store_url** | **String** | App Store / Play Store listing URL. Required for &#x60;goal: app_promotion&#x60;. | [optional] |
| **custom_conversion_id** | **String** | Custom Conversion ID, when optimising against one instead of a standard event. | [optional] |
| **product_catalog_id** | **String** | Catalog ID for catalog/Advantage+ Shopping campaigns. | [optional] |
| **product_set_id** | **String** | Product Set ID inside the catalog. | [optional] |
| **offline_conversion_data_set_id** | **String** | Meta only. Offline event set (dataset) to optimise toward. Post-merger these are datasets: the id is the dataset id (for pixel-backed datasets, the pixel id). | [optional] |
| **whatsapp_phone_number** | **String** | Meta only. WhatsApp number on messaging-destination ad sets. | [optional] |

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
  product_set_id: null,
  offline_conversion_data_set_id: null,
  whatsapp_phone_number: null
)
```

