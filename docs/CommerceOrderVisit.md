# Zernio::CommerceOrderVisit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **occurred_at** | **Time** | Null on WooCommerce, which records the session start without a timezone. | [optional] |
| **landing_url** | **String** | The first page of the session, with its query string. | [optional] |
| **referrer_url** | **String** |  | [optional] |
| **source** | **String** | Where the visit came from, as the platform names it. | [optional] |
| **source_type** | **String** | Shopify marketing tactic (e.g. SOCIAL, AD, SEARCH) or WooCommerce source type (utm, organic, referral, typein, admin). | [optional] |
| **utm** | [**CommerceOrderVisitUtm**](CommerceOrderVisitUtm.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CommerceOrderVisit.new(
  occurred_at: null,
  landing_url: null,
  referrer_url: null,
  source: instagram,
  source_type: null,
  utm: null
)
```

