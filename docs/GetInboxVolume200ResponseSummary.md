# Zernio::GetInboxVolume200ResponseSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **received** | **Integer** |  | [optional] |
| **sent** | **Integer** |  | [optional] |
| **read** | **Integer** |  | [optional] |
| **failed** | **Integer** |  | [optional] |
| **unique_conversations** | **Integer** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetInboxVolume200ResponseSummary.new(
  received: null,
  sent: null,
  read: null,
  failed: null,
  unique_conversations: null
)
```

