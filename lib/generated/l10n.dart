// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `TRY AGAIN`
  String get tryAgain {
    return Intl.message(
      'TRY AGAIN',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `INTERNAL SERVER ERROR`
  String get error_internal_server {
    return Intl.message(
      'INTERNAL SERVER ERROR',
      name: 'error_internal_server',
      desc: '',
      args: [],
    );
  }

  /// `BAD REQUEST`
  String get error_BadRequest_Error {
    return Intl.message(
      'BAD REQUEST',
      name: 'error_BadRequest_Error',
      desc: '',
      args: [],
    );
  }

  /// `No result found`
  String get error_NotFound_Error {
    return Intl.message(
      'No result found',
      name: 'error_NotFound_Error',
      desc: '',
      args: [],
    );
  }

  /// `TIME OUT`
  String get error_Timeout_Error {
    return Intl.message(
      'TIME OUT',
      name: 'error_Timeout_Error',
      desc: '',
      args: [],
    );
  }

  /// `AN UNEXPECTED ERROR OCCURRED`
  String get error_general {
    return Intl.message(
      'AN UNEXPECTED ERROR OCCURRED',
      name: 'error_general',
      desc: '',
      args: [],
    );
  }

  /// `UNAUTHORIZED`
  String get error_Unauthorized_Error {
    return Intl.message(
      'UNAUTHORIZED',
      name: 'error_Unauthorized_Error',
      desc: '',
      args: [],
    );
  }

  /// `YOU DO NOT HAVE PRIVILEGE`
  String get error_forbidden_error {
    return Intl.message(
      'YOU DO NOT HAVE PRIVILEGE',
      name: 'error_forbidden_error',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred during the connection`
  String get error_connection {
    return Intl.message(
      'An error occurred during the connection',
      name: 'error_connection',
      desc: '',
      args: [],
    );
  }

  /// `Connection error`
  String get error_connection_lost {
    return Intl.message(
      'Connection error',
      name: 'error_connection_lost',
      desc: '',
      args: [],
    );
  }

  /// `The connection is interrupted`
  String get error_cancel_token {
    return Intl.message(
      'The connection is interrupted',
      name: 'error_cancel_token',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get error_confirm_password {
    return Intl.message(
      'Passwords do not match',
      name: 'error_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Please enter this field`
  String get fillField {
    return Intl.message(
      'Please enter this field',
      name: 'fillField',
      desc: '',
      args: [],
    );
  }

  /// `Should have Upper and Lower case, numbers and special characters`
  String get passValidation {
    return Intl.message(
      'Should have Upper and Lower case, numbers and special characters',
      name: 'passValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get mailValidation {
    return Intl.message(
      'Please enter a valid email',
      name: 'mailValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid mobile phone`
  String get phoneValidation {
    return Intl.message(
      'Please enter a valid mobile phone',
      name: 'phoneValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the password identical`
  String get confirmValidation {
    return Intl.message(
      'Please enter the password identical',
      name: 'confirmValidation',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the address`
  String get AddressValidation {
    return Intl.message(
      'Please enter the address',
      name: 'AddressValidation',
      desc: '',
      args: [],
    );
  }

  /// `Should be more than 8 and less than 30`
  String get nameValidation {
    return Intl.message(
      'Should be more than 8 and less than 30',
      name: 'nameValidation',
      desc: '',
      args: [],
    );
  }

  /// `No internet connection`
  String get error_socket {
    return Intl.message(
      'No internet connection',
      name: 'error_socket',
      desc: '',
      args: [],
    );
  }

  /// `Conflict error`
  String get error_conflict {
    return Intl.message(
      'Conflict error',
      name: 'error_conflict',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get app_cancel {
    return Intl.message(
      'Cancel',
      name: 'app_cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get app_confirm {
    return Intl.message(
      'Confirm',
      name: 'app_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get label_logout {
    return Intl.message(
      'Logout',
      name: 'label_logout',
      desc: '',
      args: [],
    );
  }

  /// `Change language`
  String get label_change_language {
    return Intl.message(
      'Change language',
      name: 'label_change_language',
      desc: '',
      args: [],
    );
  }

  /// `Choose language`
  String get label_choose_language {
    return Intl.message(
      'Choose language',
      name: 'label_choose_language',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get label_app_language {
    return Intl.message(
      'Language',
      name: 'label_app_language',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get label_Login {
    return Intl.message(
      'Login',
      name: 'label_Login',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get label_register {
    return Intl.message(
      'Register',
      name: 'label_register',
      desc: '',
      args: [],
    );
  }

  /// `Forget password?`
  String get label_forget_pass {
    return Intl.message(
      'Forget password?',
      name: 'label_forget_pass',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get label_phone {
    return Intl.message(
      'Phone',
      name: 'label_phone',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get label_email {
    return Intl.message(
      'User name',
      name: 'label_email',
      desc: '',
      args: [],
    );
  }

  /// `Copied successfully`
  String get copied_successfully {
    return Intl.message(
      'Copied successfully',
      name: 'copied_successfully',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get label_password {
    return Intl.message(
      'Password',
      name: 'label_password',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get label_full_name {
    return Intl.message(
      'Full name',
      name: 'label_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get label_confirm_password {
    return Intl.message(
      'Confirm password',
      name: 'label_confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong`
  String get something_went_wrong {
    return Intl.message(
      'Something went wrong',
      name: 'something_went_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Loading…`
  String get loadingText {
    return Intl.message(
      'Loading…',
      name: 'loadingText',
      desc: '',
      args: [],
    );
  }

  /// `Done`
  String get done {
    return Intl.message(
      'Done',
      name: 'done',
      desc: '',
      args: [],
    );
  }

  /// `Add new item`
  String get add_new_item {
    return Intl.message(
      'Add new item',
      name: 'add_new_item',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Failure Actions`
  String get failureActions {
    return Intl.message(
      'Failure Actions',
      name: 'failureActions',
      desc: '',
      args: [],
    );
  }

  /// `Access denied`
  String get access_denied {
    return Intl.message(
      'Access denied',
      name: 'access_denied',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Pick`
  String get pick {
    return Intl.message(
      'Pick',
      name: 'pick',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Files size must be less than {MB} MB, {files}`
  String size_more_than_mg_error(Object MB, Object files) {
    return Intl.message(
      'Files size must be less than $MB MB, $files',
      name: 'size_more_than_mg_error',
      desc: '',
      args: [MB, files],
    );
  }

  /// `No internet connection`
  String get no_internet_connection {
    return Intl.message(
      'No internet connection',
      name: 'no_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Internet connected`
  String get internet_connected {
    return Intl.message(
      'Internet connected',
      name: 'internet_connected',
      desc: '',
      args: [],
    );
  }

  /// `Successfully Logged in`
  String get successfully_Logged_in {
    return Intl.message(
      'Successfully Logged in',
      name: 'successfully_Logged_in',
      desc: '',
      args: [],
    );
  }

  /// `SIGN IN`
  String get Sign_In {
    return Intl.message(
      'SIGN IN',
      name: 'Sign_In',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get Welcome {
    return Intl.message(
      'Welcome',
      name: 'Welcome',
      desc: '',
      args: [],
    );
  }

  /// `Please authenticate to login to your account`
  String get Please_authenticate_to_login {
    return Intl.message(
      'Please authenticate to login to your account',
      name: 'Please_authenticate_to_login',
      desc: '',
      args: [],
    );
  }

  /// `Please fill all fields`
  String get please_fill_all_fields {
    return Intl.message(
      'Please fill all fields',
      name: 'please_fill_all_fields',
      desc: '',
      args: [],
    );
  }

  /// `Please verify your login information`
  String get Invalid_login_data {
    return Intl.message(
      'Please verify your login information',
      name: 'Invalid_login_data',
      desc: '',
      args: [],
    );
  }

  /// `Scan the QR code to log in`
  String get login_with_qr {
    return Intl.message(
      'Scan the QR code to log in',
      name: 'login_with_qr',
      desc: '',
      args: [],
    );
  }

  /// `How can I get the code?`
  String get how_get_code {
    return Intl.message(
      'How can I get the code?',
      name: 'how_get_code',
      desc: '',
      args: [],
    );
  }

  /// `Contracts {count}`
  String contractsCount(Object count) {
    return Intl.message(
      'Contracts $count',
      name: 'contractsCount',
      desc: '',
      args: [count],
    );
  }

  /// `Maintenance Orders {count}`
  String maintenanceCount(Object count) {
    return Intl.message(
      'Maintenance Orders $count',
      name: 'maintenanceCount',
      desc: '',
      args: [count],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get inactive {
    return Intl.message(
      'Inactive',
      name: 'inactive',
      desc: '',
      args: [],
    );
  }

  /// `Expired`
  String get expired {
    return Intl.message(
      'Expired',
      name: 'expired',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get closed {
    return Intl.message(
      'Closed',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `Commercial`
  String get commercial {
    return Intl.message(
      'Commercial',
      name: 'commercial',
      desc: '',
      args: [],
    );
  }

  /// `Residential`
  String get residential {
    return Intl.message(
      'Residential',
      name: 'residential',
      desc: '',
      args: [],
    );
  }

  /// `Application Approval`
  String get application_approval {
    return Intl.message(
      'Application Approval',
      name: 'application_approval',
      desc: '',
      args: [],
    );
  }

  /// `Attribution`
  String get attribution {
    return Intl.message(
      'Attribution',
      name: 'attribution',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get completed {
    return Intl.message(
      'Completed',
      name: 'completed',
      desc: '',
      args: [],
    );
  }

  /// `Implemented`
  String get implemented {
    return Intl.message(
      'Implemented',
      name: 'implemented',
      desc: '',
      args: [],
    );
  }

  /// `Owner`
  String get owner {
    return Intl.message(
      'Owner',
      name: 'owner',
      desc: '',
      args: [],
    );
  }

  /// `Paused`
  String get paused {
    return Intl.message(
      'Paused',
      name: 'paused',
      desc: '',
      args: [],
    );
  }

  /// `Posted`
  String get posted {
    return Intl.message(
      'Posted',
      name: 'posted',
      desc: '',
      args: [],
    );
  }

  /// `rejected By The Owner`
  String get rejected_by_the_owner {
    return Intl.message(
      'rejected By The Owner',
      name: 'rejected_by_the_owner',
      desc: '',
      args: [],
    );
  }

  /// `rejected By The Supervisor`
  String get rejected_by_the_supervisor {
    return Intl.message(
      'rejected By The Supervisor',
      name: 'rejected_by_the_supervisor',
      desc: '',
      args: [],
    );
  }

  /// `supervisor Approved`
  String get supervisor_approved {
    return Intl.message(
      'supervisor Approved',
      name: 'supervisor_approved',
      desc: '',
      args: [],
    );
  }

  /// `supervisor Identifications`
  String get supervisor_identifications {
    return Intl.message(
      'supervisor Identifications',
      name: 'supervisor_identifications',
      desc: '',
      args: [],
    );
  }

  /// `New code`
  String get new_code {
    return Intl.message(
      'New code',
      name: 'new_code',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `New maintenance request`
  String get add_new_contact {
    return Intl.message(
      'New maintenance request',
      name: 'add_new_contact',
      desc: '',
      args: [],
    );
  }

  /// `The main property`
  String get main_property {
    return Intl.message(
      'The main property',
      name: 'main_property',
      desc: '',
      args: [],
    );
  }

  /// `Real estate unit`
  String get real_estate_unit {
    return Intl.message(
      'Real estate unit',
      name: 'real_estate_unit',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance Type`
  String get maintenance_type {
    return Intl.message(
      'Maintenance Type',
      name: 'maintenance_type',
      desc: '',
      args: [],
    );
  }

  /// `Customer's mobile phone`
  String get customer_mobile {
    return Intl.message(
      'Customer\'s mobile phone',
      name: 'customer_mobile',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance cost at my own expense'`
  String get cost_at_my_own_expense {
    return Intl.message(
      'Maintenance cost at my own expense\'',
      name: 'cost_at_my_own_expense',
      desc: '',
      args: [],
    );
  }

  /// `Description of maintenance`
  String get description_of_maintenance {
    return Intl.message(
      'Description of maintenance',
      name: 'description_of_maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance request`
  String get maintenance_request {
    return Intl.message(
      'Maintenance request',
      name: 'maintenance_request',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance has been requested`
  String get maintenance_has_been_requested {
    return Intl.message(
      'Maintenance has been requested',
      name: 'maintenance_has_been_requested',
      desc: '',
      args: [],
    );
  }

  /// `Back to maintenance requests`
  String get back_to_maintenance_requests {
    return Intl.message(
      'Back to maintenance requests',
      name: 'back_to_maintenance_requests',
      desc: '',
      args: [],
    );
  }

  /// `Maybe later, back to the main page`
  String get maybe_later_back_to_the_main_page {
    return Intl.message(
      'Maybe later, back to the main page',
      name: 'maybe_later_back_to_the_main_page',
      desc: '',
      args: [],
    );
  }

  /// `We have sent a mobile message containing the quality assurance code for your order no{code}`
  String message_containing_code_for_your_order(Object code) {
    return Intl.message(
      'We have sent a mobile message containing the quality assurance code for your order no$code',
      name: 'message_containing_code_for_your_order',
      desc: '',
      args: [code],
    );
  }

  /// `A maintenance request was not requested due to an error. Please try again`
  String get maintenance_request_failed_please_try_again {
    return Intl.message(
      'A maintenance request was not requested due to an error. Please try again',
      name: 'maintenance_request_failed_please_try_again',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter {
    return Intl.message(
      'Filter',
      name: 'filter',
      desc: '',
      args: [],
    );
  }

  /// `Maintenance request status`
  String get maintenance_request_status {
    return Intl.message(
      'Maintenance request status',
      name: 'maintenance_request_status',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Date of request`
  String get date_of_request {
    return Intl.message(
      'Date of request',
      name: 'date_of_request',
      desc: '',
      args: [],
    );
  }

  /// `Applicant`
  String get applicant {
    return Intl.message(
      'Applicant',
      name: 'applicant',
      desc: '',
      args: [],
    );
  }

  /// `Estimated cost`
  String get estimated_cost {
    return Intl.message(
      'Estimated cost',
      name: 'estimated_cost',
      desc: '',
      args: [],
    );
  }

  /// `Final Cost`
  String get final_cost {
    return Intl.message(
      'Final Cost',
      name: 'final_cost',
      desc: '',
      args: [],
    );
  }

  /// `Contract status`
  String get contract_status {
    return Intl.message(
      'Contract status',
      name: 'contract_status',
      desc: '',
      args: [],
    );
  }

  /// `Contract Type`
  String get contract_type {
    return Intl.message(
      'Contract Type',
      name: 'contract_type',
      desc: '',
      args: [],
    );
  }

  /// `Worthy`
  String get worthy {
    return Intl.message(
      'Worthy',
      name: 'worthy',
      desc: '',
      args: [],
    );
  }

  /// `Mobile phone or Username`
  String get user_or_phone_hint {
    return Intl.message(
      'Mobile phone or Username',
      name: 'user_or_phone_hint',
      desc: '',
      args: [],
    );
  }

  /// `Summary`
  String get summary {
    return Intl.message(
      'Summary',
      name: 'summary',
      desc: '',
      args: [],
    );
  }

  /// `payments`
  String get payments {
    return Intl.message(
      'payments',
      name: 'payments',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get contract {
    return Intl.message(
      'Contract',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `District . Region`
  String get district_region {
    return Intl.message(
      'District . Region',
      name: 'district_region',
      desc: '',
      args: [],
    );
  }

  /// `Contract end date`
  String get contract_end_date {
    return Intl.message(
      'Contract end date',
      name: 'contract_end_date',
      desc: '',
      args: [],
    );
  }

  /// `Total Contract`
  String get total_contract {
    return Intl.message(
      'Total Contract',
      name: 'total_contract',
      desc: '',
      args: [],
    );
  }

  /// `Net contract`
  String get net_contract {
    return Intl.message(
      'Net contract',
      name: 'net_contract',
      desc: '',
      args: [],
    );
  }

  /// `Insurance`
  String get insurance {
    return Intl.message(
      'Insurance',
      name: 'insurance',
      desc: '',
      args: [],
    );
  }

  /// `Additional amounts`
  String get additional_amounts {
    return Intl.message(
      'Additional amounts',
      name: 'additional_amounts',
      desc: '',
      args: [],
    );
  }

  /// `Collector`
  String get collector {
    return Intl.message(
      'Collector',
      name: 'collector',
      desc: '',
      args: [],
    );
  }

  /// `Total due`
  String get total_due {
    return Intl.message(
      'Total due',
      name: 'total_due',
      desc: '',
      args: [],
    );
  }

  /// `Conductor`
  String get conductor {
    return Intl.message(
      'Conductor',
      name: 'conductor',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Pay now`
  String get pay_now {
    return Intl.message(
      'Pay now',
      name: 'pay_now',
      desc: '',
      args: [],
    );
  }

  /// `Unit maintenance`
  String get unit_maintenance {
    return Intl.message(
      'Unit maintenance',
      name: 'unit_maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Requesting maintenance or repairs to the unit`
  String get requesting_maintenance {
    return Intl.message(
      'Requesting maintenance or repairs to the unit',
      name: 'requesting_maintenance',
      desc: '',
      args: [],
    );
  }

  /// `Contract renewal`
  String get contract_renewal {
    return Intl.message(
      'Contract renewal',
      name: 'contract_renewal',
      desc: '',
      args: [],
    );
  }

  /// `Request to renew the current contract`
  String get request_to_renew_contract {
    return Intl.message(
      'Request to renew the current contract',
      name: 'request_to_renew_contract',
      desc: '',
      args: [],
    );
  }

  /// `Renewal request has been completed successfully`
  String get renewal_request_completed {
    return Intl.message(
      'Renewal request has been completed successfully',
      name: 'renewal_request_completed',
      desc: '',
      args: [],
    );
  }

  /// `Error in renewal request`
  String get Error_renewal_request {
    return Intl.message(
      'Error in renewal request',
      name: 'Error_renewal_request',
      desc: '',
      args: [],
    );
  }

  /// `Back to contracts`
  String get back_to_contracts {
    return Intl.message(
      'Back to contracts',
      name: 'back_to_contracts',
      desc: '',
      args: [],
    );
  }

  /// `The order has been received, we will update you soon`
  String get order_has_received {
    return Intl.message(
      'The order has been received, we will update you soon',
      name: 'order_has_received',
      desc: '',
      args: [],
    );
  }

  /// `The days remaining until the end of the contract are more than the days allowed for renewal`
  String get days_remaining_and_allowed {
    return Intl.message(
      'The days remaining until the end of the contract are more than the days allowed for renewal',
      name: 'days_remaining_and_allowed',
      desc: '',
      args: [],
    );
  }

  /// `No notifications`
  String get no_notices {
    return Intl.message(
      'No notifications',
      name: 'no_notices',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any notifications yet, please check back later`
  String get no_notices_now {
    return Intl.message(
      'You don\'t have any notifications yet, please check back later',
      name: 'no_notices_now',
      desc: '',
      args: [],
    );
  }

  /// `Back to main page`
  String get back_to_main_page {
    return Intl.message(
      'Back to main page',
      name: 'back_to_main_page',
      desc: '',
      args: [],
    );
  }

  /// `New notifications`
  String get new_notices {
    return Intl.message(
      'New notifications',
      name: 'new_notices',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get English {
    return Intl.message(
      'English',
      name: 'English',
      desc: '',
      args: [],
    );
  }

  /// `Arabic`
  String get Arabic {
    return Intl.message(
      'Arabic',
      name: 'Arabic',
      desc: '',
      args: [],
    );
  }

  /// `Share This App`
  String get Share_the_app {
    return Intl.message(
      'Share This App',
      name: 'Share_the_app',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get Privacy_Policy {
    return Intl.message(
      'Privacy Policy',
      name: 'Privacy_Policy',
      desc: '',
      args: [],
    );
  }

  /// `Technical support ticket`
  String get Technical_support_ticket {
    return Intl.message(
      'Technical support ticket',
      name: 'Technical_support_ticket',
      desc: '',
      args: [],
    );
  }

  /// `About Simat application`
  String get About_Simat_application {
    return Intl.message(
      'About Simat application',
      name: 'About_Simat_application',
      desc: '',
      args: [],
    );
  }

  /// `What's New`
  String get About_New_version {
    return Intl.message(
      'What\'s New',
      name: 'About_New_version',
      desc: '',
      args: [],
    );
  }

  /// `How can I get the code?`
  String get How_can_I_get_the_code {
    return Intl.message(
      'How can I get the code?',
      name: 'How_can_I_get_the_code',
      desc: '',
      args: [],
    );
  }

  /// `1. Login to your platform through the browser using your account`
  String get Login_to_your_platform_through {
    return Intl.message(
      '1. Login to your platform through the browser using your account',
      name: 'Login_to_your_platform_through',
      desc: '',
      args: [],
    );
  }

  /// `2. At the top of the screen, “Download the Simat application now,” or from the user settings menu, choose “QR mobile application.”`
  String get QR_mobile_application {
    return Intl.message(
      '2. At the top of the screen, “Download the Simat application now,” or from the user settings menu, choose “QR mobile application.”',
      name: 'QR_mobile_application',
      desc: '',
      args: [],
    );
  }

  /// `3. Go to your mobile phone and from the login screen using the QR code, scan the QR code that appears in front of you in the browser`
  String get using_the_QR_code_scan_the_QR_code_that_appears {
    return Intl.message(
      '3. Go to your mobile phone and from the login screen using the QR code, scan the QR code that appears in front of you in the browser',
      name: 'using_the_QR_code_scan_the_QR_code_that_appears',
      desc: '',
      args: [],
    );
  }

  /// `New maintenance request`
  String get new_maintenance_request {
    return Intl.message(
      'New maintenance request',
      name: 'new_maintenance_request',
      desc: '',
      args: [],
    );
  }

  /// `Menu`
  String get menu {
    return Intl.message(
      'Menu',
      name: 'menu',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
