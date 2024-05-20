import 'package:flutter/material.dart';
import 'package:job_app/screens/homepage/widgets/app_bar.dart';
import 'package:job_app/services/get_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GetData data = GetData();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppBar(),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Good Morning Alexa",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Find Your\nCreative Job",
                  style: TextStyle(
                      fontSize: 32, height: 0.9, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: size.width * 0.75,
                      child: TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8)),
                            hintText: "Search for Jobs",
                            fillColor: Colors.white,
                            filled: true),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 47,
                      height: 47,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8)),
                      child: const Icon(
                        Icons.filter_alt,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Popular Jobs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Show All",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(data.getJobData().length, (index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: size.width * 0.75,
                          height: size.width * 0.4,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    data.getJobData()[index].title,
                                    style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  const Spacer(),
                                  Icon(Icons.bookmark_add_rounded,
                                      color: Colors.grey.shade700)
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    data.getJobData()[index].salary,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                        color: Colors.grey.shade700,
                                        borderRadius: BorderRadius.circular(8)),
                                    child: Text(
                                      data.getJobData()[index].type,
                                      style: TextStyle(
                                          color: Colors.grey.shade300),
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        data.getJobData()[index].logo),
                                    radius: 25,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.getJobData()[index].companyName,
                                        style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(data.getJobData()[index].city,
                                          style: TextStyle(
                                              color: Colors.grey.shade200,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w300)),
                                    ],
                                  ),
                                  const Spacer(),
                                  Text(data.getJobData()[index].time,
                                      style: const TextStyle(
                                          color: Colors.red,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Jobs",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      "Show All",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: List.generate(data.getJobData().length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        height: 80,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(data.getJobData()[index].logo),
                            radius: 25,
                          ),
                          title: Text(data.getJobData()[index].title),
                          subtitle: Text(
                              "${data.getJobData()[index].companyName} - ${data.getJobData()[index].type}"),
                          trailing: Text(data.getJobData()[index].time),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
