# Zernio::CreatorPortalPayoutSetup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **mode** | **String** | How the campaign pays: treasury means through Zernio, so the creator onboards for payouts. |  |
| **status** | **String** |  |  |
| **country** | **String** |  |  |
| **transfers** | [**Array&lt;CreatorPortalPayoutSetupTransfersInner&gt;**](CreatorPortalPayoutSetupTransfersInner.md) | Treasury payouts sent to the creator. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorPortalPayoutSetup.new(
  mode: null,
  status: null,
  country: null,
  transfers: null
)
```

