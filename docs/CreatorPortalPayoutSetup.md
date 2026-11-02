# Zernio::CreatorPortalPayoutSetup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | How the campaign pays: treasury means through Zernio, so the creator onboards for payouts, which they can do from the moment they join. Earnings wait until it is done. |  |
| **status** | **String** |  |  |
| **country** | **String** |  |  |
| **suggested_country** | **String** | The country the request came from, to preselect before payout setup starts. Null once the payout account has a country, and outside treasury mode. |  |
| **transfers** | [**Array&lt;CreatorPortalPayoutSetupTransfersInner&gt;**](CreatorPortalPayoutSetupTransfersInner.md) | Treasury payouts sent to the creator. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalPayoutSetup.new(
  mode: null,
  status: null,
  country: null,
  suggested_country: null,
  transfers: null
)
```

