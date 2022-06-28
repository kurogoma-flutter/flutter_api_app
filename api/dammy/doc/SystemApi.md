# openapi.api.SystemApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to */api/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**healthGet**](SystemApi.md#healthget) | **GET** /health | 


# **healthGet**
> Health healthGet()



### Example
```dart
import 'package:openapi/api.dart';

final api_instance = SystemApi();

try {
    final result = api_instance.healthGet();
    print(result);
} catch (e) {
    print('Exception when calling SystemApi->healthGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Health**](Health.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

