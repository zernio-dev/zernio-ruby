# Zernio::InlineObject2Details

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **free_tier_account_limit** | **Integer** | How many accounts the free tier allows. Only set when reason&#x3D;free_tier_exceeded. | [optional] |
| **current_account_count** | **Integer** | How many accounts the team currently has connected. Set when reason&#x3D;free_tier_exceeded or reason&#x3D;enterprise_required. | [optional] |
| **has_payment_method** | **Boolean** | Whether the team currently has a card on file in Stripe. Set when reason&#x3D;free_tier_exceeded or reason&#x3D;twitter_passthrough. | [optional] |
| **public_account_limit** | **Integer** | Public pricing ceiling (the published cap beyond which an enterprise contract is required). Only set when reason&#x3D;enterprise_required. | [optional] |
| **effective_account_limit** | **Integer** | The cap actually applied to this team. Equals &#x60;public_account_limit&#x60; for organic teams; for teams with a per-customer override (grandfathered legacy customers, signed enterprise contracts) this can be higher. Only set when reason&#x3D;enterprise_required.  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::InlineObject2Details.new(
  free_tier_account_limit: 2,
  current_account_count: 5,
  has_payment_method: null,
  public_account_limit: 2000,
  effective_account_limit: 2000
)
```

