import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

class FilePickerDiagnistics extends StatefulWidget {
  final String? label; // made nullable
  final void Function(PlatformFile file) onFileSelected;

  const FilePickerDiagnistics({
    super.key,
    this.label, // now optional
    required this.onFileSelected,
  });

  @override
  _FilePickerDiagnisticsState createState() => _FilePickerDiagnisticsState();
}

class _FilePickerDiagnisticsState extends State<FilePickerDiagnistics> {
  PlatformFile? _selectedFile;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        _selectedFile = result.files.first;
      });
      widget.onFileSelected(_selectedFile!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) // only show label if provided
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              widget.label!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        InkWell(
          onTap: _pickFile,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                const Icon(Icons.attach_file, color: Colors.grey),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    _selectedFile?.name ?? "Upload Document",
                    style: TextStyle(
                      color: _selectedFile == null ? Colors.grey : Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
