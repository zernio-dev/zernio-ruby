# Zernio::CreateCustomConversionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | Meta ad account id (act_&lt;n&gt;). |  |
| **name** | **String** | Also the reuse key, together with pixelId. |  |
| **pixel_id** | **String** | Meta pixel id (event_source_id). From GET /v1/accounts/{accountId}/tracking-tags. |  |
| **custom_event_type** | **String** | Meta custom_event_type, e.g. LEAD, PURCHASE, OTHER. |  |
| **rule** | **Object** | Meta conversion rule, forwarded verbatim. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateCustomConversionRequest.new(
  ad_account_id: null,
  name: null,
  pixel_id: null,
  custom_event_type: null,
  rule: null
)
```

