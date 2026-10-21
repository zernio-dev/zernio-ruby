# Zernio::GetAdAccountBilling200ResponseBillingSetupsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing_setup_id** | **String** |  | [optional] |
| **status** | **String** | APPROVED_HELD means approved but waiting for its first account budget to be approved. | [optional] |
| **payments_account_id** | **String** |  | [optional] |
| **start_date_time** | **String** | In the account time zone, as Google returns it. | [optional] |
| **end_date_time** | **String** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountBilling200ResponseBillingSetupsInner.new(
  billing_setup_id: null,
  status: null,
  payments_account_id: null,
  start_date_time: null,
  end_date_time: null
)
```

