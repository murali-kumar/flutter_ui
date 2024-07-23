import '../utils/route_generator.dart';

import '../models/screen_item.dart';

List<ScreenItem> getScreenItems(){
List<ScreenItem> dataList = [];
dataList.add(ScreenItem(label: "Dashboard", screenName: RouteGenerator.dashboardMenuRoute));

return dataList;
}

List<ScreenItem> getDashboardScreenItems(){
  List<ScreenItem> dataList = [];
  dataList.add(ScreenItem(label: "Dashboard 1", screenName: RouteGenerator.dashboard1));

  return dataList;
}