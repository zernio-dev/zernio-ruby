# Zernio::SendEvents200ResponseDestinationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** |  | [optional] |
| **destination_id** | **String** |  | [optional] |
| **platform** | **String** |  | [optional] |
| **events_sent** | **Integer** | Events the platform accepted. | [optional] |
| **events_failed** | **Integer** |  | [optional] |
| **failures** | [**Array&lt;SendEvents200ResponseDestinationsInnerFailuresInner&gt;**](SendEvents200ResponseDestinationsInnerFailuresInner.md) |  | [optional] |
| **error** | **String** | Set when the destination could not be reached at all (account disconnected, unsupported platform, platform error). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::SendEvents200ResponseDestinationsInner.new(
  account_id: null,
  destination_id: null,
  platform: null,
  events_sent: null,
  events_failed: null,
  failures: null,
  error: null
)
```

