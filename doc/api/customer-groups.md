# Customer Groups

```ruby
customer_groups_api = client.customer_groups
```

## Class Name

`CustomerGroupsApi`

## Methods

* [List Customer Groups](../../doc/api/customer-groups.md#list-customer-groups)
* [Create Customer Group](../../doc/api/customer-groups.md#create-customer-group)
* [Delete Customer Group](../../doc/api/customer-groups.md#delete-customer-group)
* [Retrieve Customer Group](../../doc/api/customer-groups.md#retrieve-customer-group)
* [Update Customer Group](../../doc/api/customer-groups.md#update-customer-group)


# List Customer Groups

Retrieves the list of customer groups of a business.

```ruby
def list_customer_groups(cursor: nil,
                         limit: nil)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cursor` | `String` | Query, Optional | A pagination cursor returned by a previous call to this endpoint.<br>Provide this cursor to retrieve the next set of results for your original query.<br><br>For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). |
| `limit` | `Integer` | Query, Optional | The maximum number of results to return in a single page. This limit is advisory. The response might contain more or fewer results.<br>If the limit is less than 1 or greater than 50, Square returns a `400 VALUE_TOO_LOW` or `400 VALUE_TOO_HIGH` error. The default value is 50.<br><br>For more information, see [Pagination](https://developer.squareup.com/docs/build-basics/common-api-patterns/pagination). |

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`List Customer Groups Response Hash`](../../doc/models/list-customer-groups-response.md).

## Example Usage

```ruby
result = customer_groups_api.list_customer_groups

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Create Customer Group

Creates a new customer group for a business.

The request must include the `name` value of the group.

```ruby
def create_customer_group(body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `body` | [`Create Customer Group Request Hash`](../../doc/models/create-customer-group-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Create Customer Group Response Hash`](../../doc/models/create-customer-group-response.md).

## Example Usage

```ruby
body = {
  :group => {
    :name => 'Loyal Customers'
  }
}


result = customer_groups_api.create_customer_group(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Delete Customer Group

Deletes a customer group as identified by the `group_id` value.

```ruby
def delete_customer_group(group_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `group_id` | `String` | Template, Required | The ID of the customer group to delete. |

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Delete Customer Group Response Hash`](../../doc/models/delete-customer-group-response.md).

## Example Usage

```ruby
group_id = 'group_id0'


result = customer_groups_api.delete_customer_group(group_id: group_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Retrieve Customer Group

Retrieves a specific customer group as identified by the `group_id` value.

```ruby
def retrieve_customer_group(group_id:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `group_id` | `String` | Template, Required | The ID of the customer group to retrieve. |

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Retrieve Customer Group Response Hash`](../../doc/models/retrieve-customer-group-response.md).

## Example Usage

```ruby
group_id = 'group_id0'


result = customer_groups_api.retrieve_customer_group(group_id: group_id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```


# Update Customer Group

Updates a customer group as identified by the `group_id` value.

```ruby
def update_customer_group(group_id:,
                          body:)
```

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `group_id` | `String` | Template, Required | The ID of the customer group to update. |
| `body` | [`Update Customer Group Request Hash`](../../doc/models/update-customer-group-request.md) | Body, Required | An object containing the fields to POST for the request.<br><br>See the corresponding object definition for field details. |

## Response Type

This method returns a `ApiResponse` instance. The `data` property in this instance returns the response data which is of type [`Update Customer Group Response Hash`](../../doc/models/update-customer-group-response.md).

## Example Usage

```ruby
group_id = 'group_id0'

body = {
  :group => {
    :name => 'Loyal Customers'
  }
}


result = customer_groups_api.update_customer_group(
  group_id: group_id,
  body: body
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

