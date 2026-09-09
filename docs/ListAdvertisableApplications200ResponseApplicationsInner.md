# Zernio::ListAdvertisableApplications200ResponseApplicationsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Meta application ID. |  |
| **name** | **String** | Application name. |  |
| **supported_platforms** | **Array&lt;String&gt;** | Platform identifiers reported by Meta. |  |
| **store_urls** | **Hash&lt;String, String&gt;** | Platform-keyed store URLs returned unchanged by Meta. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ListAdvertisableApplications200ResponseApplicationsInner.new(
  id: null,
  name: null,
  supported_platforms: null,
  store_urls: null
)
```

