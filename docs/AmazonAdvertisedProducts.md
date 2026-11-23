# Zernio::AmazonAdvertisedProducts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **asins** | **Array&lt;String&gt;** | Vendor profiles: the ASINs to advertise, one product ad each. | [optional] |
| **skus** | **Array&lt;String&gt;** | Seller profiles: the SKUs to advertise, one product ad each. Sending the identifier the profile does not use returns a 400. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::AmazonAdvertisedProducts.new(
  asins: null,
  skus: null
)
```

