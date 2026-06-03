# Zernio::GetAdTrackingTags200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  | [optional] |
| **level** | **String** |  | [optional] |
| **url_tags** | **String** | Meta: &amp;-joined click-URL params. | [optional] |
| **template_url_spec** | **Object** | Meta: third-party click-tracking template (Dynamic Ads). | [optional] |
| **tracking_url_template** | **String** | Google. | [optional] |
| **final_url_suffix** | **String** | Google. | [optional] |
| **dynamic_value_parameters** | **Object** | LinkedIn. | [optional] |
| **custom_value_parameters** | **Object** | LinkedIn. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdTrackingTags200Response.new(
  platform: null,
  level: null,
  url_tags: null,
  template_url_spec: null,
  tracking_url_template: null,
  final_url_suffix: null,
  dynamic_value_parameters: null,
  custom_value_parameters: null
)
```

