# Zernio::JoinCreatorCampaignRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | Required when joining through an open invite link. | [optional] |
| **email** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::JoinCreatorCampaignRequest.new(
  display_name: null,
  email: null
)
```

