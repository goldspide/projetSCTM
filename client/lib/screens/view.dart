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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Email Scheduler'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _subjectController,
              decoration: InputDecoration(
                labelText: 'Subject',
              ),
            ),
            TextField(
              controller: _messageController,
              decoration: InputDecoration(
                labelText: 'Message',
              ),
              maxLines: null,
            ),
            SizedBox(height: 16.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    selectedDateText,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => _selectDateTime(context),
                  child: Text('Select Date & Time'),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: sendEmail,
              child: Text('Schedule Email'),
            ),
          ],
        ),
      ),
    );
  }
}

