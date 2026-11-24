# Zernio::ListInboxReviews200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** |  | [optional] |
| **data** | [**Array&lt;ListInboxReviews200ResponseDataInner&gt;**](ListInboxReviews200ResponseDataInner.md) |  | [optional] |
| **pagination** | [**ListCalendarEventInstances200ResponsePagination**](ListCalendarEventInstances200ResponsePagination.md) |  | [optional] |
| **meta** | [**ListInboxReviews200ResponseMeta**](ListInboxReviews200ResponseMeta.md) |  | [optional] |
| **summary** | [**ListInboxReviews200ResponseSummary**](ListInboxReviews200ResponseSummary.md) |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListInboxReviews200Response.new(
  status: null,
  data: null,
  pagination: null,
  meta: null,
  summary: null
)
```

