# Zernio::UpdateConnectWelcomeScreenRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **show_by_default** | **Boolean** | Show the welcome screen on connect calls that do not pass &#x60;welcome&#x60;. |  |
| **brand_name** | **String** |  | [optional] |
| **logo_url** | **String** | https URL of a square logo. | [optional] |
| **theme** | **Object** | Same keys as the &#x60;welcomeTheme&#x60; parameter of &#x60;GET /v1/connect/{platform}&#x60;, as a JSON object. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::UpdateConnectWelcomeScreenRequest.new(
  show_by_default: null,
  brand_name: null,
  logo_url: null,
  theme: null
)
```

