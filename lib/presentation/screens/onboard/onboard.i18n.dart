part of 'onboard_imports.dart';

extension Localization on String {
  static final _t = Translations.byText('en_us') +
      {
        'en_us': 'Get Started',
        'ne_np': 'सुरु गर',
        'hi_in': 'शुरू हो जाओ',
        'ar_ae': 'البدء',
      } +
      {
        'en_us':
            'Discover, engage and read the latest articles oras well as share your own thoughts and ideas with the community',
        'ne_np':
            'खोज्नुहोस्, संलग्न हुनुहोस् र नवीनतम लेखहरू पढ्नुहोस् वा समुदायसँग आफ्नो विचार र विचार साझा गर्नुहोस्',
        'hi_in':
            'नवीनतम लेखों को खोजें, संलग्न करें और पढ़ें या साथ ही समुदाय के साथ अपने विचार और विचार साझा करें',
        'ar_ae':
            'اكتشف أحدث المقالات وشارك فيها واقرأها أو شارك أفكارك وأفكارك مع المجتمع',
      } +
      {
        'en_us':
            'Customize your reading experience and join the conversation by creating an account.',
        'ne_np':
            'आफ्नो पढ्ने अनुभवलाई अनुकूलित गर्नुहोस् र खाता सिर्जना गरेर कुराकानीमा सामेल हुनुहोस्।',
        'hi_in':
            'अपने पढ़ने के अनुभव को अनुकूलित करें और एक खाता बनाकर बातचीत में शामिल हों।',
        'ar_ae':
            'قم بتخصيص تجربة القراءة الخاصة بك والانضمام إلى المحادثة عن طريق إنشاء حساب.'
      } +
      {
        'en_us':
            'Explore a wide selection of categories, or use the search bar to find specific topics',
        'ne_np':
            'कोटिहरूको विस्तृत चयन अन्वेषण गर्नुहोस्, वा विशिष्ट विषयहरू फेला पार्न खोज पट्टी प्रयोग गर्नुहोस्',
        'hi_in':
            'श्रेणियों के विस्तृत चयन का अन्वेषण करें, या विशिष्ट विषयों को खोजने के लिए खोज बार का उपयोग करें',
        'ar_ae':
            'استكشف مجموعة واسعة من الفئات، أو استخدم شريط البحث للعثور على موضوعات محددة',
      } +
      {
        'en_us': 'Skip',
        'ne_np': 'छोड्नुहोस्',
        'hi_in': 'छोडना',
        'ar_ae': 'يتخطى',
      } +
      {
        'en_us': 'Next',
        'ne_np': 'अर्को',
        'hi_in': 'अगला',
        'ar_ae': 'التالي',
      };

  String get i18n => localize(this, _t);
}
