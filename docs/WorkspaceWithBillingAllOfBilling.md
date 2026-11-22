# Zernio::WorkspaceWithBillingAllOfBilling

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **set_up** | **Boolean** | False until billing is set up. Until then keys of this workspace can read but a write returns 402 workspace_billing_required. | [optional] |
| **setup_url** | **String** | Dashboard page where a person sets billing up for this workspace; null once it is set up. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::WorkspaceWithBillingAllOfBilling.new(
  set_up: null,
  setup_url: null
)
```

