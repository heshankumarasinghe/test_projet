import 'package:flutter/material.dart';
import 'package:test_project/constants/api_endpoints.dart';

import '../mixins/responsive_layout_mixin.dart';
import '../widgets/center_widget.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_elevated_button.dart';
import '../services/api_service.dart';
import '../exceptions/invalid_network_request.dart';
import '../constants/error_messages.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _usernameController = TextEditingController();
  final _postNameController = TextEditingController();

  void _onPostFetchingSuccess(dynamic data) {
    print(data);
  }

  void _submitForm() {
    final username = _usernameController.text;
    final postName = _postNameController.text;

    _usernameController.clear();
    _postNameController.clear();

    try {
      ApiService.callApi(
        ApiEndpoints.getPosts,
        RequestType.get,
        onSuccess: _onPostFetchingSuccess,
        onFailed: () {},
      );
    } on InvalidNetworkRequest catch (err) {
      if (err.errorText == ErrorMessages.requestBodyForGetRequestMessage) {
        // Do presentation layer tasks
      }
    } catch (err) {
      // Undefined Errors
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SizedBox(
            width: ResponsiveLayoutMixin.getScreenWidth(context) * 0.8,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const CenterWidget(
                  child: Text(
                    'Enter Form Data',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  controller: _usernameController,
                  labelText: 'Username',
                  onChanged: (_) {},
                ),
                const SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  controller: _postNameController,
                  labelText: 'Post Name',
                  onChanged: (_) {},
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomElevatedButton(
                  labelText: 'Submit',
                  onPressed: _submitForm,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
