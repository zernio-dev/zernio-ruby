# Zernio::BoostPost200ResponseResultsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node** | **String** |  | [optional] |
| **status** | **String** |  | [optional] |
| **reason** | **String** | Why the node was skipped (it already exists with adSetId), why Meta could not dry-run it (on unverified), or what the dry run could not check (on validated). | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BoostPost200ResponseResultsInner.new(
  node: null,
  status: null,
  reason: null
)
```

