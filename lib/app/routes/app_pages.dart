import 'package:get/get.dart';

import '../modules/AddPayment/bindings/add_payment_binding.dart';
import '../modules/AddPayment/views/add_payment_view.dart';
import '../modules/ConfirmOrder/bindings/confirm_order_binding.dart';
import '../modules/ConfirmOrder/views/confirm_order_view.dart';
import '../modules/ContactSupport/bindings/contact_support_binding.dart';
import '../modules/ContactSupport/views/contact_support_view.dart';
import '../modules/CustomAmount/bindings/custom_amount_binding.dart';
import '../modules/CustomAmount/views/custom_amount_view.dart';
import '../modules/DeliveryOption/bindings/delivery_option_binding.dart';
import '../modules/DeliveryOption/views/delivery_option_view.dart';
import '../modules/LiveTracking/bindings/live_tracking_binding.dart';
import '../modules/LiveTracking/views/live_tracking_view.dart';
import '../modules/MasterCardDetails/bindings/master_card_details_binding.dart';
import '../modules/MasterCardDetails/views/master_card_details_view.dart';
import '../modules/OrderDetails/bindings/order_details_binding.dart';
import '../modules/OrderDetails/views/order_details_view.dart';
import '../modules/OtpEmailForgot/bindings/otp_email_forgot_binding.dart';
import '../modules/OtpEmailForgot/views/otp_email_forgot_view.dart';
import '../modules/OtpNumberForgot/bindings/otp_number_forgot_binding.dart';
import '../modules/OtpNumberForgot/views/otp_number_forgot_view.dart';
import '../modules/PaymentMethods/bindings/payment_methods_binding.dart';
import '../modules/PaymentMethods/views/payment_methods_view.dart';
import '../modules/PinLocation/bindings/pin_location_binding.dart';
import '../modules/PinLocation/views/pin_location_view.dart';
import '../modules/PinLocationTwo/bindings/pin_location_two_binding.dart';
import '../modules/PinLocationTwo/views/pin_location_two_view.dart';
import '../modules/Promotion/bindings/promotion_binding.dart';
import '../modules/Promotion/views/promotion_view.dart';
import '../modules/SearchIt/bindings/search_it_binding.dart';
import '../modules/SearchIt/views/search_it_view.dart';
import '../modules/TipAndNotes/bindings/tip_and_notes_binding.dart';
import '../modules/TipAndNotes/views/tip_and_notes_view.dart';
import '../modules/TrackOrder/bindings/track_order_binding.dart';
import '../modules/TrackOrder/views/track_order_view.dart';
import '../modules/accountcomplete/bindings/accountcomplete_binding.dart';
import '../modules/accountcomplete/views/accountcomplete_view.dart';
import '../modules/bottombar/bindings/bottombar_binding.dart';
import '../modules/bottombar/views/bottombar_view.dart';
import '../modules/browse/bindings/browse_binding.dart';
import '../modules/browse/views/browse_view.dart';
import '../modules/cart/bindings/cart_binding.dart';
import '../modules/cart/views/cart_view.dart';
import '../modules/congratsPasswordReset/bindings/congrats_password_reset_binding.dart';
import '../modules/congratsPasswordReset/views/congrats_password_reset_view.dart';
import '../modules/createNewPassword/bindings/create_new_password_binding.dart';
import '../modules/createNewPassword/views/create_new_password_view.dart';
import '../modules/filter/bindings/filter_binding.dart';
import '../modules/filter/views/filter_view.dart';
import '../modules/forgotpassword/bindings/forgotpassword_binding.dart';
import '../modules/forgotpassword/views/forgotpassword_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/nearbyRestaurants/bindings/nearby_restaurants_binding.dart';
import '../modules/nearbyRestaurants/views/nearby_restaurants_view.dart';
import '../modules/notifications/bindings/notifications_binding.dart';
import '../modules/notifications/views/notifications_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/otpcode/bindings/otpcode_binding.dart';
import '../modules/otpcode/views/otpcode_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/resetPassword/bindings/reset_password_binding.dart';
import '../modules/resetPassword/views/reset_password_view.dart';
import '../modules/resetPasswordWithPhone/bindings/reset_password_with_phone_binding.dart';
import '../modules/resetPasswordWithPhone/views/reset_password_with_phone_view.dart';
import '../modules/restaurantDetail/bindings/restaurant_detail_binding.dart';
import '../modules/restaurantDetail/views/restaurant_detail_view.dart';
import '../modules/signin/bindings/signin_binding.dart';
import '../modules/signin/views/signin_view.dart';
import '../modules/signupwithphonenumber/bindings/signupwithphonenumber_binding.dart';
import '../modules/signupwithphonenumber/views/signupwithphonenumber_view.dart';
import '../modules/splashone/bindings/splashone_binding.dart';
import '../modules/splashone/views/splashone_view.dart';
import '../modules/splashtwo/bindings/splashtwo_binding.dart';
import '../modules/splashtwo/views/splashtwo_view.dart';
import '../modules/yourname/bindings/yourname_binding.dart';
import '../modules/yourname/views/yourname_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHONE;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHONE,
      page: () => SplashoneView(),
      binding: SplashoneBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHTWO,
      page: () => SplashtwoView(),
      binding: SplashtwoBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUPWITHPHONENUMBER,
      page: () => SignupwithphonenumberView(),
      binding: SignupwithphonenumberBinding(),
    ),
    GetPage(
      name: _Paths.OTPCODE,
      page: () => OtpcodeView(),
      binding: OtpcodeBinding(),
    ),
    GetPage(
      name: _Paths.YOURNAME,
      page: () => YournameView(),
      binding: YournameBinding(),
    ),
    GetPage(
      name: _Paths.ACCOUNTCOMPLETE,
      page: () => AccountcompleteView(),
      binding: AccountcompleteBinding(),
    ),
    GetPage(
      name: _Paths.FORGOTPASSWORD,
      page: () => ForgotpasswordView(),
      binding: ForgotpasswordBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD_WITH_PHONE,
      page: () => ResetPasswordWithPhoneView(),
      binding: ResetPasswordWithPhoneBinding(),
    ),
    GetPage(
      name: _Paths.OTP_NUMBER_FORGOT,
      page: () => OtpNumberForgotView(),
      binding: OtpNumberForgotBinding(),
    ),
    GetPage(
      name: _Paths.OTP_EMAIL_FORGOT,
      page: () => OtpEmailForgotView(),
      binding: OtpEmailForgotBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_NEW_PASSWORD,
      page: () => CreateNewPasswordView(),
      binding: CreateNewPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CONGRATS_PASSWORD_RESET,
      page: () => CongratsPasswordResetView(),
      binding: CongratsPasswordResetBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => BottombarView(),
      binding: BottombarBinding(),
    ),
    GetPage(
      name: _Paths.BROWSE,
      page: () => BrowseView(),
      binding: BrowseBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.FILTER,
      page: () => FilterView(),
      binding: FilterBinding(),
    ),
    GetPage(
      name: _Paths.NEARBY_RESTAURANTS,
      page: () => NearbyRestaurantsView(),
      binding: NearbyRestaurantsBinding(),
    ),
    GetPage(
      name: _Paths.RESTAURANT_DETAIL,
      page: () => RestaurantDetailView(),
      binding: RestaurantDetailBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
    GetPage(
      name: _Paths.PIN_LOCATION,
      page: () => PinLocationView(),
      binding: PinLocationBinding(),
    ),
    GetPage(
      name: _Paths.PIN_LOCATION_TWO,
      page: () => PinLocationTwoView(),
      binding: PinLocationTwoBinding(),
    ),
    GetPage(
      name: _Paths.SEARCH_IT,
      page: () => SearchItView(),
      binding: SearchItBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_ORDER,
      page: () => ConfirmOrderView(),
      binding: ConfirmOrderBinding(),
    ),
    GetPage(
      name: _Paths.DELIVERY_OPTION,
      page: () => DeliveryOptionView(),
      binding: DeliveryOptionBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_METHODS,
      page: () => PaymentMethodsView(),
      binding: PaymentMethodsBinding(),
    ),
    GetPage(
      name: _Paths.MASTER_CARD_DETAILS,
      page: () => MasterCardDetailsView(),
      binding: MasterCardDetailsBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PAYMENT,
      page: () => AddPaymentView(),
      binding: AddPaymentBinding(),
    ),
    GetPage(
      name: _Paths.TIP_AND_NOTES,
      page: () => TipAndNotesView(),
      binding: TipAndNotesBinding(),
    ),
    GetPage(
      name: _Paths.CUSTOM_AMOUNT,
      page: () => CustomAmountView(),
      binding: CustomAmountBinding(),
    ),
    GetPage(
      name: _Paths.TRACK_ORDER,
      page: () => TrackOrderView(),
      binding: TrackOrderBinding(),
    ),
    GetPage(
      name: _Paths.LIVE_TRACKING,
      page: () => LiveTrackingView(),
      binding: LiveTrackingBinding(),
    ),
    GetPage(
      name: _Paths.ORDER_DETAILS,
      page: () => OrderDetailsView(),
      binding: OrderDetailsBinding(),
    ),
    GetPage(
      name: _Paths.CONTACT_SUPPORT,
      page: () => ContactSupportView(),
      binding: ContactSupportBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATIONS,
      page: () => NotificationsView(),
      binding: NotificationsBinding(),
    ),
    GetPage(
      name: _Paths.PROMOTION,
      page: () => PromotionView(),
      binding: PromotionBinding(),
    ),
  ];
}
