import 'package:flutter/material.dart';
import '../model/user.dart';

class AddStartup extends StatefulWidget {
  final Function addStartup;
  AddStartup(this.addStartup);
  @override
  _AddStartupState createState() => _AddStartupState();
}

class _AddStartupState extends State<AddStartup> {
  final _nameController = TextEditingController();
  final _companyNameController = TextEditingController();
  final _companyWebsiteController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _locationController = TextEditingController();
  final _descriptionController = TextEditingController();
  // final _idController = TextEditingController();

  void _submitData() {
    if (_nameController.text.isEmpty ||
        _companyNameController.text.isEmpty ||
        _descriptionController.text.isEmpty) {
      return;
    }
    final enteredName = _nameController.text;
    final enteredCName = _companyNameController.text;
    final enteredDescription = _descriptionController.text;
    if (enteredName.isEmpty ||
        enteredCName.isEmpty ||
        enteredDescription.isEmpty) {
      return;
    }
    widget.addStartup(
      enteredName,
      enteredCName,
      _locationController.text,
      _companyWebsiteController.text,
      _emailController.text,
      _descriptionController.text,
      _phoneNumberController.text,


    );

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.only(
              top: 10,
              left: 10,
              right: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(labelText: "Name"),
                  controller: _nameController,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(labelText: "Company Name"),
                  controller: _companyNameController,
                  onSubmitted: (_) => _submitData,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(labelText: "Company Website"),
                  controller: _companyWebsiteController,
                  onSubmitted: (_) => _submitData,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(labelText: "Email"),
                  controller: _emailController,
                  onSubmitted: (_) => _submitData,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(labelText: "Phone Number"),
                  controller: _phoneNumberController,
                  onSubmitted: (_) => _submitData,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(labelText: "Location"),
                  controller: _locationController,
                  onSubmitted: (_) => _submitData,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                child: TextField(
                  decoration: InputDecoration(labelText: "Description"),
                  controller: _descriptionController,
                  onSubmitted: (_) => _submitData,
                ),
              ),
              RaisedButton(
                child: Text('Add Startup'),
                color: Theme.of(context).primaryColor,
                textColor: Theme.of(context).textTheme.button.color,
                onPressed: _submitData,
              )
            ],
          ),
        ),
      ),
    );
  }
}
