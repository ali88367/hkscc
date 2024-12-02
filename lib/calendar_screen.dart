import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hkksccc/schedual.dart';
import 'package:hkksccc/widgets/custom_appbar.dart';

import 'package:table_calendar/table_calendar.dart';

import 'const/colors.dart';
import 'const/textstyle.dart';

class CalendarScreen extends StatefulWidget {
  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(65.h),
        child: CustomAppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 33.h),
            GestureDetector(
              onTap: (){
                Get.to(ExamScheduleScreen());
              },
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'February ',
                      style: jost600(25.sp, redColor)
                    ),
                    WidgetSpan(
                      child: Image.asset('assets/images/pencil.png',height: 25.h,width: 25.w,),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              '15 exams this month',
              style: jost600(14, greyColor)
            ),
            SizedBox(height: 40.h),
            TableCalendar(
              firstDay: DateTime.utc(2020, 1, 1),
              lastDay: DateTime.utc(2030, 12, 31),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
                titleTextStyle: TextStyle(
                  color: redColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.sp,
                ),
                leftChevronIcon: Icon(Icons.arrow_back, color: redColor),
                rightChevronIcon: Icon(Icons.arrow_forward, color: redColor),
              ),
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Color.fromRGBO(61, 169, 252, 1),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  border: Border.all(color: Color.fromRGBO(61, 169, 252, 1)),
                  shape: BoxShape.circle,
                ),
                selectedTextStyle: TextStyle(
                  color: Color.fromRGBO(61, 169, 252, 1), // Sets the text color of the selected date to red
                  fontWeight: FontWeight.bold,
                ),
                markerDecoration: BoxDecoration(
                  color: Color.fromRGBO(61, 169, 252, 1),
                  shape: BoxShape.circle,
                ),
                defaultTextStyle: TextStyle(color: Colors.black),
                weekendTextStyle: TextStyle(color: Colors.grey),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekendStyle: TextStyle(color: Colors.grey),
              ),
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (date.day == 13) {
                    return Positioned(
                      bottom: 12,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child:   Container(
                                width: 250.w,
                                height: 170.h,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: redColor,
                                  borderRadius: BorderRadius.circular(16.r),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Mathematics',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16.sp,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Image.asset('assets/images/dots.png',height: 24.h,color: Colors.white,)
                                      ],
                                    ),

                                    SizedBox(height: 12.h),
                                    Text(
                                      'Chapter 1:Introduction',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w400),
                                    ),

                                     SizedBox(height: 15.h),
                                    Row(
                                      children: [
                                        const Icon(Icons.pin_drop_outlined,
                                            size: 16, color: Colors.white),
                                        SizedBox(width: 4.w),
                                        Text(
                                          'New York City, USA',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                     SizedBox(height: 8.h),
                                    Row(
                                      children: [
                                      Image.asset('assets/images/stopwatch.png',height: 18.h,width: 18.w,color: Colors.white,),
                                        SizedBox(width: 4.w),
                                        Text(
                                          'June 10, 2024, 2:00 PM BST',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),


                                  ],
                                ),
                              ),
                            ),
                          );
                        },

                        child: Container(
                          width: 5,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                    );
                  }
                  return null;
                },
              ),

            ),



          ],
        ),
      ),
    );
  }
}


