# Zernio::TrackingTagDiagnostic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Platform check id (Meta: e.g. &#x60;pixel_missing_param_in_events&#x60;). |  |
| **title** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **result** | **String** | The platform verdict (Meta: &#x60;passed&#x60;, &#x60;failed&#x60;, &#x60;warning&#x60;). |  |
| **action_url** | **String** | Where to fix it in the platform UI (Meta: Events Manager). | [optional] |
| **always_use_default_value** | **Boolean** | Record &#x60;defaultValue&#x60; even when the conversion sends its own value. | [optional] |
| **primary** | **Boolean** | Primary (counts toward bidding) or secondary (observation only). | [optional] |
| **counting_type** | **String** | &#x60;one&#x60; &#x3D; one conversion per ad interaction, &#x60;every&#x60; &#x3D; each conversion. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingTagDiagnostic.new(
  key: null,
  title: null,
  description: null,
  result: null,
  action_url: null,
  always_use_default_value: null,
  primary: null,
  counting_type: null
)
```

