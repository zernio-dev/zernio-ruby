# Zernio::GetAdAccountHealth200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **checked_at** | **Time** |  | [optional] |
| **checks** | [**Array&lt;GetAdAccountHealth200ResponseChecksInner&gt;**](GetAdAccountHealth200ResponseChecksInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountHealth200Response.new(
  ad_account_id: null,
  status: null,
  checked_at: null,
  checks: null
)
```

