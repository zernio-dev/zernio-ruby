# Zernio::ConversionAuditReportServerSide

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  |  |
| **signals** | [**Array&lt;ConversionAuditReportServerSideSignalsInner&gt;**](ConversionAuditReportServerSideSignalsInner.md) |  |  |
| **note** | **String** |  |  |
| **first_party_collection** | **String** | The server-side path that collects on the site&#39;s own domain, when the scan saw one. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConversionAuditReportServerSide.new(
  status: null,
  signals: null,
  note: null,
  first_party_collection: null
)
```

