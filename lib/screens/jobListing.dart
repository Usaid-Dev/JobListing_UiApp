import 'package:flutter/material.dart';
import 'package:job_posting_app/screens/signIn.dart';
import '../widgets/jobListingCard.dart';
import '../widgets/searchTextField.dart';
import 'adPosting.dart';

class JobListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF191720),
      floatingActionButton: SizedBox(
        height: 74,
        width: 74,
        child: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => AdPosting()));
          },
          child: const Icon(
            Icons.add,
            size: 45,
            color: Color(0xFF191720),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 79, left: 27, right: 27),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [const Text("Welocme", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w900, fontSize: 18),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => SignIn()));
                  }, // onTap
                  child: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                ),
                //Icon(Icons.arrow_back_sharp, color: Colors.white,),
              ],
            ),
            const Text(
              "Usaid Asif",
              style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.normal),
            ),
            const SearchTextField(placeholder: "Search keywords"),
            const SizedBox(height: 10),
            Expanded(child: ListView(
              children: <Widget>[
                  JobListingCard(),
                  JobListingCard(),
                  JobListingCard(),
                  JobListingCard(),
                  JobListingCard(),
                  JobListingCard(),
                  JobListingCard(),
                  const SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
