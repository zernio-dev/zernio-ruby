# Zernio::LinkedInLeadFormPlatformDataQuestionsInner

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'zernio-sdk'

Zernio::LinkedInLeadFormPlatformDataQuestionsInner.openapi_one_of
# =>
# [
#   :'LinkedInLeadFormPlatformDataQuestionsInnerOneOf',
#   :'LinkedInLeadFormPlatformDataQuestionsInnerOneOf1'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'zernio-sdk'

Zernio::LinkedInLeadFormPlatformDataQuestionsInner.build(data)
# => #<LinkedInLeadFormPlatformDataQuestionsInnerOneOf:0x00007fdd4aab02a0>

Zernio::LinkedInLeadFormPlatformDataQuestionsInner.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `LinkedInLeadFormPlatformDataQuestionsInnerOneOf`
- `LinkedInLeadFormPlatformDataQuestionsInnerOneOf1`
- `nil` (if no type matches)

