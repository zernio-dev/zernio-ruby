# Zernio::GetAdAccountHealth200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ad_account_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **ready** | **Boolean** | False when a create or boost on this ad account would be refused; &#x60;blockers&#x60; says why. | [optional] |
| **blockers** | [**Array&lt;GetAdAccountHealth200ResponseBlockersInner&gt;**](GetAdAccountHealth200ResponseBlockersInner.md) |  | [optional] |
| **checked_at** | **Time** |  | [optional] |
| **checks** | [**Array&lt;GetAdAccountHealth200ResponseChecksInner&gt;**](GetAdAccountHealth200ResponseChecksInner.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetAdAccountHealth200Response.new(
  ad_account_id: null,
  status: null,
  ready: null,
  blockers: null,
  checked_at: null,
  checks: null
)
```

