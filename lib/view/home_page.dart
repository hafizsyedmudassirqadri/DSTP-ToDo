import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:to_do_app/constants/app_colors.dart';
import 'package:to_do_app/model/task_model.dart';

class HomePageUi extends StatefulWidget {
  const HomePageUi({super.key});

  @override
  State<HomePageUi> createState() => _HomePageUiState();
}

class _HomePageUiState extends State<HomePageUi> {
  final List<TaskModel> listTask = [
    TaskModel(
      title: "Flutter Work",
      datetime: DateTime(2024, 11, 9, 12, 34),
      description: "Do it Now",
    ),
    TaskModel(
      title: "Do Something",
      datetime: DateTime(2024, 11, 9, 9, 45),
      description: "Do it Now",
    ),
    TaskModel(
      title: "Playing Cricket",
      datetime: DateTime(2024, 11, 9, 4, 14),
      description: "Do it Now",
    ),
  ];

  bool isTaskCompleted = false;

  Future<void> convertTaskModelToString() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    TaskModel myTask = TaskModel(
      title: "Write Something",
      datetime: DateTime(2024, 5, 11),
      description: "like abcd",
    );
    Map<String, dynamic> newMapTask = myTask.toMap();
    var newJsonTask = jsonEncode(newMapTask);
    await prefs.setString('task', newJsonTask);
  }

  Future<void> convertStringToTaskModel() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonString = prefs.getString("task") ?? "";
    var mapTaskModel = jsonDecode(jsonString);
    TaskModel.fromMap(mapTaskModel);
    // print(taskFromMap.title);
    // print(taskFromMap.description);
    // print(taskFromMap.isChecked);
    // print(taskFromMap.taskDate);
  }

  @override
  Widget build(BuildContext context) {
    final sh1 = MediaQuery.of(context).size.height;
    final sw1 = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.fabColor,
        onPressed: () {
          TextEditingController titleController = TextEditingController();
          TextEditingController descriptionController = TextEditingController();
          DateTime selectedDate = DateTime.now();
          TimeOfDay selectedTime = TimeOfDay.now();

          showModalBottomSheet(
            isScrollControlled: true,

            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all()),
            backgroundColor: AppColors.tasksContainersBgColor,
            isDismissible: false,
            context: context,
            builder: (context) {
              return StatefulBuilder(
                builder: (context, setUpdate) {
                  return SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom + 12,
                        top: sh1 * 0.03,
                        right: sw1 * 0.06,
                        left: sw1 * 0.06,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "ADD TASK",
                                style: TextStyle(
                                  color: AppColors.primaryText,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                  size: 26,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: sh1 * 0.007,
                              left: sw1 * 0.04,
                              right: sw1 * 0.04,
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.appbarColor,
                                  blurRadius: 6,
                                  spreadRadius: 0.4,
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: titleController,
                              textInputAction: TextInputAction.next,

                              onTap: () {
                                setState(() {});
                              },

                              enableSuggestions: true,
                              style: const TextStyle(
                                color: AppColors.secondaryText,
                              ),
                              decoration: InputDecoration(
                                fillColor: AppColors.inputFieldBgColor,
                                filled: true,
                                labelText: 'Title',
                                hintText: "Do Something",
                                hintStyle: const TextStyle(
                                  color: AppColors.secondaryText,
                                ),
                                prefixIcon: const Icon(Icons.title),
                                prefixIconColor: AppColors.inputHintTextColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    color: AppColors.taskCardBorderColor,
                                    width: 1.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    color: AppColors.taskCardBorderColor,
                                    width: 2.0,
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: sh1 * 0.01,
                              left: sw1 * 0.04,
                              right: sw1 * 0.04,
                            ),
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: AppColors.appbarColor,
                                  blurRadius: 6,
                                  spreadRadius: 0.5,
                                ),
                              ],
                            ),
                            child: TextField(
                              controller: descriptionController,
                              maxLines: 6,
                              minLines: 2,
                              // minLines: 1,
                              textInputAction: TextInputAction.next,

                              onTap: () {
                                setState(() {});
                              },

                              keyboardType: TextInputType.emailAddress,
                              enableSuggestions: true,
                              style: const TextStyle(
                                color: AppColors.secondaryText,
                              ),
                              decoration: InputDecoration(
                                fillColor: AppColors.inputFieldBgColor,
                                filled: true,
                                labelText: 'Description',
                                hintText: "Write Something",
                                hintStyle: const TextStyle(
                                  color: AppColors.secondaryText,
                                ),
                                prefixIcon: const Icon(Icons.description),
                                prefixIconColor: AppColors.inputHintTextColor,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    color: AppColors.taskCardBorderColor,
                                    width: 1.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: const BorderSide(
                                    color: AppColors.taskCardBorderColor,
                                    width: 2.0,
                                  ),
                                ),
                                border: const OutlineInputBorder(),
                              ),
                            ),
                          ),

                          SizedBox(height: sh1 * 0.01),
                          Row(
                            children: [
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () async {
                                    DateTime? tempdate = await showDatePicker(
                                      context: context,
                                      firstDate: DateTime(1910),
                                      lastDate: DateTime(3000),
                                      initialDate: DateTime.now(),
                                    );

                                    if (tempdate != null) {
                                      selectedDate = tempdate;
                                      setUpdate(() {});
                                    }
                                  },
                                  label: Text(
                                    "${selectedDate.year}/${selectedDate.month}/${selectedDate.day}",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  icon: Icon(Icons.calendar_today),
                                ),
                              ),
                              SizedBox(width: sw1 * 0.04),
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () async {
                                    TimeOfDay? temptime = await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                    );

                                    if (temptime != null) {
                                      selectedTime = temptime;
                                      setUpdate(() {});
                                    }
                                  },
                                  label: Text(
                                    "${selectedTime.hour}:${selectedDate.minute}",
                                    style: TextStyle(fontSize: 10),
                                  ),
                                  icon: Icon(Icons.calendar_today),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: sh1 * 0.01),
                          SizedBox(
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                horizontal: sw1 * 0.06,
                              ),
                              width: double.infinity,
                              height: sh1 * 0.05,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.appbarColor,
                                ),
                                onPressed: () {
                                  String title = titleController.text;
                                  String description =
                                      descriptionController.text;
                                  if (title.isNotEmpty) {
                                    listTask.add(
                                      TaskModel(
                                        title: title,
                                        description: description.isNotEmpty
                                            ? description
                                            : null,
                                        datetime: DateTime(
                                          selectedDate.year,
                                          selectedDate.month,
                                          selectedDate.day,
                                          selectedTime.hour,
                                          selectedTime.minute,
                                        ),
                                      ),
                                    );
                                    Navigator.pop(context);
                                  }
                                  setState(() {});
                                },

                                child: Text(
                                  "ADD",
                                  style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          );
        },
        child: Icon(Icons.add, color: AppColors.fabIconColor),
      ),

      appBar: AppBar(
        actions: [
          IconButton(onPressed: convertTaskModelToString, icon: Icon(Icons.get_app,
          color: Colors.white,))
        ],
        backgroundColor: AppColors.appbarColor,
        title: Text(
          "DSTP-ToDo",
          style: GoogleFonts.playwriteArGuides(
            color: AppColors.primaryText,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: convertStringToTaskModel,
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.primaryBtnTextColor,
            size: 27,
          ),
        ),
      ),
      body: Container(
        color: AppColors.bgColor,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: listTask.length,
                itemBuilder: (context, index) {
                  var singleTask = listTask[index];
                  return Container(
                    margin: EdgeInsets.only(
                      top: sh1 * 0.02,
                      right: sw1 * 0.04,
                      left: sw1 * 0.04,
                      bottom: sh1 * 0.01,
                    ),
                    padding: EdgeInsets.only(
                      top: sh1 * 0.01,
                      bottom: sh1 * 0.01,
                      left: sw1 * 0.02,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.taskCardBgColor.withValues(alpha: 0.8),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.fabColor,
                          blurRadius: 3.0,
                          spreadRadius: 1.0,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      border: Border.all(color: Colors.blue.shade100),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          splashRadius: 4.0,
                          shape: CircleBorder(
                            side: BorderSide(
                              width: 2,
                              color: AppColors.appbarColor,
                            ),
                          ),
                          activeColor: Colors.greenAccent,
                          value: singleTask.isChecked,
                          onChanged: (isCheckedFlag) {
                            singleTask.isChecked = isCheckedFlag!;
                            setState(() {});
                          },
                        ),

                        CircleAvatar(
                          backgroundColor: AppColors.appbarColor,
                          radius: 30,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              "assets/images/profile1.jpg",
                            ),
                            backgroundColor: Colors.blueAccent,
                            radius: 26,
                          ),
                        ),
                        SizedBox(width: sw1 * 0.01),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                singleTask.title,
                                style: TextStyle(
                                  decoration: singleTask.isChecked
                                      ? TextDecoration.lineThrough
                                      : null,
                                  decorationColor: Colors.red,
                                  decorationThickness: 4,
                                  color: AppColors.primaryText,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if (singleTask.description != null) ...[
                                Text(
                                  singleTask.description!,
                                  style: TextStyle(
                                    color: AppColors.secondaryText,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ],

                              Text(
                                "${singleTask.taskDate!.day}/${singleTask.taskDate!.month}/${singleTask.taskDate!.year} (${singleTask.taskDate!.hour}:${singleTask.taskDate!.minute})",
                                style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
