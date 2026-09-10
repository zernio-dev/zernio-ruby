# Zernio::CreateAdAccount201Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** | New Meta ad account ID for subsequent ads calls. |  |
| **business_id** | **String** | Owning business portfolio ID. |  |
| **connection_updated** | **Boolean** | Whether the connection scope and discovery schedule were updated. |  |
| **payment_method_required** | **Boolean** | Always true as a delivery prerequisite. This is not a live funding-source check. Confirm payment or invoicing in Ads Manager. |  |
| **ads_manager_url** | **String** | Open the created account in Ads Manager. |  |
| **next_steps** | **String** | Payment setup instructions for the user. |  |
| **warnings** | **Array&lt;String&gt;** | Recovery instructions if the account could not be attached to the connection. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateAdAccount201Response.new(
  ad_account_id: null,
  business_id: null,
  connection_updated: null,
  payment_method_required: null,
  ads_manager_url: null,
  next_steps: null,
  warnings: null
)
```

