# Zernio::CreatedGoogleAdAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **ad_account_id** | **String** | New Google Ads customer id for subsequent ads calls. |  |
| **manager_customer_id** | **String** | Manager the account was created under. |  |
| **connection_updated** | **Boolean** | Whether the customer was added to the connection and discovery was scheduled. When false the account exists: reconnect Google Ads instead of creating it again. |  |
| **warnings** | **Array&lt;String&gt;** | Recovery instructions if the account could not be attached to the connection. |  |
| **payment_method_required** | **Boolean** | Always true. The account has no billing until it is set up in Google Ads. |  |
| **next_steps** | **String** | Billing setup instructions for the user. |  |
| **validate_only** | **Boolean** | Always false on a 201. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatedGoogleAdAccount.new(
  platform: null,
  ad_account_id: null,
  manager_customer_id: null,
  connection_updated: null,
  warnings: null,
  payment_method_required: null,
  next_steps: null,
  validate_only: null
)
```

