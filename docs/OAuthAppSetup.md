# Zernio::OAuthAppSetup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **platform** | **String** |  |  |
| **redirect_uri** | **String** | Allow this OAuth redirect URI in your app on the platform. |  |
| **core_scopes** | **Array&lt;String&gt;** | Requested on every connect, whatever areas the app enables. |  |
| **scope_areas** | [**Array&lt;OAuthAppSetupScopeAreasInner&gt;**](OAuthAppSetupScopeAreasInner.md) | The areas an app on this platform can enable, each with the scopes it requests. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::OAuthAppSetup.new(
  platform: null,
  redirect_uri: null,
  core_scopes: null,
  scope_areas: null
)
```

