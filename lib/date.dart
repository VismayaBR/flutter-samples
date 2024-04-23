
import 'package:flutter/material.dart';

class DatePickerButton extends StatefulWidget {
  @override
  _DatePickerButtonState createState() => _DatePickerButtonState();
}

class _DatePickerButtonState extends State<DatePickerButton> {
   var selectedTime;
  var selectedTime1;

  DateTime selectedDate = DateTime.now();
  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (picked != null) {
      // Handle the selected time as needed
      print("Selected time: ${picked.format(context)}");
      setState(() {
        selectedTime = picked;
      });
     
    }
  }
  Future<void> _selectTime1(BuildContext context) async {
    final TimeOfDay? picked1 = await showTimePicker(
      context: context,
      initialTime: selectedTime1 ?? TimeOfDay.now(),
    );

    if (picked1 != null) {
      // Handle the selected time as needed
      print("Selected time: ${picked1.format(context)}");
      setState(() {
        selectedTime1 = picked1;
      });
     
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            color: Color.fromARGB(255, 247, 238, 235),
            height: 200,
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('From : '),
                              Container(
                                  color: Color.fromARGB(255, 237, 229, 226),
                                width: 120,
                                child: InkWell(
                                  onTap: () => _selectTime(context),
                                  child: SizedBox(
                                    width: 100,
                                    child: TextFormField(
                                      controller: TextEditingController(
                                        text: selectedTime != null
                                            ? selectedTime!.format(context)
                                            : '',
                                      ),
                                      decoration: InputDecoration(
                                        // border: OutlineInputBorder(),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 6),
                                        suffixIcon: Icon(
                                          Icons.access_time,
                                          size: 17,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text('To : '),
                              Container(
                                color: Color.fromARGB(255, 237, 229, 226),
                                width: 120,
                                child: InkWell(
                                  onTap: () => _selectTime1(context),
                                  child: AbsorbPointer(
                                    child: TextFormField(
                                      controller: TextEditingController(
                                        text: selectedTime1 != null
                                            ? selectedTime1!.format(context)
                                            : '',
                                      ),
                                      decoration: InputDecoration(
                                        // border: OutlineInputBorder(),
                                        contentPadding:
                                            EdgeInsets.symmetric(vertical: 6),
                                        suffixIcon: Icon(
                                          Icons.access_time,
                                          size: 17,
                                          
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('Token : '),
                          ),
                          SizedBox(
                            width: 85,
                            child: TextFormField(
                              // controller: token,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.symmetric(vertical: 6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: InkWell(
                              onTap: () async {
                            
                              },
                              child: Container(
                               width: 80,
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Add Slots',
                                  
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Color.fromARGB(255, 223, 214, 212),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}