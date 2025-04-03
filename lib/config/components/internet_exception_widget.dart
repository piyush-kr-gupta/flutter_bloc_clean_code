import 'package:flutter/material.dart';
import 'package:flutter_bloc_clean_code/config/color/app_colors.dart';

class InternetExceptionWidget extends StatelessWidget {
  final VoidCallback onPressRetry;

  const InternetExceptionWidget({super.key, required this.onPressRetry});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: MediaQuery.sizeOf(context).height * .15),
        const Icon(Icons.cloud_off, color: AppColors.error),
        Padding(
          padding: EdgeInsets.only(top: 15),
          child: Center(
            child: Text(
              "We are unable to shou results. \nPlease check your data \nconnection.",
              textAlign: TextAlign.center,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: onPressRetry,
          child: Text("RETRY", style: Theme.of(context).textTheme.bodySmall),
        ),
      ],
    );
  }
}
