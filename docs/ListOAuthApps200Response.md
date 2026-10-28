# Zernio::ListOAuthApps200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apps** | [**Array&lt;OAuthApp&gt;**](OAuthApp.md) |  |  |
| **pagination** | [**ListOAuthApps200ResponsePagination**](ListOAuthApps200ResponsePagination.md) |  |  |
| **platforms** | [**Array&lt;OAuthAppSetup&gt;**](OAuthAppSetup.md) |  |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListOAuthApps200Response.new(
  apps: null,
  pagination: null,
  platforms: null
)
```

