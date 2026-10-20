# Zernio::ListLeads200ResponseMeta

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_checked_at** | **Time** | Meta only, present when &#x60;accountId&#x60; is passed: when Zernio last re-read the Page&#39;s forms from Meta to catch leads the webhook missed. Null when no leads matched or before the first pass. | [optional] |
| **last_updated** | **Time** |  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListLeads200ResponseMeta.new(
  last_checked_at: null,
  last_updated: null
)
```

