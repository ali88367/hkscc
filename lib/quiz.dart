import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'const/colors.dart';
import 'const/images.dart';
import 'const/textstyle.dart';
import 'exam_complete.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentPage = 0;
  List<int?> _selectedAnswers =
      List.filled(4, null); // Changed length to match questions
  late PageController _pageController;

  // Sample quiz data
  List<Map<String, dynamic>> questions = [
    {
      "question": "What is the solution to the equation 2x+5=15",
      "answers": ["x=4", "x=5", "x=6", "x=10"],
      "correctAnswer": 0,
    },
    {
      "question": "What is the solution to the equation 3x+2=11",
      "answers": ["x=2", "x=3", "x=4", "x=5"],
      "correctAnswer": 1,
    },
    {
      "question": null, // Marker for the "Good Job" screen
    }
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.h),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.22),
                blurRadius: 10.4,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 21.7,
                sigmaY: 21.7,
              ),
              child: AppBar(
                automaticallyImplyLeading: false,
                elevation: 0,
                backgroundColor: Colors.transparent,
                title: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Image.asset(bigArrow, color: redColor, scale: 2),
                            Image.asset(bigArrow, color: redColor, scale: 3),
                            Text("  Back", style: jost600(20.sp, redColor)),
                          ],
                        ),
                      ),
                      SizedBox(width: 21.w),
                      Text("Mathematics", style: jost600(22.sp, Colors.black)),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            SizedBox(height: 25.h),
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _currentPage = page;
                  });
                },
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return _buildPage(index);
                },
              ),
            ),
            SizedBox(height: 60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage > 0)
                  GestureDetector(
                    onTap: () {
                      _pageController.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Row(
                      children: [
                        SizedBox(width: 10.w
                          ,),
                        Image.asset('assets/images/arrow-left.png',
                            height: 24.h, width: 24.w),
                        SizedBox(width: 9.w),
                        Text('Previous',
                            style: jost700(
                                16.sp, Color.fromRGBO(129, 130, 133, 1))),
                      ],
                    ),
                  ),
                GestureDetector(
                  onTap: () {
                    if (_currentPage < questions.length - 1) {
                      // Move to the next question
                      _pageController.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    } else {
                      print("Quiz submitted");
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 90.w),
                    child: _currentPage == questions.length - 1
                        ? GestureDetector(
                            onTap: () {
                              Get.to(ExamComplete());
                            },
                            child: Container(
                              height: 27.h,
                              //   width: 84.w,
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              decoration: BoxDecoration(
                                color: redColor,
                                borderRadius: BorderRadius.circular(8.r),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 6,
                                    offset: Offset(0, 3),
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  Center(
                                    child: Text('Submit Exam',
                                        style: jost500(12.sp, Colors.white)),
                                  ),
                                ],
                              ),
                            ),
                          )
                        : Row(
                            children: [
                              Text(
                                _currentPage == 1 ? 'Next' : 'Next Question',
                                style: jost700(
                                    16.sp, Color.fromRGBO(129, 130, 133, 1)),
                              ),
                              SizedBox(width: 9.w),
                              Image.asset('assets/images/arrow-right.png',
                                  height: 24.h, width: 24.w),
                              SizedBox(width: 10.w
                                ,)
                            ],
                          ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: Row(
                children: [
                  SizedBox(
                    width: 261.w,
                    child: LinearProgressIndicator(
                      minHeight: 7.h,
                      value: (_currentPage + 1) / questions.length,
                      backgroundColor: Colors.grey,
                      borderRadius: BorderRadius.circular(2.r),
                      valueColor: AlwaysStoppedAnimation<Color>(redColor),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Text('${_currentPage + 1}/${questions.length}',
                      style: jost500(11.sp, Color.fromRGBO(199, 200, 202, 1))),
                ],
              ),
            ),
            SizedBox(height: 40.h),
          ],
        ),
      ),
    );
  }

  Widget _buildPage(int index) {
    if (questions[index]['question'] == null) {
      return Center(
        child: SingleChildScrollView(
          // Added ScrollView to handle overflow
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Question text
              Text('Find the value of x that satisfies the equation 2x+5=15',
                  style: jost600(16.sp, Colors.black)),
              SizedBox(height: 15.h),

              // Image
              SizedBox(
                height: 252.h,
                width: double.infinity,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset('assets/images/tutorbig.png',
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 15.h),

              // Instruction text
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Text('Solve for x in the equation 2x+5=15',
                    style: jost600(16.sp, Colors.black)),
              ),
              SizedBox(height: 20.h),

              // Options to choose from
              Column(
                children: [
                  _buildOption('x=5', 0, index),
                  SizedBox(height: 10.h),
                  _buildOption('x=69', 1, index),
                  SizedBox(height: 10.h),
                  _buildOption('y=55', 2, index),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return _buildQuestionCard(questions[index]);
    }
  }

  Widget _buildOption(String optionText, int answerIndex, int questionIndex) {
    bool isSelected = _selectedAnswers[questionIndex] == answerIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedAnswers[questionIndex] = answerIndex;
        });
      },
      child:Container(
        height: 52.h,
        margin: EdgeInsets.only(bottom: 11.h),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: isSelected
              ? (answerIndex == 0
              ? Color.fromRGBO(110, 219, 80, 1) // Correct answer (x=5)
              : Color.fromRGBO(255, 215, 213, 1)) // Incorrect (x=69 or y=55)
              : textfieldColor,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.transparent, width: 1),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isSelected
                    ? (answerIndex == 0 ? Colors.white : Colors.red)
                    : Colors.transparent,
                border: Border.all(
                  color: isSelected
                      ? (answerIndex == 0 ? Colors.green : Colors.red)
                      : redColor,
                  width: 1,
                ),
              ),
              child: Center(
                child: Icon(
                  size: 18.sp,
                  isSelected
                      ? (answerIndex == 0 ? Icons.check : Icons.close)
                      : null,
                  color: isSelected
                      ? (answerIndex == 0 ? Colors.green : Colors.red)
                      : Colors.transparent,
                ),
              ),
            ),
            SizedBox(width: 16.w),
            Expanded(
              child: Text(
                optionText,
                style: jost500(
                  15.sp,
                  isSelected && answerIndex == 0 ? Colors.white : Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),

    );
  }

  Widget _buildQuestionCard(Map<String, dynamic> question) {
    return Card(
      color: redColor,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16.h),
            Text(question['question'], style: jost600(16.sp, Colors.white)),
            Center(
              child: Image.asset('assets/images/tutor.png',
                  height: 122.h, width: 122.w),
            ),
            SizedBox(height: 11.h),
            Expanded(
              child: ListView.builder(
                itemCount: question['answers'].length,
                itemBuilder: (context, answerIndex) {
                  bool isCorrect = answerIndex == question['correctAnswer'];
                  bool isSelected =
                      _selectedAnswers[_currentPage] == answerIndex;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedAnswers[_currentPage] = answerIndex;
                      });
                    },
                    child: Container(
                      height: 52.h,
                      margin: EdgeInsets.only(bottom: 11.h),
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? (isCorrect
                                ? Color.fromRGBO(110, 219, 80, 1)
                                : Color.fromRGBO(255, 215, 213, 1))
                            : textfieldColor,
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: Colors.transparent, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 4,
                            offset: Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: isSelected
                                  ? (isCorrect ? Colors.white : Colors.red)
                                  : Colors.transparent,
                              border: Border.all(
                                color: isSelected
                                    ? (isCorrect ? Colors.green : Colors.red)
                                    : redColor,
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Icon(
                                size: 18.sp,
                                isSelected
                                    ? (isCorrect ? Icons.check : Icons.close)
                                    : null,
                                color: isSelected
                                    ? Colors.green
                                    : Colors.transparent,
                              ),
                            ),
                          ),
                          SizedBox(width: 16.w),
                          Expanded(
                            child: Text(question['answers'][answerIndex],
                                style: jost500(15.sp, Colors.black)),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
