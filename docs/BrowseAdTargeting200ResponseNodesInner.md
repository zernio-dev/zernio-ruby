# Zernio::BrowseAdTargeting200ResponseNodesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **node_id** | **String** | Identifies the node within this response. Not a Meta id: never put it in a targeting spec. |  |
| **parent_node_id** | **String** | nodeId of the parent organizational node, null for a root. |  |
| **id** | **String** | Meta targeting id, null on organizational nodes. |  |
| **name** | **String** |  |  |
| **type** | **String** | Meta&#39;s targeting spec key (interests, behaviors, industries, life_events, education_statuses, relationship_statuses, family_statuses, income, ...). Null on most organizational nodes. |  |
| **path** | **Array&lt;String&gt;** | Labels of the ancestors, root first. Does not include the node itself. |  |
| **selectable** | **Boolean** | True when the node can be targeted (it has a Meta id). |  |
| **description** | **String** | Meta&#39;s description, when it has one. | [optional] |
| **audience_size_lower_bound** | **Integer** | Meta&#39;s estimated audience size, lower bound, when reported. | [optional] |
| **audience_size_upper_bound** | **Integer** | Meta&#39;s estimated audience size, upper bound, when reported. | [optional] |

## Example

```ruby
require 'zernio-sdk'

instance = Zernio::BrowseAdTargeting200ResponseNodesInner.new(
  node_id: null,
  parent_node_id: null,
  id: null,
  name: null,
  type: null,
  path: null,
  selectable: null,
  description: null,
  audience_size_lower_bound: null,
  audience_size_upper_bound: null
)
```

