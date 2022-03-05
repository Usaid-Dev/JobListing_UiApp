import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/jobListing.dart';
import '../widgets/appButton.dart';
import '../widgets/appTextField.dart';
import '../widgets/textArea.dart';

class UpdateJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.only(top: 89, left: 27),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => JobListing()),
                    );
                  },
                  child: const Icon(
                    Icons.logout,
                    color: Colors.white,
                    size: 25,
                  ),
                ),
                const SizedBox(width: 25),
                const Text(
                  "Edit Job", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 25)),
              ],
            ),
            Expanded(
                flex: 10,
                child: SingleChildScrollView(
                  child: Column(
                    children: const [
                      SizedBox(height: 11),
                      AppTextField(
                        placeholder: 'Enter position name',
                        txt: 'Flutter Developer',
                      ),
                      TextArea(
                        initialValue: "Lorem ipsum dolor",
                        minLines: 11,
                        maxLines: 11,
                      ),
                    ],
                  ),
                )),
            const Spacer(),
            AppButton(
              label: "Update Job",
              onPress: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => JobListing()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
