import 'package:client/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EmailScheduler extends StatefulWidget {
  @override
  _EmailSchedulerState createState() => _EmailSchedulerState();
}

class _EmailSchedulerState extends State<EmailScheduler> {
  TextEditingController _subjectController = TextEditingController();
  TextEditingController _messageController = TextEditingController();
  String selectedDateText = '';
  TimeOfDay? selectedTime;
  List<String> selectedUsers = [];
  bool selectAll = false;

  Future<void> _selectDateTime(BuildContext context) async {
    final DateTime? pickedDateTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );

    if (pickedDateTime != null) {
      final TimeOfDay? pickedTime = await showTimePicker(
        context: context,
        initialTime: TimeOfDay.now(),
      );

      if (pickedTime != null) {
        setState(() {
          selectedDateText = DateFormat.yMMMMd().add_jm().format(DateTime(
              pickedDateTime.year, pickedDateTime.month, pickedDateTime.day,
              pickedTime.hour, pickedTime.minute));
          selectedTime = pickedTime;
        });
      }
    }
  }

  Future<void> _selectUsers() async {
    final List<String>? selectedUsersResult = await showDialog<List<String>>(
      context: context,
      builder: (BuildContext context) {
        List<String> usersList = [
          'User 1',
          'User 2',
          'User 3',
          'User 4',
          'User 5',
        ];

        List<String> selectedUsers = [];

        return AlertDialog(
          title: const Text('Select Users'),
          content: SingleChildScrollView(
            child: Column(
              children: usersList.map((user) {
                bool isSelected = selectedUsers.contains(user) || selectAll;

                return ListTile(
                  title: Text(user),
                  trailing: isSelected
                      ? const Icon(Icons.check_circle, color: Colors.blue)
                      : const Icon(Icons.circle_outlined),
                  onTap: () {
                    setState(() {
                      if (isSelected) {
                        selectedUsers.remove(user);
                      } else {
                        selectedUsers.add(user);
                      }
                      selectAll = false; // Deselect "Select All" when individual users are tapped
                    });
                  },
                );
              }).toList(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, selectedUsers),
              child: const Text('Select'),
            ),
          ],
        );
      },
    );

    if (selectedUsersResult != null) {
      setState(() {
        selectedUsers = selectedUsersResult;
      });
    }
  }

  void selectAllUsers() {
    setState(() {
      selectAll = true;
      selectedUsers = [
        'User 1',
        'User 2',
        'User 3',
        'User 4',
        'User 5',
      ];
    });
  }

  @override
  void dispose() {
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  void sendEmail() {
    // You can implement the logic to send the email here
    final subject = _subjectController.text;
    final message = _messageController.text;

    final scheduledDateTime = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day,
      selectedTime!.hour,
      selectedTime!.minute,
    );

    // Print the details for demonstration purposes
    print('Subject: $subject');
    print('Message: $message');
    print('Scheduled DateTime: $scheduledDateTime');
    print('Selected Users: $selectedUsers');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.BackBlueColor,
        title: const Text('Email Scheduler'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _subjectController,
              decoration: const InputDecoration(
                labelText: 'Subject',
              ),
            ),
            TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                labelText: 'Message',
              ),
              maxLines: null,
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    selectedDateText,
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _selectDateTime(context),
                  child: const Text('Select Date & Time'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    'Selected Users: ${selectedUsers.length}',
                    style: const TextStyle(fontSize: 16.0),
                  ),
                ),
                TextButton(
                  onPressed: _selectUsers,
                  child: const Text('Select Users'),
                ),
                const SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: selectAllUsers,
                  child: const Text('Select All'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: sendEmail,
              child: const Text('Schedule Email'),
            ),
          ],
        ),
      ),
    );
  }
}
