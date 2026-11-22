# Zernio::ListEvents200ResponseEventsInnerAllOfDeliveriesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** | Ad platform of the destination, such as &#x60;metaads&#x60;; empty when the send failed before the platform was known. | [optional] |
| **status** | **String** | &#x60;dropped&#x60;: not sent, the visitor did not consent. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListEvents200ResponseEventsInnerAllOfDeliveriesInner.new(
  platform: null,
  status: null
)
```

