


class AppConstants {

  static const String APP_NAME = 'ParcelStar Merchant';
  static const String APP_VERSION = '1.0.0';
  //static const String BASE_URL = 'https://livetest.bppshop.com.bd';
  static const String BASE_URL = 'https://backend.bppshop.com.bd';
  static const String CATEGORY_BASE_URL = 'https://backend.bppshop.com.bd/storage/category/';


  ////BPP Shop
  static const String APP_CATEGORY="/api/v1/categories";
  static const String GET_CATEGORYWISE_PRODUCTS="/api/v1/categories/products/";
  static const String GET_CATEGORYWISE_PRODUCTS_DETAILS="/api/v1/products/details/";
  static const String GET_ORDER_LIST_DETAILS="/api/v1/customer/order/details/";
  static const String GET_PRICE_VARIANT="/api/v1/products/variant_price";
  static const String ADD_TO_CART="/api/v1/cart/add";
  static const String UPDATE_CART="/api/v1/cart/update";
  static const String GET_CART_DATA="/api/v1/cart";
  static const String GET_BRAND_DATA="/api/v1/brands";
  static const String REMOVE_CART="/api/v1/cart/remove";
  static const String ADD_TO_CART_BULK="/api/v1/cart/add-bulk";
  static const String CHECKOUT="/api/v1/cart/checkout";
  static const String GET_ORDER_LIST="/api/v1/customer/order/list";
  static const String REGISTRATION_URI = '/api/v1/auth/register';
  static const String LOG_OUT = '/api/v1/customer/logout';
  static const String LOGIN_URI="/api/v1/auth/login";
  static const String PROFILE = '/api/v1/customer/profile';
  static const String PRODUCT_SEARCH_API = '/api/v1/products/search';
  static const String GET_DISCOUNTED_PRODUCT_API = '/api/v1/products/discounted-product';
  static const String GET_NEW_ARRIVAL_PRODUCT_API = '/api/v1/products/latest';
  static const String GET_Best_Selling_PRODUCT_API = '/api/v1/products/best-sellings';
  static const String GET_TOP_RATED_PRODUCT_API = '/api/v1/products/top-rated';
  static const String BRAND_WISE_PRODUCTS = '/api/v1/brands/products/';
  static const String DISTRICTS = '/api/v1/location/districts';
  static const String DELETE_ADDRESS_API = '/api/v1/shipping-address/delete-address';
  static const String THANAS = '/api/v1/location/thanas';
  static const String AREAS = '/api/v1/location/areas';
  static const String ADD_SHIPPING_ADDRESS = '/api/v1/shipping-address/add';
  static const String GET_SHIPPING_ADDRESS = '/api/v1/shipping-address';
  static const String EDIT_ADDRESS_API = '/api/v1/shipping-address/edit-address/';
  static const String UPDATE_ADDRESS_API = '/api/v1/shipping-address/update-address';
  static const String SET_DEFAULT_ADDRESS = '/api/v1/shipping-address/set-default';
  static const String ADD_DELIVERY_CHARGE = '/api/v1/cart/delivery-charge';
  static const String CANCEL_ORDER = '/api/v1/customer/order/cancel-order';





  /////////
  static const String USER_ID = 'userId';
  static const String NAME = 'name';

  static const String SOCIAL_LOGIN_URI = '/api/v1/auth/social-login';

  static const String TOKEN_URI = '/api/v1/customer/cm-firebase-token';
  static const String RESET_PASSWORD_URI = '/api/v1/auth/reset-password';
  static const String FORGET_PASSWORD_URI = '/api/v1/auth/forgot';

  /////

  static const String LOGOUT_URI = '/api/merchant/logout';
  static const String FORGET_PASSWORD = '/api/merchant/forgotPassword';


