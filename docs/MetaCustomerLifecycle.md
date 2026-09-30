# Zernio::MetaCustomerLifecycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **strategy** | **String** | &#x60;all_customers&#x60; is \&quot;Maximize conversions from all customers\&quot;. &#x60;new_customers&#x60; is \&quot;Acquire new customers\&quot; (excludes existing customers). &#x60;new_customers_excluding_engaged&#x60; also excludes people who engaged with you but have not bought yet.  |  |
| **existing_customer_audience_ids** | **Array&lt;String&gt;** | Custom audience ids that define your existing customers. Omit to use the definition saved on the ad account. Only with a new_customers strategy. | [optional] |
| **engaged_audience_ids** | **Array&lt;String&gt;** | Custom audience ids that define engaged people. Only with new_customers_excluding_engaged. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaCustomerLifecycle.new(
  strategy: null,
  existing_customer_audience_ids: null,
  engaged_audience_ids: null
)
```

