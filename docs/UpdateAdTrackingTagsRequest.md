# Zernio::UpdateAdTrackingTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url_tags** | [**Array&lt;UpdateAdTrackingTagsRequestUrlTagsInner&gt;**](UpdateAdTrackingTagsRequestUrlTagsInner.md) | Meta only. Click-URL params appended to a freshly-rebuilt creative. | [optional] |
| **creative** | [**UpdateAdTrackingTagsRequestCreative**](UpdateAdTrackingTagsRequestCreative.md) |  | [optional] |
| **tracking_url_template** | **String** | Google only. Full tracking template (must contain {lpurl}). | [optional] |
| **final_url_suffix** | **String** | Google only. Parse-only key&#x3D;value params. | [optional] |
| **dynamic_value_parameters** | **Hash&lt;String, String&gt;** | LinkedIn only. key -&gt; dynamic value enum (CAMPAIGN_ID, CAMPAIGN_NAME, CREATIVE_ID, ...). | [optional] |
| **custom_value_parameters** | **Hash&lt;String, String&gt;** | LinkedIn only. key -&gt; static value. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdTrackingTagsRequest.new(
  url_tags: null,
  creative: null,
  tracking_url_template: null,
  final_url_suffix: null,
  dynamic_value_parameters: null,
  custom_value_parameters: null
)
```

