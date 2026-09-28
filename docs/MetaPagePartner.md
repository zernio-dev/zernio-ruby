# Zernio::MetaPagePartner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **business_id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **permitted_tasks** | **Array&lt;String&gt;** | Tasks the partner holds, in the bare spelling the grant takes (ADVERTISE, ANALYZE, MANAGE, ...). Meta reads them back with a PROFILE_PLUS_ prefix, which is stripped here; partners granted in Business Settings may hold tasks beyond the six the grant accepts, such as MANAGE_LEADS or REVENUE. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::MetaPagePartner.new(
  business_id: null,
  name: null,
  permitted_tasks: null
)
```

