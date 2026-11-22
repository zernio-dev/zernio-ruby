# Zernio::GetEventsAccuracy200ResponseDestinationsInnerMatch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | **Integer** |  | [optional] |
| **identified** | **Integer** | Events with at least one of the identifiers below. | [optional] |
| **email** | **Integer** |  | [optional] |
| **phone** | **Integer** |  | [optional] |
| **external_id** | **Integer** |  | [optional] |
| **click_id** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsAccuracy200ResponseDestinationsInnerMatch.new(
  events: null,
  identified: null,
  email: null,
  phone: null,
  external_id: null,
  click_id: null
)
```

