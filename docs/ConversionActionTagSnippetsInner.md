# Zernio::ConversionActionTagSnippetsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | Google&#39;s TrackingCodeType, e.g. WEBPAGE. |  |
| **page_format** | **String** | Google&#39;s TrackingCodePageFormat, e.g. HTML, AMP. | [optional] |
| **global_site_tag** | **String** | The gtag.js snippet to install once per site. | [optional] |
| **event_snippet** | **String** | The per-conversion-page snippet that fires the event. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionActionTagSnippetsInner.new(
  type: null,
  page_format: null,
  global_site_tag: null,
  event_snippet: null
)
```

