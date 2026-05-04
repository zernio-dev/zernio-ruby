# Zernio::XApiOperationTriggeredByInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **method** | **String** | Zernio platform method name. | [optional] |
| **metering** | **String** | When the method actually bills the user:   * &#x60;always&#x60; — every call is metered   * &#x60;analytics_optin&#x60; — only when the X account has analytics enabled   * &#x60;inbox_optin&#x60; — only when the X account has inbox sync enabled   * &#x60;absorbed&#x60; — Zernio eats the cost, never billed  | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::XApiOperationTriggeredByInner.new(
  method: getPostAnalytics,
  metering: null
)
```

