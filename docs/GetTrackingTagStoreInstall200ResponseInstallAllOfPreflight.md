# Zernio::GetTrackingTagStoreInstall200ResponseInstallAllOfPreflight

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ready** | **Boolean** | True when POST should be able to install. | [optional] |
| **reason** | **String** | A TrackingTagInstallBlockedReason when an install would be blocked, else null. | [optional] |
| **sidebars** | [**Array&lt;UpdateFacebookPage200ResponseSelectedPage&gt;**](UpdateFacebookPage200ResponseSelectedPage.md) | Active widget areas of the theme. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::GetTrackingTagStoreInstall200ResponseInstallAllOfPreflight.new(
  ready: null,
  reason: null,
  sidebars: null
)
```

