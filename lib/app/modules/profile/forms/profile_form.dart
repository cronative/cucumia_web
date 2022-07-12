import 'package:reactive_forms/reactive_forms.dart';

class ProfileForms {
  static final FormGroup profileEditForm = FormGroup({
    'email': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'mobile_no': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'first_name': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'last_name': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'address': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'city': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'country': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
    'postal_code': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
  });
  static final FormGroup profilePasswordForm = FormGroup({
    'current_password': FormControl<String>(
      validators: [
        Validators.required,
      ],
    ),
  });
}
