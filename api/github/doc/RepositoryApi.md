# openapi.api.RepositoryApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *https://api.github.com/search*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getRepos**](RepositoryApi.md#getrepos) | **GET** /repositories | リポジトリ取得


# **getRepos**
> ResponseGetRepos getRepos()

リポジトリ取得

検索条件に合致するリポジトリを取得します

### Example
```dart
import 'package:openapi/api.dart';

final api_instance = RepositoryApi();

try {
    final result = api_instance.getRepos();
    print(result);
} catch (e) {
    print('Exception when calling RepositoryApi->getRepos: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ResponseGetRepos**](ResponseGetRepos.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

