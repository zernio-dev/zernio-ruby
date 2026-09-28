# Zernio::TrackingTagDiagnostic

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **String** | Platform check id (Meta: e.g. &#x60;pixel_missing_param_in_events&#x60;). |  |
| **title** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **result** | **String** | The platform verdict (Meta: &#x60;passed&#x60;, &#x60;failed&#x60;, &#x60;warning&#x60;). |  |
| **action_url** | **String** | Where to fix it in the platform UI (Meta: Events Manager). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingTagDiagnostic.new(
  key: null,
  title: null,
  description: null,
  result: null,
  action_url: null
)
```

