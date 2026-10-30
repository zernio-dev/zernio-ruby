# Zernio::CreatorCampaignEconomicsPool

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** |  |  |
| **budget_cents** | **Integer** |  |  |
| **min_views_to_qualify** | **Integer** |  |  |
| **organic_views_only** | **Boolean** | Count only organic views: views from ads the creator ran do not earn. Every campaign platform must be YouTube or X, which report ad views per post, or the request answers 400. A post earns nothing until its ad views were first read. | [optional][default to false] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreatorCampaignEconomicsPool.new(
  type: null,
  budget_cents: null,
  min_views_to_qualify: null,
  organic_views_only: null
)
```

