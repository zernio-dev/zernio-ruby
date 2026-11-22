# Zernio::GetEventsOverview200ResponseWebsite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **steps** | [**Array&lt;GetEventsOverview200ResponseWebsiteStepsInner&gt;**](GetEventsOverview200ResponseWebsiteStepsInner.md) | The funnel: page views, product views, add to cart, checkouts and purchases today. | [optional] |
| **recovered** | **Integer** | Purchases with ad consent for which no browser pixel fired, so only the server reported them. | [optional] |
| **conversions** | **Integer** | Purchases today. | [optional] |
| **consented** | **Integer** | Page views with ad storage consent. | [optional] |
| **visits** | **Integer** | Page views today. | [optional] |
| **bots** | **Integer** | Page views from bots. | [optional] |
| **server_platforms** | **Array&lt;String&gt;** | Platforms of the forwarding rules that receive website events. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetEventsOverview200ResponseWebsite.new(
  steps: null,
  recovered: null,
  conversions: null,
  consented: null,
  visits: null,
  bots: null,
  server_platforms: null
)
```

