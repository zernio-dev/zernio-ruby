# Zernio::TrackingLink

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **code** | **String** | The short code in &#x60;url&#x60;, such as &#x60;aB3dE5fG&#x60;. Unique across Zernio. | [optional] |
| **site_id** | **String** | The tracking site the link belongs to. | [optional] |
| **profile_id** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **destinations** | [**Array&lt;TrackingLinkDestination&gt;**](TrackingLinkDestination.md) |  | [optional] |
| **campaign** | [**TrackingLinkCampaign**](TrackingLinkCampaign.md) |  | [optional] |
| **url** | **String** | The link to put in ads, such as &#x60;https://t.brand.com/r/aB3dE5fG&#x60;. It uses the site&#39;s custom subdomain once that is active. | [optional] |
| **postback_url** | **String** | The server-to-server postback URL for the network, with its own macros in place of &#x60;{clickid}&#x60;, &#x60;{payout}&#x60; and &#x60;{txid}&#x60;. A &#x60;status&#x60; of &#x60;rejected&#x60;, &#x60;declined&#x60;, &#x60;refunded&#x60;, &#x60;reversed&#x60; or &#x60;chargeback&#x60; retracts the conversion; &#x60;pending&#x60; is ignored. It holds a secret: rotate it with &#x60;POST /v1/tracking-links/{linkId}/rotate-postback-token&#x60; if it leaks. | [optional] |
| **created_at** | **Time** |  | [optional] |
| **updated_at** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::TrackingLink.new(
  id: null,
  name: null,
  code: null,
  site_id: null,
  profile_id: null,
  status: null,
  destinations: null,
  campaign: null,
  url: null,
  postback_url: null,
  created_at: null,
  updated_at: null
)
```

