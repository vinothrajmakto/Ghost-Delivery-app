import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar', 'ur'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
    String? urText = '',
  }) =>
      [enText, arText, urText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    '7wcxpnc8': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // intro3
  {
    'ull3u1ys': {
      'en': 'Continue with Mobile Number',
      'ar': 'متابعة برقم الهاتف المحمول',
      'ur': 'موبائل نمبر کے ساتھ جاری رکھیں',
    },
    '79sztdlh': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // LoginPage
  {
    '4arvndeb': {
      'en': 'Enter your mobile number',
      'ar': 'أدخل رقم هاتفك المحمول',
      'ur': 'اپنا موبائل نمبر درج کریں۔',
    },
    '46358f1j': {
      'en': 'Type in your mobile number to sign in or create a new account.',
      'ar': 'اكتب رقم هاتفك المحمول لتسجيل الدخول أو إنشاء حساب جديد.',
      'ur':
          'سائن ان کرنے یا نیا اکاؤنٹ بنانے کے لیے اپنا موبائل نمبر ٹائپ کریں۔',
    },
    'fe69pus7': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'ubrqwt8e': {
      'en': 'Mobile Number',
      'ar': 'رقم الهاتف المحمول',
      'ur': 'موبائل نمبر',
    },
    '2e1bt0gp': {
      'en': 'Next',
      'ar': 'التالي',
      'ur': 'اگلا',
    },
    'k0z3dwaw': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // otp
  {
    '21iczdq9': {
      'en': 'Enter OTP Code',
      'ar': 'أدخل رمز OTP',
      'ur': 'OTP کوڈ درج کریں۔',
    },
    '7swa303e': {
      'en': 'OTP code has been sent to ',
      'ar': 'تم إرسال رمز OTP إلى',
      'ur': 'OTP کوڈ بھیج دیا گیا ہے۔',
    },
    'b247wlul': {
      'en': 'Resend code in             s',
      'ar': 'إعادة إرسال الكود في s',
      'ur': 's میں کوڈ دوبارہ بھیجیں۔',
    },
    'u68sqher': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
      'ur': 'لاگ ان',
    },
    'bvi9naai': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // orderspage
  {
    'yyzxah5v': {
      'en': 'Active',
      'ar': 'نشيط',
      'ur': 'فعال',
    },
    'za3g3qgx': {
      'en': 'Inactive',
      'ar': 'غير نشط',
      'ur': 'غیر فعال',
    },
    'zpc81f5k': {
      'en': 'Vivek',
      'ar': 'فيفيك',
      'ur': 'وویک',
    },
    'yj9am48u': {
      'en': '48, Al Majarrah Street Hadbat \nAl Za\'faranah, Abu Dhabi',
      'ar': '48, شارع المجرة هضبة الزعفرانة, أبوظبي',
      'ur': '48، المجرہ اسٹریٹ حدبت \nالظفرانہ، ابوظہبی',
    },
    'fm4lseps': {
      'en': 'View Details',
      'ar': 'عرض التفاصيل',
      'ur': 'تفصیلات دیکھیں',
    },
    'fpbe0ag6': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // map
  {
    'v7t803f1': {
      'en': 'Vivek, Eastern Ring Rd Sheikh\nZayed bin Sultan St Al Salam St',
      'ar':
          'فيفيك، الطريق الدائري الشرقي، شارع الشيخ زايد بن سلطان، شارع السلام',
      'ur': 'وویک، ایسٹرن رنگ آر ڈی شیخ\nزید بن سلطان سینٹ السلام سینٹ',
    },
    'bd4u4oqh': {
      'en': 'Est Time:',
      'ar': 'الوقت المقدر:',
      'ur': 'تخمینہ وقت:',
    },
    'r0oksoqi': {
      'en': 'Est Kms:',
      'ar': 'تقدير كم:',
      'ur': 'تخمینہ کلومیٹر:',
    },
    '6e7hbia6': {
      'en': 'Confirm Ride',
      'ar': 'تأكيد الرحلة',
      'ur': 'سواری کی تصدیق کریں۔',
    },
    'edeen9nt': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // ChooseType
  {
    '1x8ryopv': {
      'en': 'SELECT BUSINESS TYPE',
      'ar': 'حدد نوع العمل',
      'ur': 'کاروبار کی قسم منتخب کریں۔',
    },
    'hecfgsvv': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'itmd8p6h': {
      'en': 'Company/Business                                   ',
      'ar': 'الشركة/الأعمال',
      'ur': 'کمپنی/کاروبار',
    },
    '5pl6u5xr': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '1qid2qqr': {
      'en': 'Individual                                                   ',
      'ar': 'فردي',
      'ur': 'انفرادی',
    },
    'kjbcjtsq': {
      'en': 'Next',
      'ar': 'التالي',
      'ur': 'اگلا',
    },
    'gi1v9351': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // CompanyDetails
  {
    '6khc0rm1': {
      'en': 'Company Details',
      'ar': 'تفاصيل الشركة',
      'ur': 'کمپنی کی تفصیلات',
    },
    'c6rikh9x': {
      'en': 'Company Name',
      'ar': 'اسم الشركة',
      'ur': 'کمپنی کا نام',
    },
    'twjg29y7': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'fbp1r5cx': {
      'en': 'First Name',
      'ar': 'الاسم الأول',
      'ur': 'پہلا نام',
    },
    'wfaxxn3q': {
      'en': '',
      'ar': 'الاسم الأول',
      'ur': 'پہلا نام',
    },
    'utsp5xg7': {
      'en': 'Last Name',
      'ar': 'اسم العائلة',
      'ur': 'آخری نام',
    },
    'l92p7hh3': {
      'en': '',
      'ar': 'اسم العائلة',
      'ur': 'آخری نام',
    },
    'v25ujuqb': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '60xksd7n': {
      'en': 'Address 1',
      'ar': 'العنوان 1',
      'ur': 'پتہ 1',
    },
    '6ahwf8b4': {
      'en': '',
      'ar': 'العنوان 1',
      'ur': 'پتہ 1',
    },
    'ni3y3gwl': {
      'en': 'Address 2',
      'ar': 'العنوان 2',
      'ur': 'پتہ 2',
    },
    'v7s4t6ag': {
      'en': '',
      'ar': 'العنوان 2',
      'ur': 'پتہ 2',
    },
    '7dz1kcwk': {
      'en': 'Dubai',
      'ar': 'دبي',
      'ur': 'دبئی',
    },
    'gp2vunwf': {
      'en': 'Abu Dhabhi',
      'ar': 'ابو ظبي',
      'ur': 'ابوظہبی',
    },
    'iqa34reu': {
      'en': 'Sharjah',
      'ar': 'الشارقة',
      'ur': 'شارجہ',
    },
    'ch92zrhh': {
      'en': 'Ajman',
      'ar': 'عجمان',
      'ur': 'عجمان',
    },
    'tl8y5lhr': {
      'en': 'Ras Al Khaimah',
      'ar': 'رأس الخيمة',
      'ur': 'راس الخیمہ',
    },
    'q0nu8bt4': {
      'en': 'Fujairah',
      'ar': 'الفجيرة',
      'ur': 'فجیرہ',
    },
    '06qpxiys': {
      'en': 'Umm Al Quwain',
      'ar': 'أم القيوين',
      'ur': 'ام القوین',
    },
    '3v0mv3mo': {
      'en': 'Cities',
      'ar': 'المدن',
      'ur': 'شہر',
    },
    'ofne3qzp': {
      'en': 'Search...',
      'ar': 'يبحث...',
      'ur': 'تلاش کریں...',
    },
    'qhwo2083': {
      'en': 'Country',
      'ar': 'دولة',
      'ur': 'ملک',
    },
    'prg762bp': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'vu97qf7x': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'ur': 'جمع کروائیں۔',
    },
    'eri2zlc5': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // PersonalDetails
  {
    'n4ubi8ez': {
      'en': 'Personal Details',
      'ar': 'التفاصيل الشخصية',
      'ur': 'ذاتی تفصیلات',
    },
    'mm8bf0q5': {
      'en': 'First Name',
      'ar': 'الاسم الأول',
      'ur': 'پہلا نام',
    },
    'rqwpx0ue': {
      'en': 'Last Name',
      'ar': 'اسم العائلة',
      'ur': 'آخری نام',
    },
    '1kclyl1y': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'cjqepp2a': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '10oxk0tt': {
      'en': 'Date of Birth',
      'ar': 'تاريخ الميلاد',
      'ur': 'تاریخ پیدائش',
    },
    '2nl8p8nu': {
      'en': 'Address1',
      'ar': 'العنوان1',
      'ur': 'پتہ 1',
    },
    'ucvt7fla': {
      'en': 'Address2',
      'ar': 'العنوان2',
      'ur': 'پتہ 2',
    },
    'ljf7jya8': {
      'en': 'Dubai',
      'ar': 'دبي',
      'ur': 'دبئی',
    },
    'bdb4cdwu': {
      'en': 'AbuDhabhi',
      'ar': 'ابوظبي',
      'ur': 'ابوظہبی',
    },
    'zfbpw1wh': {
      'en': 'City',
      'ar': 'مدينة',
      'ur': 'شہر',
    },
    'ofaph6zq': {
      'en': 'Search for an item...',
      'ar': 'البحث عن العنصر...',
      'ur': 'ایک آئٹم تلاش کریں...',
    },
    'pagfz0lg': {
      'en': 'Vehicle Details',
      'ar': 'تفاصيل السيارة',
      'ur': 'گاڑی کی تفصیلات',
    },
    '3kjtinwf': {
      'en': 'Car',
      'ar': 'سيارة',
      'ur': 'کار',
    },
    't4ea6ida': {
      'en': 'Two Wheeler',
      'ar': 'مركبة ذات عجلتين',
      'ur': 'ٹو وہیلر',
    },
    'c8wxhdm6': {
      'en': 'Truck',
      'ar': 'شاحنة',
      'ur': 'ٹرک',
    },
    'a0jdq59q': {
      'en': 'Vehicle Type',
      'ar': 'نوع المركبة',
      'ur': 'گاڑی کی قسم',
    },
    'k6ezysn9': {
      'en': 'Search for an item...',
      'ar': 'ابحث عن عنصر...',
      'ur': 'ایک آئٹم تلاش کریں...',
    },
    'pukoxyhv': {
      'en': 'Vehicle Registration Number',
      'ar': 'رقم تسجيل المركبة',
      'ur': 'گاڑی کا رجسٹریشن نمبر',
    },
    '14dle66y': {
      'en': 'Upload vehicle Registration',
      'ar': 'تحميل تسجيل السيارة',
      'ur': 'گاڑی کی رجسٹریشن اپ لوڈ کریں۔',
    },
    'xzjuai85': {
      'en': 'png, pdf, jpg, docx accepted',
      'ar': 'يتم قبول png، pdf، jpg، docx',
      'ur': 'png، pdf، jpg، docx قبول کر لیا گیا۔',
    },
    '87wr6sht': {
      'en': 'Next',
      'ar': 'التالي',
      'ur': 'اگلا',
    },
    'gh1rh9br': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // company_id
  {
    'ci4flna8': {
      'en': 'Upload Documents',
      'ar': 'تحميل المستندات',
      'ur': 'دستاویزات اپ لوڈ کریں۔',
    },
    '5uki2q5k': {
      'en': 'Owner ID',
      'ar': 'معرف المالك',
      'ur': 'مالک کی شناخت',
    },
    'rpkxhkop': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    '2t10s8ob': {
      'en': 'Business Registration Certificate',
      'ar': 'شهادة تسجيل الأعمال',
      'ur': 'بزنس رجسٹریشن سرٹیفکیٹ',
    },
    '7ns2hagz': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    'z71szftd': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // person_id
  {
    'ax7jm8av': {
      'en': 'Upload Documents',
      'ar': 'تحميل المستندات',
      'ur': 'دستاویزات اپ لوڈ کریں۔',
    },
    'jr8emat4': {
      'en': 'Driver Identity Document',
      'ar': 'وثيقة هوية السائق',
      'ur': 'ڈرائیور کی شناختی دستاویز',
    },
    'd9kot4ny': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    '72ahf7qg': {
      'en': 'License',
      'ar': 'رخصة',
      'ur': 'لائسنس',
    },
    'q7nm2xk3': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    'pn0oc8du': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // driverdetails
  {
    'muh9ay1c': {
      'en': 'Driver Details',
      'ar': 'تفاصيل السائق',
      'ur': 'ڈرائیور کی تفصیلات',
    },
    'ula282ys': {
      'en': 'Add',
      'ar': 'يضيف',
      'ur': 'شامل کریں۔',
    },
    'a4o7gv4g': {
      'en': 'Driver1',
      'ar': 'سائق1',
      'ur': 'ڈرائیور 1',
    },
    '5zqzzm5a': {
      'en': 'Details',
      'ar': 'تفاصيل',
      'ur': 'تفصیلات',
    },
    'vgsk4mut': {
      'en': 'Ride',
      'ar': 'يركب',
      'ur': 'سواری',
    },
    '7f6o6oft': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // registration
  {
    'z9wr3x3r': {
      'en': 'Driver Details',
      'ar': 'تفاصيل السائق',
      'ur': 'ڈرائیور کی تفصیلات',
    },
    'xk1ampb8': {
      'en': 'First Name',
      'ar': 'الاسم الأول',
      'ur': 'پہلا نام',
    },
    'p84rv8rq': {
      'en': 'Last Name',
      'ar': 'اسم العائلة',
      'ur': 'آخری نام',
    },
    'tkkgwqks': {
      'en': 'Date Of Birth',
      'ar': 'تاريخ الميلاد',
      'ur': 'تاریخ پیدائش',
    },
    'jh21rm1d': {
      'en': 'Address1',
      'ar': 'العنوان1',
      'ur': 'پتہ 1',
    },
    'tsh82pjd': {
      'en': 'Address2',
      'ar': 'العنوان2',
      'ur': 'پتہ 2',
    },
    'p7e8i0hb': {
      'en': 'Dubai',
      'ar': 'دبي',
      'ur': 'دبئی',
    },
    'yd9fgciz': {
      'en': 'AbuDhabhi',
      'ar': 'ابوظبي',
      'ur': 'ابوظہبی',
    },
    'r1q0cnh9': {
      'en': 'City',
      'ar': 'مدينة',
      'ur': 'شہر',
    },
    'vbyvbbqk': {
      'en': 'Search for an item...',
      'ar': 'البحث عن العنصر...',
      'ur': 'ایک آئٹم تلاش کریں...',
    },
    'k5x3qvfc': {
      'en': 'Vehicle Details',
      'ar': 'تفاصيل السيارة',
      'ur': 'گاڑی کی تفصیلات',
    },
    'tr9m8sel': {
      'en': 'Car',
      'ar': 'سيارة',
      'ur': 'کار',
    },
    '3xacwsky': {
      'en': 'Two Wheeler',
      'ar': 'مركبة ذات عجلتين',
      'ur': 'ٹو وہیلر',
    },
    '5m0ezz64': {
      'en': 'Truck',
      'ar': 'شاحنة',
      'ur': 'ٹرک',
    },
    '929dc2ki': {
      'en': 'Vehicle Type',
      'ar': 'نوع المركبة',
      'ur': 'گاڑی کی قسم',
    },
    'twznqn3n': {
      'en': 'Search for an item...',
      'ar': 'ابحث عن عنصر...',
      'ur': 'ایک آئٹم تلاش کریں...',
    },
    'zertnt9f': {
      'en': 'Vehicle Registration Number',
      'ar': 'رقم تسجيل المركبة',
      'ur': 'گاڑی کا رجسٹریشن نمبر',
    },
    'ihwftphe': {
      'en': 'Upload vehicle Registration',
      'ar': 'تحميل تسجيل السيارة',
      'ur': 'گاڑی کی رجسٹریشن اپ لوڈ کریں۔',
    },
    '0nv0m106': {
      'en': 'png, pdf, jpg, docx accepted',
      'ar': 'يتم قبول png، pdf، jpg، docx',
      'ur': 'png، pdf، jpg، docx قبول کر لیا گیا۔',
    },
    'vhn9onhk': {
      'en': 'Next',
      'ar': 'التالي',
      'ur': 'اگلا',
    },
    '5ouksy0r': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // about
  {
    '0efaromv': {
      'en': 'Today  Aug 16th, 2024',
      'ar': 'اليوم 16 أغسطس 2024',
      'ur': 'آج 16 اگست 2024',
    },
    'xxxf0ind': {
      'en': 'AED 342',
      'ar': '342 درهم إماراتي',
      'ur': 'AED 342',
    },
    '1fr0h872': {
      'en': '10 Orders delivered',
      'ar': 'تم تسليم 10 طلبات',
      'ur': '10 آرڈرز کی فراہمی',
    },
    'j3ar82kv': {
      'en': 'Incentives',
      'ar': 'الحوافز',
      'ur': 'مراعات',
    },
    '2x0os59p': {
      'en':
          'Earn  more with ghost incentives,\nmore deliveries bring you on top',
      'ar':
          'اكسب المزيد من خلال الحوافز الوهمية،\n\nالمزيد من عمليات التسليم تجعلك في الصدارة',
      'ur':
          'بھوت مراعات کے ساتھ مزید کمائیں،\nمزید ڈیلیوری آپ کو اوپر لے آتی ہے۔',
    },
    'xyxkjkd1': {
      'en': '2 More for AED 100',
      'ar': '2 المزيد مقابل 100 درهم إماراتي',
      'ur': 'AED 100 میں 2 مزید',
    },
    '84039gpc': {
      'en': 'Weekly Earnings',
      'ar': 'الأرباح الأسبوعية',
      'ur': 'ہفتہ وار کمائی',
    },
    'hugdt9ff': {
      'en': 'View all your weekly earnings \nbelow',
      'ar': 'شاهد جميع أرباحك الأسبوعية أدناه',
      'ur': 'اپنی تمام ہفتہ وار آمدنی دیکھیں \nنیچے',
    },
    '0nfcw9dm': {
      'en': 'AED 16.2 till now',
      'ar': '16.2 درهم حتى الآن',
      'ur': 'اب تک AED 16.2',
    },
    'k3560z13': {
      'en': 'Payouts',
      'ar': 'الدفعات',
      'ur': 'ادائیگیاں',
    },
    '3945qbmn': {
      'en': 'Settlement payout details',
      'ar': 'تفاصيل صرف التسوية',
      'ur': 'تصفیہ ادائیگی کی تفصیلات',
    },
    'nf5t2cpn': {
      'en': 'Paid on Aug 12, Mon 2024',
      'ar': 'تم الدفع في 12 أغسطس، الاثنين 2024',
      'ur': '12 اگست، پیر 2024 کو ادا کی گئی۔',
    },
    'mq333psx': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // company01
  {
    'p1mxojxy': {
      'en': 'Business Registration',
      'ar': 'تسجيل الأعمال',
      'ur': 'بزنس رجسٹریشن',
    },
    'ff77vkw1': {
      'en': 'Company Details',
      'ar': 'تفاصيل الشركة',
      'ur': 'کمپنی کی تفصیلات',
    },
    's5k7bant': {
      'en': 'Enter details of the company',
      'ar': 'أدخل تفاصيل الشركة',
      'ur': 'کمپنی کی تفصیلات درج کریں۔',
    },
    'jovamli6': {
      'en': 'Identity Documents',
      'ar': 'وثائق الهوية',
      'ur': 'شناختی دستاویزات',
    },
    'dlccg65b': {
      'en': 'Upload ID documents for onboarding',
      'ar': 'تحميل مستندات الهوية للتسجيل',
      'ur': 'آن بورڈنگ کے لیے شناختی دستاویزات اپ لوڈ کریں۔',
    },
    'fh0756wh': {
      'en': 'Delivery Person Details',
      'ar': 'تفاصيل موظف التوصيل',
      'ur': 'ڈیلیوری پرسن کی تفصیلات',
    },
    'bp9ti517': {
      'en': 'Enter all the delivery people',
      'ar': 'أدخل جميع موظفي التوصيل',
      'ur': 'تمام ڈیلیوری والے افراد کو داخل کریں۔',
    },
    '2co4f3hh': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // companyapproval
  {
    'mnuvstod': {
      'en': 'Your Profile is being Validated',
      'ar': 'جاري التحقق من ملفك الشخصي',
      'ur': 'آپ کے پروفائل کی توثیق کی جا رہی ہے۔',
    },
    'ozeieyz5': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // person01
  {
    'mtiqxrds': {
      'en': 'Personal Details',
      'ar': 'التفاصيل الشخصية',
      'ur': 'ذاتی تفصیلات',
    },
    '1smjwt0m': {
      'en': 'Enter details of the driver',
      'ar': 'أدخل تفاصيل السائق',
      'ur': 'ڈرائیور کی تفصیلات درج کریں۔',
    },
    'vzlcc74z': {
      'en': 'Identity Documents',
      'ar': 'وثائق الهوية',
      'ur': 'شناختی دستاویزات',
    },
    'id78ifcz': {
      'en': 'Upload ID documents for onboarding',
      'ar': 'تحميل مستندات الهوية للتسجيل',
      'ur': 'آن بورڈنگ کے لیے شناختی دستاویزات اپ لوڈ کریں۔',
    },
    '34ps6ajr': {
      'en': 'Delivery Person Registration',
      'ar': 'تسجيل موظف التوصيل',
      'ur': 'ڈیلیوری پرسن کی رجسٹریشن',
    },
    'yfppewpq': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // payouts
  {
    'zjh1zkvd': {
      'en': 'Payouts',
      'ar': 'الدفعات',
      'ur': 'ادائیگیاں',
    },
    '0jgv7of3': {
      'en': 'Settlement payout details,',
      'ar': 'تفاصيل صرف التسوية،',
      'ur': 'تصفیہ ادائیگی کی تفصیلات،',
    },
    'wh5gq1ml': {
      'en': 'Order #',
      'ar': 'طلب #',
      'ur': 'آرڈر #',
    },
    'ttityp9e': {
      'en': 'AED',
      'ar': 'درهم إماراتي',
      'ur': 'AED',
    },
    'vgdm7oxt': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // ordersummary
  {
    '71tt4g2l': {
      'en': 'Order Summary',
      'ar': 'ملخص الطلب',
      'ur': 'آرڈر کا خلاصہ',
    },
    '5hjwnah0': {
      'en': 'Order #',
      'ar': 'طلب #',
      'ur': 'آرڈر #',
    },
    'sqzaxsc4': {
      'en': '[orderno]',
      'ar': '[رقم الطلب]',
      'ur': '[حکم]',
    },
    '7odr6elm': {
      'en': 'Date',
      'ar': 'تاريخ',
      'ur': 'تاریخ',
    },
    '8f7mbmxa': {
      'en': '[Date]',
      'ar': '[تاريخ]',
      'ur': '[تاریخ]',
    },
    'otav6kz0': {
      'en': 'Pickup Location',
      'ar': 'مكان الاستلام',
      'ur': 'پک اپ کا مقام',
    },
    'etmhiozg': {
      'en': '48, Al Majarrah Street Hadbat \nAl Za\'faranah, Abu Dhabi',
      'ar': '48, شارع المجرة هضبة الزعفرانة, أبوظبي',
      'ur': '48، المجرہ اسٹریٹ حدبت \nالغفارانہ، ابوظہبی',
    },
    'ew73ap5z': {
      'en': 'Customer Name:',
      'ar': 'اسم العميل:',
      'ur': 'گاہک کا نام:',
    },
    't07cmq03': {
      'en': 'Ajay Ratnam',
      'ar': 'أجاي راتنام',
      'ur': 'اجے رتنم',
    },
    't1pl9nl9': {
      'en': 'Drop Location',
      'ar': 'موقع الإنزال',
      'ur': 'ڈراپ لوکیشن',
    },
    '4pmweuy9': {
      'en': 'Liwa Tower P.O. Box 901. Abu Dhabi ',
      'ar': 'برج ليوا ص.ب. صندوق بريد 901. أبو ظبي',
      'ur': 'لیوا ٹاور P.O باکس 901۔ ابوظہبی',
    },
    'v83chsu2': {
      'en': 'Receipient Name:',
      'ar': 'اسم المستلم:',
      'ur': 'وصول کنندہ کا نام:',
    },
    'l4fbz2p4': {
      'en': 'Vijayanad',
      'ar': 'فيجاياناد',
      'ur': 'وجیناد',
    },
    '7eaffwyn': {
      'en': 'Details',
      'ar': 'تفاصيل',
      'ur': 'تفصیلات',
    },
    '6w2s9nrx': {
      'en': 'iPhone 15 Pro Max',
      'ar': 'ايفون 15 برو ماكس',
      'ur': 'آئی فون 15 پرو میکس',
    },
    'yf3mamcl': {
      'en': 'Weight:',
      'ar': 'وزن:',
      'ur': 'وزن:',
    },
    'lrkb0c0z': {
      'en': '221',
      'ar': '221',
      'ur': '221',
    },
    'fnopp9vu': {
      'en': 'g',
      'ar': 'ج',
      'ur': 'جی',
    },
    'wtulx84o': {
      'en': 'AED402',
      'ar': '402 درهم إماراتي',
      'ur': 'AED402',
    },
    'tunw27f1': {
      'en': 'Coupon code',
      'ar': 'كود الخصم',
      'ur': 'کوپن کوڈ',
    },
    'k0xql64l': {
      'en': 'AED2',
      'ar': '2 درهم إماراتي',
      'ur': 'AED2',
    },
    '6pxhebid': {
      'en': 'Total:',
      'ar': 'المجموع:',
      'ur': 'کل:',
    },
    'd2srwn56': {
      'en': 'AED400',
      'ar': '400 درهم إماراتي',
      'ur': 'AED400',
    },
    'yptzzivs': {
      'en': 'Delivery / Commission Earned',
      'ar': 'التسليم / العمولة المكتسبة',
      'ur': 'ڈیلیوری / کمیشن کمایا',
    },
    'e9y4xbu2': {
      'en': 'AED19',
      'ar': '19 درهم إماراتي',
      'ur': 'AED19',
    },
    'rfrjkrp4': {
      'en': 'Payment Information',
      'ar': 'معلومات الدفع',
      'ur': 'ادائیگی کی معلومات',
    },
    '81ynel2d': {
      'en': 'Payment Method',
      'ar': 'طريقة الدفع',
      'ur': 'ادائیگی کا طریقہ',
    },
    'zn272by2': {
      'en': 'Card ending 8292',
      'ar': 'البطاقة تنتهي بـ 8292',
      'ur': '8292 ختم ہونے والا کارڈ',
    },
    'dyvsaib6': {
      'en': 'Settlement Details',
      'ar': 'تفاصيل التسوية',
      'ur': 'تصفیہ کی تفصیلات',
    },
    'frota2cu': {
      'en': 'Status:',
      'ar': 'حالة:',
      'ur': 'حیثیت:',
    },
    'qh44zh9k': {
      'en': 'Success',
      'ar': 'نجاح',
      'ur': 'کامیابی',
    },
    '5fgh4g1l': {
      'en': 'Transaction No:',
      'ar': 'رقم المعاملة:',
      'ur': 'لین دین نمبر:',
    },
    '52za1m34': {
      'en': 'Date',
      'ar': 'تاريخ',
      'ur': 'تاریخ',
    },
    'zmtuo3st': {
      'en': 'IBAN ',
      'ar': 'رقم الحساب المصرفي الدولي',
      'ur': 'IBAN',
    },
    'uc3p0zk8': {
      'en': '012093848012',
      'ar': '012093848012',
      'ur': '012093848012',
    },
    'k9450ufb': {
      'en': '20-05-2024 /  14:28 HRS',
      'ar': '20-05-2024 / 14:28 مساءً',
      'ur': '20-05-2024 / 14:28 HRS',
    },
    '8ynj5wub': {
      'en': 'AE070331234567890123456',
      'ar': 'AE070331234567890123456',
      'ur': 'AE070331234567890123456',
    },
    'ljd4teth': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // businessregistrationcertificate
  {
    'v5922kll': {
      'en': 'Business Registration Certificate',
      'ar': 'شهادة تسجيل الأعمال',
      'ur': 'بزنس رجسٹریشن سرٹیفکیٹ',
    },
    'lgeh1gw1': {
      'en': 'Business Registration Number',
      'ar': 'رقم تسجيل الأعمال',
      'ur': 'بزنس رجسٹریشن نمبر',
    },
    '5hhuv3bq': {
      'en': 'Select Your File',
      'ar': 'حدد ملفك',
      'ur': 'اپنی فائل کو منتخب کریں۔',
    },
    'ewoacgkl': {
      'en': 'png, pdf, jpg, docx \naccepted',
      'ar': 'png، pdf، jpg، docx\nمقبول',
      'ur': 'png، pdf، jpg، docx \nقبول کر لیا',
    },
    'lr9takdy': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'ur': 'جمع کروائیں۔',
    },
    'xw6d66g0': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // ownerid
  {
    'ubx4lti0': {
      'en': 'Owner’s ID',
      'ar': 'هوية المالك',
      'ur': 'مالک کی شناخت',
    },
    'zyvlaot4': {
      'en': 'Identity number',
      'ar': 'رقم الهوية',
      'ur': 'شناختی نمبر',
    },
    'vj5a7l0y': {
      'en': 'Select Your File',
      'ar': 'حدد ملفك',
      'ur': 'اپنی فائل کو منتخب کریں۔',
    },
    '2yknmpkq': {
      'en': 'png, pdf, jpg, docx \naccepted',
      'ar': 'png، pdf، jpg، docx\nمقبول',
      'ur': 'png، pdf، jpg، docx \nقبول کر لیا',
    },
    'e6ugfhwe': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'ur': 'جمع کروائیں۔',
    },
    'yywyxg2f': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // driveriddocument
  {
    's9pkaxz5': {
      'en': 'Driver Identity document',
      'ar': 'وثيقة هوية السائق',
      'ur': 'ڈرائیور کی شناختی دستاویز',
    },
    'meehv17k': {
      'en': 'Driver ID number',
      'ar': 'رقم هوية السائق',
      'ur': 'ڈرائیور کا شناختی نمبر',
    },
    '1dyehir1': {
      'en': 'Select Your File',
      'ar': 'حدد ملفك',
      'ur': 'اپنی فائل کو منتخب کریں۔',
    },
    '9gq5nu0z': {
      'en': 'png, pdf, jpg, docx \naccepted',
      'ar': 'png، pdf، jpg، docx\nمقبول',
      'ur': 'png، pdf، jpg، docx \nقبول کر لیا',
    },
    's9rbyzh6': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'ur': 'جمع کروائیں۔',
    },
    'm9fuzyk0': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // driverlicense
  {
    '78y4yggh': {
      'en': 'Driver’s License',
      'ar': 'رخصة السائق',
      'ur': 'ڈرائیور کا لائسنس',
    },
    'm17qcp4j': {
      'en': 'License number',
      'ar': 'رقم الرخصة',
      'ur': 'لائسنس نمبر',
    },
    'uq2yic45': {
      'en': 'Select Your File',
      'ar': 'حدد ملفك',
      'ur': 'اپنی فائل کو منتخب کریں۔',
    },
    'fbr1b7bs': {
      'en': 'Upload only PDF',
      'ar': 'تحميل ملف PDF فقط',
      'ur': 'صرف پی ڈی ایف اپ لوڈ کریں۔',
    },
    '0op6usxn': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'ur': 'جمع کروائیں۔',
    },
    'rve1xwla': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // uploadbusinessdocuments
  {
    '52zdx8qb': {
      'en': 'Upload Documents',
      'ar': 'تحميل المستندات',
      'ur': 'دستاویزات اپ لوڈ کریں۔',
    },
    'ic2det4p': {
      'en': 'Business Registration Certificate',
      'ar': 'شهادة تسجيل الأعمال',
      'ur': 'بزنس رجسٹریشن سرٹیفکیٹ',
    },
    'lhjewmff': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    '5z40crb8': {
      'en': 'Owner ID',
      'ar': 'معرف المالك',
      'ur': 'مالک کی شناخت',
    },
    'jv1dee36': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    '0kitvt25': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // driverkyc
  {
    'j1trrrj8': {
      'en': 'Upload Documents',
      'ar': 'تحميل المستندات',
      'ur': 'دستاویزات اپ لوڈ کریں۔',
    },
    'fvn1w11b': {
      'en': 'Driver Identity Document',
      'ar': 'وثيقة هوية السائق',
      'ur': 'ڈرائیور کی شناختی دستاویز',
    },
    '7yedtgsa': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    'oixks4fc': {
      'en': 'License',
      'ar': 'رخصة',
      'ur': 'لائسنس',
    },
    'r2ugjmip': {
      'en': 'Select',
      'ar': 'يختار',
      'ur': 'منتخب کریں۔',
    },
    '6p90w7aa': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // persondriverdocument
  {
    'uj6sa5n8': {
      'en': 'Driver Identity document',
      'ar': 'وثيقة هوية السائق',
      'ur': 'ڈرائیور کی شناختی دستاویز',
    },
    'axymk044': {
      'en': 'Driver ID number',
      'ar': 'رقم هوية السائق',
      'ur': 'ڈرائیور کا شناختی نمبر',
    },
    '07mn9889': {
      'en': 'Select Your File',
      'ar': 'حدد ملفك',
      'ur': 'اپنی فائل کو منتخب کریں۔',
    },
    '7qcdnnhj': {
      'en': 'png, pdf, jpg, docx \naccepted',
      'ar': 'png، pdf، jpg، docx\nمقبول',
      'ur': 'png، pdf، jpg، docx \nقبول کر لیا',
    },
    'bvayfd3g': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'ur': 'جمع کروائیں۔',
    },
    'z5ay6pb0': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // persondriverlicence
  {
    'q3k9n0f4': {
      'en': 'Driver’s License',
      'ar': 'رخصة السائق',
      'ur': 'ڈرائیور کا لائسنس',
    },
    'ywt7vz5b': {
      'en': 'License number',
      'ar': 'رقم الرخصة',
      'ur': 'لائسنس نمبر',
    },
    '3kn9ymtg': {
      'en': 'Select Your File',
      'ar': 'حدد ملفك',
      'ur': 'اپنی فائل کو منتخب کریں۔',
    },
    'jqv6smah': {
      'en': 'Upload only PDF',
      'ar': 'تحميل ملف PDF فقط',
      'ur': 'صرف پی ڈی ایف اپ لوڈ کریں۔',
    },
    '6ats2l4f': {
      'en': 'Submit',
      'ar': 'يُقدِّم',
      'ur': 'جمع کروائیں۔',
    },
    'p5bqwnay': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // language
  {
    'y1n7bgds': {
      'en': 'Select Language',
      'ar': 'اختر اللغة',
      'ur': 'زبان منتخب کریں۔',
    },
    'bk5xsm5o': {
      'en': 'Choose Language to proceesd',
      'ar': 'اختر اللغة للمتابعة',
      'ur': 'آگے بڑھنے کے لیے زبان کا انتخاب کریں۔',
    },
    'g0qpzisk': {
      'en': 'English',
      'ar': 'إنجليزي',
      'ur': 'انگریزی',
    },
    'n38mxomo': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'jx0n915p': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'nw15jhue': {
      'en': 'Arabic\n عربی',
      'ar': 'عربي\nعربي',
      'ur': 'عربی\n عربی',
    },
    '8r3rhstx': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '9rdbv9zp': {
      'en': 'Urdu \nاردو',
      'ar': 'اردو\nاردو',
      'ur': 'اردو \nاردو',
    },
    'dplayl6v': {
      'en': 'Next',
      'ar': 'التالي',
      'ur': 'اگلا',
    },
    'zp9fclqz': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // button
  {
    '97c478tw': {
      'en': 'Introduction',
      'ar': 'مقدمة',
      'ur': 'تعارف',
    },
    'adhac9cx': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
      'ur': 'لاگ ان',
    },
    '8yea9n9y': {
      'en': 'OTP',
      'ar': 'كلمة مرور لمرة واحدة',
      'ur': 'OTP',
    },
    'dhytcryt': {
      'en': 'Choose Type',
      'ar': 'اختر النوع',
      'ur': 'قسم کا انتخاب کریں۔',
    },
    '85nzy73u': {
      'en': 'Business Registration',
      'ar': 'تسجيل الأعمال',
      'ur': 'بزنس رجسٹریشن',
    },
    'g2d4souw': {
      'en': 'Company Details',
      'ar': 'تفاصيل الشركة',
      'ur': 'کمپنی کی تفصیلات',
    },
    'vaedjjah': {
      'en': 'Company Documents Upload',
      'ar': 'تحميل مستندات الشركة',
      'ur': 'کمپنی کے دستاویزات اپ لوڈ کریں۔',
    },
    '2dsw5f2l': {
      'en': 'Company Business Registration Certificate',
      'ar': 'شهادة تسجيل شركة تجارية',
      'ur': 'کمپنی بزنس رجسٹریشن سرٹیفکیٹ',
    },
    's6yf86o5': {
      'en': 'Owner\'s Id',
      'ar': 'معرف المالك',
      'ur': 'مالک کی شناخت',
    },
    'uamhgygb': {
      'en': 'Company Driver Registration',
      'ar': 'تسجيل سائق الشركة',
      'ur': 'کمپنی ڈرائیور رجسٹریشن',
    },
    'tdpns802': {
      'en': 'Driver Kyc',
      'ar': 'معرفة هوية السائق',
      'ur': 'ڈرائیور Kyc',
    },
    'q8betnha': {
      'en': 'Driver ID  Document',
      'ar': 'وثيقة هوية السائق',
      'ur': 'ڈرائیور کی شناختی دستاویز',
    },
    'cna6g96j': {
      'en': 'Driver License',
      'ar': 'رخصة القيادة',
      'ur': 'ڈرائیور لائسنس',
    },
    'wrz25h76': {
      'en': 'Company Driver List',
      'ar': 'قائمة سائقي الشركة',
      'ur': 'کمپنی ڈرائیور کی فہرست',
    },
    '5wss275m': {
      'en': 'Individual Driver Registration',
      'ar': 'تسجيل السائق الفردي',
      'ur': 'انفرادی ڈرائیور کی رجسٹریشن',
    },
    'nivmofw0': {
      'en': 'Individual Driver Details',
      'ar': 'تفاصيل السائق الفردي',
      'ur': 'انفرادی ڈرائیور کی تفصیلات',
    },
    'qj5vtzqk': {
      'en': 'Individual Documents',
      'ar': 'المستندات الفردية',
      'ur': 'انفرادی دستاویزات',
    },
    'q3wbndaj': {
      'en': 'Approval Status',
      'ar': 'حالة الموافقة',
      'ur': 'منظوری کی حیثیت',
    },
    'smly84n5': {
      'en': 'Orders page',
      'ar': 'صفحة الطلبات',
      'ur': 'آرڈرز کا صفحہ',
    },
    'qzvc3scx': {
      'en': 'Driver Orders Profile',
      'ar': 'ملف طلبات السائق',
      'ur': 'ڈرائیور آرڈرز کا پروفائل',
    },
    'rp005cvt': {
      'en': 'Payouts',
      'ar': 'الدفعات',
      'ur': 'ادائیگیاں',
    },
    '4ry2jdb4': {
      'en': 'Orders Summary',
      'ar': 'ملخص الطلبات',
      'ur': 'احکامات کا خلاصہ',
    },
    'd0z3ywxa': {
      'en': 'Ratings',
      'ar': 'التقييمات',
      'ur': 'ریٹنگز',
    },
    '087lewki': {
      'en': 'Map View Details',
      'ar': 'عرض الخريطة التفاصيل',
      'ur': 'نقشہ کی تفصیلات دیکھیں',
    },
    'vqt3g44e': {
      'en': 'Change Language',
      'ar': 'تغيير اللغة',
      'ur': 'زبان تبدیل کریں۔',
    },
    'hyzqk9w7': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
      'ur': 'پروفائل',
    },
  },
  // ratings
  {
    'd756zpl0': {
      'en': 'Number of rating given: ',
      'ar': 'عدد التقييمات الممنوحة:',
      'ur': 'دی گئی درجہ بندی کی تعداد:',
    },
    'r674wuck': {
      'en': '2938',
      'ar': '2938',
      'ur': '2938',
    },
    '5sz6groj': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // menuorders
  {
    'xfn9h6c5': {
      'en': 'Earnings',
      'ar': 'الأرباح',
      'ur': 'کمائی',
    },
    'hd9sacp8': {
      'en': 'Choose Language',
      'ar': 'اختر اللغة',
      'ur': 'زبان کا انتخاب کریں۔',
    },
    'ktqai49f': {
      'en': 'Reviews',
      'ar': 'المراجعات',
      'ur': 'جائزے',
    },
    '7yfv2xsn': {
      'en': 'Sign Out',
      'ar': 'تسجيل الخروج',
      'ur': 'سائن آؤٹ کریں۔',
    },
    '0z373h6o': {
      'en': 'Banking Details',
      'ar': 'تفاصيل الخدمات المصرفية',
      'ur': 'بینکنگ کی تفصیلات',
    },
    '0i2iu493': {
      'en': 'Profile',
      'ar': 'حساب تعريفي',
      'ur': 'پروفائل',
    },
    'pjnctze8': {
      'en': 'Home',
      'ar': 'بيت',
      'ur': 'گھر',
    },
  },
  // details
  {
    'zr73vsaf': {
      'en': 'com',
      'ar': 'كوم',
      'ur': 'com',
    },
    'nhami0j6': {
      'en': 'indi',
      'ar': 'هندي',
      'ur': 'انڈی',
    },
    'pouy2mrz': {
      'en': 'Banking Details',
      'ar': 'تفاصيل الخدمات المصرفية',
      'ur': 'بینکنگ کی تفصیلات',
    },
    'rlf2ebpz': {
      'en': 'Settlements',
      'ar': 'المستوطنات',
      'ur': 'بستیاں',
    },
    'jko2aind': {
      'en': 'Reviews',
      'ar': 'المراجعات',
      'ur': 'جائزے',
    },
    'zi8gm0q2': {
      'en': 'Change Language',
      'ar': 'تغيير اللغة',
      'ur': 'زبان تبدیل کریں۔',
    },
    '0rngwdh0': {
      'en': 'Sign Out',
      'ar': 'تسجيل الخروج',
      'ur': 'سائن آؤٹ کریں۔',
    },
  },
  // Miscellaneous
  {
    'oha8t9p1': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'ynhghbfa': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'hhd5e2lk': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'qf09x04g': {
      'en': 'Switch on App Notifications',
      'ar': 'قم بتشغيل إشعارات التطبيق',
      'ur': 'ایپ کی اطلاعات کو آن کریں۔',
    },
    '5ih10had': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '804pt8hy': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'bzu4ryud': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'th5as9ex': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '2xbse65z': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'e2oppk38': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '7okll8nb': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'j5hvtx5h': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'ahrtu1wl': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'n3wfmd8s': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '9n3w7ult': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'yletrhba': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '749arif6': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'jpxn7fsa': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '99rodi88': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'xb8q3xes': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'd22lyxap': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'k3eph4ww': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '68gwqfj7': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'ltthocsp': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    '2yv1rkav': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'q3wzetfz': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'lguarmyz': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'zog7zrdd': {
      'en': '',
      'ar': '',
      'ur': '',
    },
    'jiue14q1': {
      'en': '',
      'ar': '',
      'ur': '',
    },
  },
].reduce((a, b) => a..addAll(b));
