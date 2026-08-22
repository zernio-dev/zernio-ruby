# Zernio::ReplaceAdAudienceCompaniesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **companies** | [**Array&lt;ReplaceAdAudienceCompaniesRequestCompaniesInner&gt;**](ReplaceAdAudienceCompaniesRequestCompaniesInner.md) | The complete company list. Each row needs at least one of name, domain, website or linkedinPageUrl. |  |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::ReplaceAdAudienceCompaniesRequest.new(
  companies: null
)
```

