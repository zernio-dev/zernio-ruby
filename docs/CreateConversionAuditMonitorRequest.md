# Zernio::CreateConversionAuditMonitorRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **url** | **String** | The domain to watch. A full URL is reduced to its host; &#x60;www.&#x60; and letter case are ignored. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateConversionAuditMonitorRequest.new(
  url: example.com
)
```

