# Zernio::ConnectWelcomeScreen

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **show_by_default** | **Boolean** |  | [optional] |
| **brand_name** | **String** |  | [optional] |
| **logo_url** | **String** |  | [optional] |
| **theme** | **Object** | Same keys as the &#x60;welcomeTheme&#x60; parameter of &#x60;GET /v1/connect/{platform}&#x60;. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ConnectWelcomeScreen.new(
  show_by_default: null,
  brand_name: null,
  logo_url: null,
  theme: null
)
```

