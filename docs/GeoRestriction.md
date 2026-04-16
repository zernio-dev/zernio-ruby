# Late::GeoRestriction

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **countries** | **Array&lt;String&gt;** | ISO 3166-1 alpha-2 country codes (uppercase). Only users in these countries can see the post. Maximum 25 countries per post. Example: [\&quot;US\&quot;, \&quot;CA\&quot;, \&quot;GB\&quot;, \&quot;ES\&quot;].  |  |

## Example

```ruby
require 'late-sdk'

instance = Late::GeoRestriction.new(
  countries: [US, CA, GB]
)
```

