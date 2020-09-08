import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkboxCallback;
  final Function longPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          fontSize: 18.0,
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      value: isChecked,
      activeColor: Colors.lightBlueAccent,
      onChanged: checkboxCallback,
    );
  }
}

// class TaskTile extends StatelessWidget {
//   final bool isChecked;
//   final String taskTitle;
//   final Function checkboxCallback;
//   final Function longpressCallback;

//   TaskTile(
//       {this.taskTitle,
//       this.isChecked,
//       this.checkboxCallback,
//       this.longpressCallback});

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       onLongPress: longpressCallback,
//       title: Text(
//         taskTitle,
//         style: TextStyle(
//             decoration: isChecked ? TextDecoration.lineThrough : null),
//       ),
//       trailing: Checkbox(
//         activeColor: Colors.lightBlueAccent,
//         value: isChecked,
//         onChanged: checkboxCallback, //toggleCheckboxState,
//       ),
//     );
//   }
// }
