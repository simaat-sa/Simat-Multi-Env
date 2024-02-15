// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(count) => "Contracts ${count}";

  static String m1(count) => "Maintenance Orders ${count}";

  static String m2(MB, files) =>
      "Files size must be less than ${MB} MB, ${files}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "AddressValidation":
            MessageLookupByLibrary.simpleMessage("Please enter the address"),
        "Invalid_login_data": MessageLookupByLibrary.simpleMessage(
            "Please verify your login information"),
        "Please_authenticate_to_login": MessageLookupByLibrary.simpleMessage(
            "Please authenticate to login to your account"),
        "Sign_In": MessageLookupByLibrary.simpleMessage("SIGN IN"),
        "Welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "access_denied": MessageLookupByLibrary.simpleMessage("Access denied"),
        "active": MessageLookupByLibrary.simpleMessage("Active"),
        "add_new_item": MessageLookupByLibrary.simpleMessage("Add new item"),
        "app_cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "app_confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "application_approval":
            MessageLookupByLibrary.simpleMessage("Application Approval"),
        "attribution": MessageLookupByLibrary.simpleMessage("Attribution"),
        "camera": MessageLookupByLibrary.simpleMessage("Camera"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "canceled": MessageLookupByLibrary.simpleMessage("Canceled"),
        "closed": MessageLookupByLibrary.simpleMessage("Closed"),
        "commercial": MessageLookupByLibrary.simpleMessage("Commercial"),
        "completed": MessageLookupByLibrary.simpleMessage("Completed"),
        "confirmValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter the password identical"),
        "contractsCount": m0,
        "copied_successfully":
            MessageLookupByLibrary.simpleMessage("Copied successfully"),
        "done": MessageLookupByLibrary.simpleMessage("Done"),
        "error_BadRequest_Error":
            MessageLookupByLibrary.simpleMessage("BAD REQUEST"),
        "error_NotFound_Error":
            MessageLookupByLibrary.simpleMessage("No result found"),
        "error_Timeout_Error": MessageLookupByLibrary.simpleMessage("TIME OUT"),
        "error_Unauthorized_Error":
            MessageLookupByLibrary.simpleMessage("UNAUTHORIZED"),
        "error_cancel_token": MessageLookupByLibrary.simpleMessage(
            "The connection is interrupted"),
        "error_confirm_password":
            MessageLookupByLibrary.simpleMessage("Passwords do not match"),
        "error_conflict":
            MessageLookupByLibrary.simpleMessage("Conflict error"),
        "error_connection": MessageLookupByLibrary.simpleMessage(
            "An error occurred during the connection"),
        "error_connection_lost":
            MessageLookupByLibrary.simpleMessage("Connection error"),
        "error_forbidden_error":
            MessageLookupByLibrary.simpleMessage("YOU DO NOT HAVE PRIVILEGE"),
        "error_general": MessageLookupByLibrary.simpleMessage(
            "AN UNEXPECTED ERROR OCCURRED"),
        "error_internal_server":
            MessageLookupByLibrary.simpleMessage("INTERNAL SERVER ERROR"),
        "error_socket":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "expired": MessageLookupByLibrary.simpleMessage("Expired"),
        "failureActions":
            MessageLookupByLibrary.simpleMessage("Failure Actions"),
        "fillField":
            MessageLookupByLibrary.simpleMessage("Please enter this field"),
        "how_get_code":
            MessageLookupByLibrary.simpleMessage("How can I get the code?"),
        "implemented": MessageLookupByLibrary.simpleMessage("Implemented"),
        "inactive": MessageLookupByLibrary.simpleMessage("Inactive"),
        "internet_connected":
            MessageLookupByLibrary.simpleMessage("Internet connected"),
        "label_Login": MessageLookupByLibrary.simpleMessage("Login"),
        "label_app_language": MessageLookupByLibrary.simpleMessage("Language"),
        "label_change_language":
            MessageLookupByLibrary.simpleMessage("Change language"),
        "label_choose_language":
            MessageLookupByLibrary.simpleMessage("Choose language"),
        "label_confirm_password":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "label_email": MessageLookupByLibrary.simpleMessage("User name"),
        "label_forget_pass":
            MessageLookupByLibrary.simpleMessage("Forget password?"),
        "label_full_name": MessageLookupByLibrary.simpleMessage("Full name"),
        "label_logout": MessageLookupByLibrary.simpleMessage("Logout"),
        "label_password": MessageLookupByLibrary.simpleMessage("Password"),
        "label_phone": MessageLookupByLibrary.simpleMessage("Phone"),
        "label_register": MessageLookupByLibrary.simpleMessage("Register"),
        "loadingText": MessageLookupByLibrary.simpleMessage("Loading…"),
        "login_with_qr":
            MessageLookupByLibrary.simpleMessage("Scan the QR code to log in"),
        "mailValidation":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "maintenanceCount": m1,
        "nameValidation": MessageLookupByLibrary.simpleMessage(
            "Should be more than 8 and less than 30"),
        "new_code": MessageLookupByLibrary.simpleMessage("New code"),
        "no_internet_connection":
            MessageLookupByLibrary.simpleMessage("No internet connection"),
        "owner": MessageLookupByLibrary.simpleMessage("Owner"),
        "passValidation": MessageLookupByLibrary.simpleMessage(
            "Should have Upper and Lower case, numbers and special characters"),
        "paused": MessageLookupByLibrary.simpleMessage("Paused"),
        "phoneValidation": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid mobile phone"),
        "pick": MessageLookupByLibrary.simpleMessage("Pick"),
        "please_fill_all_fields":
            MessageLookupByLibrary.simpleMessage("Please fill all fields"),
        "posted": MessageLookupByLibrary.simpleMessage("Posted"),
        "rejected_by_the_owner":
            MessageLookupByLibrary.simpleMessage("rejected By The Owner"),
        "rejected_by_the_supervisor":
            MessageLookupByLibrary.simpleMessage("rejected By The Supervisor"),
        "residential": MessageLookupByLibrary.simpleMessage("Residential"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "save": MessageLookupByLibrary.simpleMessage("Save"),
        "search": MessageLookupByLibrary.simpleMessage("Search"),
        "size_more_than_mg_error": m2,
        "something_went_wrong":
            MessageLookupByLibrary.simpleMessage("Something went wrong"),
        "successfully_Logged_in":
            MessageLookupByLibrary.simpleMessage("Successfully Logged in"),
        "supervisor_approved":
            MessageLookupByLibrary.simpleMessage("supervisor Approved"),
        "supervisor_identifications":
            MessageLookupByLibrary.simpleMessage("supervisor Identifications"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("TRY AGAIN")
      };
}
