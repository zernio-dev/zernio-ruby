# Zernio::UpdateAdTrackingTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **stage** | **Boolean** | Send true to store this write as a staged change instead of applying it. The response is &#x60;202&#x60; with the change, and POST /v1/ads/changes/{changeId}/confirm applies it later. Cannot be combined with &#x60;validateOnly&#x60;. | [optional] |
| **url_tags** | [**Array&lt;UpdateAdTrackingTagsRequestUrlTagsInner&gt;**](UpdateAdTrackingTagsRequestUrlTagsInner.md) | Meta only. Click-URL params appended to a freshly-rebuilt creative. Meta dynamic macros ({{ad.id}}, {{campaign.id}}, {{placement}}, ...) are sent through unescaped so Meta expands them; every other character is percent-encoded. | [optional] |
| **creative** | [**UpdateAdTrackingTagsRequestCreative**](UpdateAdTrackingTagsRequestCreative.md) |  | [optional] |
| **tracking_url_template** | **String** | Google only. Full tracking template (must contain {lpurl}). | [optional] |
| **final_url_suffix** | **String** | Google only. Parse-only key&#x3D;value params. | [optional] |
| **dynamic_value_parameters** | **Hash&lt;String, String&gt;** | LinkedIn only. key -&gt; dynamic value enum (CAMPAIGN_ID, CAMPAIGN_NAME, CREATIVE_ID, ...). | [optional] |
| **custom_value_parameters** | **Hash&lt;String, String&gt;** | LinkedIn only. key -&gt; static value. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdTrackingTagsRequest.new(
  stage: null,
  url_tags: null,
  creative: null,
  tracking_url_template: null,
  final_url_suffix: null,
  dynamic_value_parameters: null,
  custom_value_parameters: null
)
```

