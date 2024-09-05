import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:math_travel/themes/colors.dart';
import 'package:math_travel/widgets/report_title.dart';

class TeaRecommend extends StatelessWidget {
  const TeaRecommend({super.key});

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
        leading: GestureDetector(
            onTap: () => Get.back(), child: const Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReportTitle(title: '오설록에서 구매하면 좋을', boldTitle: '녹차 제품 추천'),
                  ...productInfo.map(
                    (item) {
                      return Column(
                        children: [
                          SizedBox(height: height * 0.027),
                          SizedBox(
                            height: height * 0.162,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 6,
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage(item['img']),
                                  ),
                                ),
                                const Flexible(
                                    child: SizedBox(width: double.maxFinite)),
                                Flexible(
                                  flex: 12,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item['name'],
                                        style: TextStyle(
                                            color: greenShadow,
                                            fontWeight: FontWeight.w500,
                                            fontSize: height * 0.015),
                                      ),
                                      Text(
                                        item['desc'],
                                        style:
                                            TextStyle(fontSize: height * 0.015),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                  const Text('\n\n\n\n\n\n\n\n\n\n\n\n')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

List productInfo = [
  {
    'name': '제주 말차 소프트 아이스크림',
    'desc':
        '제주 유기농 말차를 듬뿍 넣어 진한 풍미를 자랑하는 말차 아이스크림입니다. 달콤 쌉싸름한 말차의 맛이 돋보이며, 오설록의 대표 디저트로 많은 사랑을 받고 있습니다. 제주에서만 경험할 수 있는 특별한 맛을 지금 만나보세요.',
    'img': 'assets/report_assets/greentea_image/tea_product_1.png'
  },
  {
    'name': '말차 파베 샌드',
    'desc':
        '꾸덕한 파베초콜릿과 바삭한 쿠키가 어우러져, 제주 말차의 진한 풍미와 향을 담은 고급스러운 디저트입니다. 부드러운 식감과 적당한 단맛이 특징으로, 한정수량으로 제주 티뮤지엄에서만 만나보실 수 있습니다.',
    'img': 'assets/report_assets/greentea_image/tea_product_2.png'
  },
  {
    'name': '오설록 제주 구운녹차',
    'desc':
        '산지에서 갓 덖어내어 녹차의 향이 풍부한 고급 녹차입니다. 감칠맛과 고소한 향이 깊어 녹차를 잘 마시지 않는 분들도 거부감 없이 즐길 수 있습니다. 이 제품은 제주 티뮤지엄에서만 구매할 수 있으니, 꼭 한번 경험해 보세요.',
    'img': 'assets/report_assets/greentea_image/tea_product_3.png'
  }
];
