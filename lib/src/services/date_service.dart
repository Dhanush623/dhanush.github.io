import 'package:portfolio/src/models/date_difference.dart';
import 'package:portfolio/src/utils/app_constants.dart';

class DateService {
  DateDifference getExperienceYears() {
    DateTime today = DateTime.now();
    int years = today.year - AppConstants.startDate.year;
    int months = today.month - AppConstants.startDate.month;

    if (months < 0) {
      years--;
      months += 12;
    }

    return DateDifference(years, months);
  }
}
