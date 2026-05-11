# Zernio::DmButton

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **title** | **String** | Button label (20 chars max) |  |
| **url** | **String** | Target URL (required when type is url) | [optional] |
| **payload** | **String** | Postback payload delivered via the messaging_postbacks webhook (required when type is postback) | [optional] |
| **phone** | **String** | Phone number, e.g. +14155551234 (required when type is phone; Facebook only) | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::DmButton.new(
  type: null,
  title: null,
  url: null,
  payload: null,
  phone: null
)
```

