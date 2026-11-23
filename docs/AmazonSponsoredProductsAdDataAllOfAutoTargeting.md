# Zernio::AmazonSponsoredProductsAdDataAllOfAutoTargeting

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **close_match** | [**AmazonAutoTargetGroup**](AmazonAutoTargetGroup.md) |  | [optional] |
| **loose_match** | [**AmazonAutoTargetGroup**](AmazonAutoTargetGroup.md) |  | [optional] |
| **substitutes** | [**AmazonAutoTargetGroup**](AmazonAutoTargetGroup.md) |  | [optional] |
| **complements** | [**AmazonAutoTargetGroup**](AmazonAutoTargetGroup.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AmazonSponsoredProductsAdDataAllOfAutoTargeting.new(
  close_match: null,
  loose_match: null,
  substitutes: null,
  complements: null
)
```

