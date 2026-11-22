# Zernio::StoredEventCampaign

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **via** | **String** | &#x60;google_click&#x60;: the click behind &#x60;clickIds.gclid&#x60;. &#x60;zernio_tag&#x60;: the &#x60;zrn&#x60; ad. &#x60;matched&#x60;: the campaign Zernio matched the event to. &#x60;utm&#x60;: only its &#x60;utm_campaign&#x60;, as &#x60;name&#x60;. | [optional] |
| **id** | **String** | The ad platform campaign id; &#x60;null&#x60; for &#x60;utm&#x60;. | [optional] |
| **name** | **String** |  | [optional] |
| **ad_group_name** | **String** | The Google ad group or Meta ad set. | [optional] |
| **ad_name** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::StoredEventCampaign.new(
  via: null,
  id: null,
  name: null,
  ad_group_name: null,
  ad_name: null
)
```

