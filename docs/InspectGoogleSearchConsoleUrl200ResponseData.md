# Zernio::InspectGoogleSearchConsoleUrl200ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inspection_url** | **String** |  | [optional] |
| **result** | **Hash&lt;String, Object&gt;** | Google&#39;s &#x60;inspectionResult&#x60;: &#x60;inspectionResultLink&#x60;, &#x60;indexStatusResult&#x60; (verdict, coverageState, lastCrawlTime, googleCanonical…), &#x60;mobileUsabilityResult&#x60;, &#x60;richResultsResult&#x60; and &#x60;ampResult&#x60;, each present when Google has it. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InspectGoogleSearchConsoleUrl200ResponseData.new(
  inspection_url: null,
  result: null
)
```

