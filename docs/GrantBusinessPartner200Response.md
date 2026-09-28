# Zernio::GrantBusinessPartner200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | [**MetaPageOwnership**](MetaPageOwnership.md) |  | [optional] |
| **partner** | [**GrantBusinessPartner200ResponsePartner**](GrantBusinessPartner200ResponsePartner.md) |  | [optional] |
| **already_shared** | **Boolean** | Always true on this response. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GrantBusinessPartner200Response.new(
  page: null,
  partner: null,
  already_shared: null
)
```

