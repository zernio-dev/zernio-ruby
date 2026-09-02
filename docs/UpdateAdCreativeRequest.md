# Zernio::UpdateAdCreativeRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Zernio SocialAccount id (posting or ads variant); its platform decides where the campaign is created. |  |
| **name** | **String** |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateAdCreativeRequest.new(
  account_id: null,
  name: null
)
```

