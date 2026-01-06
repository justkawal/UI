import 'package:education_desktop/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderWidget extends StatefulWidget {
  const CalenderWidget({super.key});

  @override
  State<CalenderWidget> createState() => _CalenderWidgetState();
}

class _CalenderWidgetState extends State<CalenderWidget> {
  int weeks = 5;
  DateTime selectedDay = DateTime.utc(2024, 7, 1);
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(microseconds: 100),
      height: 358 + (calculateWeeksCovered(selectedDay) == 5 ? 15 : 50),
      width: 380,
      margin: const EdgeInsets.only(right: 25, top: 13),
      padding: const EdgeInsets.only(top: 10, left: 22, right: 22),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: TableCalendar(
              headerStyle: HeaderStyle(
                leftChevronVisible: false,
                rightChevronVisible: false,
                formatButtonVisible: false,
                headerMargin:
                    const EdgeInsets.only(top: 5, bottom: 5, left: 10),
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPageChanged: (datetime) {
                setState(() {
                  selectedDay = datetime;
                });
              },
              selectedDayPredicate: (date) {
                return [
                  '2024-07-09 00:00:00.000Z',
                  '2024-07-12 00:00:00.000Z',
                  '2024-07-28 00:00:00.000Z',
                  '2024-07-29 00:00:00.000Z',
                  '2024-07-30 00:00:00.000Z',
                  '2024-07-31 00:00:00.000Z',
                ].contains(date.toString());
              },
              holidayPredicate: (date) {
                return ['2024-07-16 00:00:00.000Z', '2024-07-17 00:00:00.000Z']
                    .contains(date.toString());
              },
              calendarBuilders: CalendarBuilders(
                disabledBuilder: (context, date, _) {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
                todayBuilder: (context, date, events) {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: EducationColors.purpleColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
                selectedBuilder: (context, date, events) {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: EducationColors.greenColor,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: EducationColors.greenColor, width: 1.7),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
                holidayBuilder: (context, date, events) {
                  return Container(
                    margin: const EdgeInsets.all(4.0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Text(
                      date.day.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  );
                },
              ),
              firstDay: DateTime.utc(2010, 10, 15),
              startingDayOfWeek: StartingDayOfWeek.monday,
              lastDay: DateTime.utc(2030, 3, 16),
              focusedDay: selectedDay,
              rowHeight: 47,
              daysOfWeekHeight: 25,
              calendarStyle: CalendarStyle(
                defaultTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                weekendStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Positioned(
            right: 5,
            top: 15,
            child: SizedBox(
              width: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 30,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.black54,
                    size: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

int calculateWeeksCovered(DateTime startDate) {
  final DateTime endDate = DateTime.utc(startDate.year, startDate.month + 1, 0);
  // Calculate the difference in days between the start and end date
  final int totalDays = endDate.difference(startDate).inDays + 1;

  // Find the first day of the week for the start and end date
  final int startWeekDay = startDate.weekday;
  final int endWeekDay = endDate.weekday;

  // Calculate the number of weeks covered
  final int weeksCovered =
      ((totalDays + (startWeekDay - 1) + (7 - endWeekDay)) / 7).ceil();
  return weeksCovered;
}
