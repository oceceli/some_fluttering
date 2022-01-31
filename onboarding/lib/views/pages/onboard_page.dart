import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onboarding/controllers/onboard_controller.dart';

class OnboardPages extends StatelessWidget {
  const OnboardPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = OnboardController();
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedPage,
            itemCount: _controller.pages.length,
            itemBuilder: (context, index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 4,
                    child: Image(
                      image: AssetImage(_controller.pages[index].image),
                    ),
                  ),
                  const SizedBox(height: 36),
                  Flexible(
                    flex: 1,
                    child: Text(
                      _controller.pages[index].title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Flexible(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Text(
                        _controller.pages[index].body,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.visible,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              children: List.generate(
                _controller.pages.length,
                (index) {
                  return Obx(
                    () => Container(
                      margin: const EdgeInsets.all(4),
                      height: 12,
                      width: 12,
                      decoration: BoxDecoration(
                        color: _controller.selectedPage.value == index
                            ? Colors.red
                            : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            right: 20,
            child: FloatingActionButton(
              elevation: 0,
              onPressed: () {
                _controller.isLastPage
                    ? Navigator.pushReplacementNamed(context, 'login_page')
                    : _controller.nextPage();
              },
              child:
                  Obx(() => Text(_controller.isLastPage ? "Başla" : "İleri")),
            ),
          ),
        ],
      ),
    );
  }
}
