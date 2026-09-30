# Zernio::MetaCustomerLifecycle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **strategy** | **String** | &#x60;all_customers&#x60; is \&quot;Maximize conversions from all customers\&quot;. &#x60;new_customers&#x60; is \&quot;Acquire new customers\&quot; (excludes existing customers). &#x60;new_customers_excluding_engaged&#x60; also excludes people who engaged with you but have not bought yet.  |  |
| **existing_customer_audience_ids** | **Array&lt;String&gt;** | Custom audience ids that define your existing customers. Required with both new_customers strategies (Meta answers 400 subcode 1870251 without them); not allowed with all_customers. | [optional] |
| **engaged_audience_ids** | **Array&lt;String&gt;** | Custom audience ids of people who engaged but have not bought. Required with new_customers_excluding_engaged, not allowed with the other strategies. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaCustomerLifecycle.new(
  strategy: null,
  existing_customer_audience_ids: null,
  engaged_audience_ids: null
)
```

