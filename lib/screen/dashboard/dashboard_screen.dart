import 'package:flutter/material.dart';
import 'package:porto/constants.dart';
import 'package:porto/responsive.dart';
import 'package:porto/screen/dashboard/components/recent_files.dart';

import 'components/header.dart';
import 'components/my_fiels.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          children: [
            Header(),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        MyFiels(),
                        SizedBox(
                          height: defaultPadding,
                        ),
                        RecentFiles(),
                        if (Responsive.isMobile(context))
                          SizedBox(
                            height: defaultPadding,
                          ),
                        if (Responsive.isMobile(context)) StorageDetails()
                      ],
                    )),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(flex: 2, child: StorageDetails())
              ],
            )
          ],
        ),
      ),
    );
  }
}
