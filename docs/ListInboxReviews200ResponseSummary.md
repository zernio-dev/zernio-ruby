# Zernio::ListInboxReviews200ResponseSummary

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_reviews** | **Integer** | Includes reviews without a star rating. | [optional] |
| **average_rating** | **Float** | Mean star rating rounded to one decimal, leaving out reviews without a star rating. Null when none has one. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxReviews200ResponseSummary.new(
  total_reviews: null,
  average_rating: null
)
```

