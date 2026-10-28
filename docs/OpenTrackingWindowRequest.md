# Zernio::OpenTrackingWindowRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **post_id** | **String** | Id of an external post. Required unless &#x60;accountId&#x60; and &#x60;url&#x60; are both sent. | [optional] |
| **account_id** | **String** | Connected account the post belongs to. Send together with &#x60;url&#x60;. | [optional] |
| **url** | **String** | Public URL of the post on the platform. Send together with &#x60;accountId&#x60;. | [optional] |
| **tracking_days** | **Integer** | How many days the window stays open. | [optional][default to 30] |
| **requested_by** | **String** | Free-form label for who asked for the window. It is stored and returned as given. | [optional][default to &#39;api&#39;] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OpenTrackingWindowRequest.new(
  post_id: null,
  account_id: null,
  url: null,
  tracking_days: null,
  requested_by: null
)
```

