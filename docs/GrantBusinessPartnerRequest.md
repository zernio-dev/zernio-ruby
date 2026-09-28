# Zernio::GrantBusinessPartnerRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** | Meta business portfolio id of the partner (numeric string). |  |
| **permitted_tasks** | **Array&lt;String&gt;** | Tasks granted on the Page. Defaults to ADVERTISE and ANALYZE. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GrantBusinessPartnerRequest.new(
  business_id: null,
  permitted_tasks: null
)
```

