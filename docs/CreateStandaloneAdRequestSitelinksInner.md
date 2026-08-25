# Zernio::CreateStandaloneAdRequestSitelinksInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The clickable link text shown under the ad. 25-char cap comes from Google. |  |
| **link_url** | **String** | Final URL the sitelink navigates to. |  |
| **description1** | **String** | First description line under the link text (optional). 35-char cap. | [optional] |
| **description2** | **String** | Second description line (optional; usually paired with description1). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::CreateStandaloneAdRequestSitelinksInner.new(
  text: null,
  link_url: null,
  description1: null,
  description2: null
)
```

