import 'package:job_app/models/job_models.dart';

class GetData {
  final instaLogo =
      "https://t3.ftcdn.net/jpg/03/00/02/08/360_F_300020899_N275TqND1g3LDqinhrvLhDpCy4RjYG8m.jpg";
  final uberLogo =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Uber_App_Icon.svg/2048px-Uber_App_Icon.svg.png";

  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
          title: "Senior UX Designer",
          salary: "LKR 80000 / month",
          companyName: "Instagram",
          logo: instaLogo,
          city: "Colombo",
          time: "7 Days Left"),
      JobModel(
          title: "Senior UI Designer",
          salary: "LKR 90000 / month",
          companyName: "Instagram",
          logo: uberLogo,
          city: "Kurunagala",
          time: "9 Days Left"),
      JobModel(
          title: "Senior Mobile Developer",
          salary: "LKR 60000 / month",
          companyName: "Instagram",
          logo: instaLogo,
          city: "Kandy",
          time: "5 Days Left"),
      JobModel(
          title: "Senior Web Developer",
          salary: "LKR 100000 / month",
          companyName: "Instagram",
          logo: instaLogo,
          city: "Jaffna",
          time: "4 Days Left")
    ];
    return jobs;
  }
}
