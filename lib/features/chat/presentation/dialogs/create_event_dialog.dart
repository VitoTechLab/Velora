import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:velora/l10n/app_localizations.dart';

class CreateEventDialog extends StatefulWidget {
  const CreateEventDialog({super.key});

  static Future<Map<String, dynamic>?> show(BuildContext context) {
    return showDialog<Map<String, dynamic>>(
      context: context,
      builder: (context) => const CreateEventDialog(),
    );
  }

  @override
  State<CreateEventDialog> createState() => _CreateEventDialogState();
}

class _CreateEventDialogState extends State<CreateEventDialog> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _locationController = TextEditingController();
  final _addressController = TextEditingController();
  final _meetingUrlController = TextEditingController();

  bool _isOnline = false;

  DateTime _startDate = DateTime.now();
  TimeOfDay _startTime = TimeOfDay.now();
  DateTime _endDate = DateTime.now().add(const Duration(hours: 2));
  TimeOfDay _endTime = TimeOfDay(
    hour: (TimeOfDay.now().hour + 2) % 24,
    minute: TimeOfDay.now().minute,
  );

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _locationController.dispose();
    _addressController.dispose();
    _meetingUrlController.dispose();
    super.dispose();
  }

  Future<void> _selectStartDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _startDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() {
        _startDate = picked;
        if (_endDate.isBefore(_startDate)) {
          _endDate = _startDate.add(const Duration(hours: 2));
        }
      });
    }
  }

  Future<void> _selectStartTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _startTime,
    );
    if (picked != null) {
      setState(() {
        _startTime = picked;
      });
    }
  }

  Future<void> _selectEndDate() async {
    final picked = await showDatePicker(
      context: context,
      initialDate: _endDate,
      firstDate: _startDate,
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (picked != null) {
      setState(() {
        _endDate = picked;
      });
    }
  }

  Future<void> _selectEndTime() async {
    final picked = await showTimePicker(
      context: context,
      initialTime: _endTime,
    );
    if (picked != null) {
      setState(() {
        _endTime = picked;
      });
    }
  }

  void _createEvent() {
    final title = _titleController.text.trim();
    final description = _descriptionController.text.trim();
    final location = _locationController.text.trim();
    final address = _addressController.text.trim();
    final meetingUrl = _meetingUrlController.text.trim();
    final t = AppLocalizations.of(context)!;

    if (title.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.chatEventDialogTitleError)));
      return;
    }

    // Validate meeting URL for online events
    if (_isOnline && meetingUrl.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.chatEventDialogMeetingUrlError)),
      );
      return;
    }

    final startDateTime = DateTime(
      _startDate.year,
      _startDate.month,
      _startDate.day,
      _startTime.hour,
      _startTime.minute,
    );

    final endDateTime = DateTime(
      _endDate.year,
      _endDate.month,
      _endDate.day,
      _endTime.hour,
      _endTime.minute,
    );

    if (endDateTime.isBefore(startDateTime)) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(t.chatEventDialogEndTimeError)));
      return;
    }

    Navigator.pop(context, {
      'title': title,
      'description': description.isNotEmpty ? description : null,
      'location_name': location.isNotEmpty ? location : null,
      'address': address.isNotEmpty ? address : null,
      'is_online': _isOnline,
      'meeting_url': meetingUrl.isNotEmpty ? meetingUrl : null,
      'startDate': startDateTime.toIso8601String(),
      'endDate': endDateTime.toIso8601String(),
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final t = AppLocalizations.of(context)!;
    final dateFormat = DateFormat.yMMMd(t.localeName);

    return Dialog(
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 500),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colorScheme.primaryContainer,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(28),
                ),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.event_outlined,
                    color: colorScheme.onPrimaryContainer,
                    size: 28,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    t.chatEventDialogTitle,
                    style: textTheme.titleLarge?.copyWith(
                      color: colorScheme.onPrimaryContainer,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: Icon(
                      Icons.close,
                      color: colorScheme.onPrimaryContainer,
                    ),
                    onPressed: () => Navigator.pop(context),
                  ),
                ],
              ),
            ),
            // Content
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Title field
                    TextField(
                      controller: _titleController,
                      decoration: InputDecoration(
                        labelText: t.chatEventDialogTitleLabel,
                        hintText: t.chatEventDialogTitleHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: const Icon(Icons.title),
                      ),
                      textCapitalization: TextCapitalization.words,
                    ),
                    const SizedBox(height: 16),
                    // Description field
                    TextField(
                      controller: _descriptionController,
                      decoration: InputDecoration(
                        labelText: t.chatEventDialogDescriptionLabel,
                        hintText: t.chatEventDialogDescriptionHint,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: const Icon(Icons.description_outlined),
                      ),
                      maxLines: 3,
                      textCapitalization: TextCapitalization.sentences,
                    ),
                    const SizedBox(height: 20),
                    // Online event toggle
                    SwitchListTile(
                      value: _isOnline,
                      onChanged: (value) {
                        setState(() {
                          _isOnline = value;
                        });
                      },
                      title: Text(t.chatEventDialogOnlineLabel),
                      subtitle: Text(t.chatEventDialogOnlineHint),
                      secondary: Icon(
                        _isOnline ? Icons.videocam_outlined : Icons.place,
                      ),
                      contentPadding: EdgeInsets.zero,
                    ),
                    const SizedBox(height: 16),
                    // Location fields (for in-person events)
                    if (!_isOnline) ...[
                      // Location name field
                      TextField(
                        controller: _locationController,
                        decoration: InputDecoration(
                          labelText: t.chatEventDialogLocationLabel,
                          hintText: t.chatEventDialogLocationHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Icons.location_on_outlined),
                        ),
                        textCapitalization: TextCapitalization.words,
                      ),
                      const SizedBox(height: 12),
                      // Address field
                      TextField(
                        controller: _addressController,
                        decoration: InputDecoration(
                          labelText: t.chatEventDialogAddressLabel,
                          hintText: t.chatEventDialogAddressHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Icons.map_outlined),
                        ),
                        maxLines: 2,
                        textCapitalization: TextCapitalization.sentences,
                      ),
                    ],
                    // Meeting URL field (for online events)
                    if (_isOnline)
                      TextField(
                        controller: _meetingUrlController,
                        decoration: InputDecoration(
                          labelText: t.chatEventDialogMeetingUrlLabel,
                          hintText: t.chatEventDialogMeetingUrlHint,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          prefixIcon: const Icon(Icons.link),
                        ),
                        keyboardType: TextInputType.url,
                      ),
                    const SizedBox(height: 20),
                    // Start date & time
                    Text(
                      t.chatEventDialogStartLabel,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: OutlinedButton.icon(
                            onPressed: _selectStartDate,
                            icon: const Icon(Icons.calendar_today),
                            label: Text(dateFormat.format(_startDate)),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: _selectStartTime,
                            icon: const Icon(Icons.access_time),
                            label: Text(_startTime.format(context)),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // End date & time
                    Text(
                      t.chatEventDialogEndLabel,
                      style: textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: OutlinedButton.icon(
                            onPressed: _selectEndDate,
                            icon: const Icon(Icons.calendar_today),
                            label: Text(dateFormat.format(_endDate)),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: _selectEndTime,
                            icon: const Icon(Icons.access_time),
                            label: Text(_endTime.format(context)),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Footer
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: colorScheme.surfaceContainerHighest,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(28),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(t.commonCancel),
                  ),
                  const SizedBox(width: 12),
                  FilledButton.icon(
                    onPressed: _createEvent,
                    icon: const Icon(Icons.send),
                    label: Text(t.chatEventDialogSend),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