  //
  // static const String UPDATEPROFILE = '/api/merchant/profileUpdate';
  // static const String PROFILE_DATA = '/api/merchant/profile';
  // static const String DASHBOARD = '/api/merchant/dashboard';
  // static const String LOGOUT = '/api/merchant/logout';
  // static const String GET_CHARGE = '/api/getMerchantUpazilaWeightPackageCODAndCharge';
  // static const String GET_CONFIRM_PAYMENT_REQUEST_GENERATE = '/api/merchant/confirmPaymentRequestGenerate';
  // static const String GET_GENERATE = '/api/merchant/paymentRequestGenerate';
  // static const String GET_PAYMENT_REQUEST_LIST = '/api/merchant/getParcelPaymentRequestList';
  // static const String PICK_UP_LIST = '/api/merchant/getParcelPickupRequestList';
  // static const String RETURN_REQUEST_LIST = '/api/merchant/getParcelReturnRequestList';
  // static const String GET_CONFIRM_PICK_UP_REQUEST_GENERATE = '/api/merchant/confirmPickupRequestGenerate';
  // static const String GET_CONFIRM_RETURN_REQUEST_GENERATE = '/api/merchant/confirmReturnRequestGenerate';
  // static const String GET_PERCEL_LIST_DATA = '/api/merchant/getParcelList';
  // static const String GET_SHOP_LIST_DATA = '/api/merchant/shop/list';
  // static const String GET_FILTER = '/api/merchant/filterParcelList';
  // static const String GET_HOLD = '/api/merchant/parcelHold';
  // static const String GET_CANCEL = '/api/merchant/parcelCancel';
  // static const String GET_PLAY = '/api/merchant/parcelStart';
  // static const String GET_PARCEL_LIST_BY_ONLY_DATE = '/api/merchant/getParcelList';
  // static const String GET_PARCEL_LIST_BY_FILTERING = '/api/merchant/getParcelList';
  // static const String GET_PARCEL_LIST_BY_DATE = '/api/merchant/getParcelList';
  // static const String ADD_PARCEL = '/api/merchant/addParcel';
  // static const String GET_DISTRICT_ARIA = '/api/merchant/districts';
  // static const String GET_DISTRICTS = '/api/getDistricts';
  // static const String GET_UPAZILAS = '/api/getUpazilas';
  // static const String GET_AREAS = '/api/getAreas';
  // static const String GET_WEIGHT_PACKAGES = '/api/getWeightPackages';
  // static const String GET_WEIGHT = '/api/getMerchantUpazilaWeightPackageCODAndCharge';
  // static const String GET_COVER_AREA = '/api/getServiceAreas';
  // static const String GET_PAYMENT_LIST = '/api/merchant/getDeliveryPaymentList';
  // static const String GET_DELIVERY = '/api/merchant/getParcelPaymentList';
  // static const String GET_DELIVERY_WITHOUT_ID = '/api/merchant/getParcelPaymentList';
  // static const String GET_PARCEL_LOG = '/api/merchant/getOrderTrackingResult';
  // static const String BALANCE_DETAILS = '/api/merchant/account/viewMerchantBalanceDetails';
  // static const String COMPLETE_PAYMENT_DETAILS = '/api/merchant/viewParcelPaymentRequest';
  //
  // static const String GET_PICKUP_PARCEL_LIST= '/api/merchant/getPickUpParcelList';
  // static const String DELIVERY_PAYMENT_LIST = '/api/merchant/account/getDeliveryPaymentList';
  // static const String GET_DELIVERY_PAYMENT = '/api/merchant/getDeliveryPayment';
  // static const String GET_SHOP_LIST= '/api/merchant/shop/list';
  // static const String ADD_SHOP = '/api/merchant/shop/store';
  // static const String UPDATE_SHOP = '/api/merchant/shop/update';


  // sharePreference
  static const String TOKEN = 'token';
  static const String USER = 'user';
  static const String USER_PHONE = 'user_phone';
  static const String USER_PASSWORD = 'user_password';
  static const String HOME_ADDRESS = 'home_address';
  static const String SEARCH_ADDRESS = 'search_address';
  static const String OFFICE_ADDRESS = 'office_address';
  static const String CART_LIST = 'cart_list';
  static const String CONFIG = 'config';
  static const String GUEST_MODE = 'guest_mode';
  static const String CURRENCY = 'currency';
  static const String LANG_KEY = 'lang';
  static const String INTRO = 'intro';


// static List<LanguageModel> languages = [
//   LanguageModel(imageUrl: '', languageName: 'English', countryCode: 'US', languageCode: 'en'),
//   LanguageModel(imageUrl: '', languageName: 'Arabic', countryCode: 'SA', languageCode: 'ar'),
// ];


}
