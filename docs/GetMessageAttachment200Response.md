# Zernio::GetMessageAttachment200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **url** | **String** | Live media url. Short-lived; re-request this endpoint rather than storing it. | [optional] |
| **refreshed** | **Boolean** | True when the stored url had expired and was re-minted from the platform. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetMessageAttachment200Response.new(
  status: success,
  url: null,
  refreshed: null
)
```

