import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:velora/features/campaign/domain/entities/campaign_entity.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_bloc.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_event.dart';
import 'package:velora/features/campaign/presentation/bloc/campaign_state.dart';

/// Campaign Bank Settings Screen
///
/// Allows campaign creators to specificy bank details for withdrawals.
/// These details are required before requesting a withdrawal.
class CampaignBankSettingsScreen extends HookWidget {
  const CampaignBankSettingsScreen({
    super.key,
    required this.campaignId,
  });

  final String campaignId;

  // Indonesian bank options
  static const _bankOptions = [
    'BCA',
    'Mandiri',
    'BNI',
    'BRI',
    'CIMB Niaga',
    'BSI',
    'Permata',
    'Danamon',
    'Jenius (BTPN)',
    'Jago',
    'SeaBank',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Load campaign details on init
    useEffect(() {
      context.read<CampaignBloc>().add(
            CampaignEvent.getCampaignDetail(campaignId: campaignId),
          );
      return null;
    }, [campaignId]);

    // Form controllers
    final bankNameController = useTextEditingController();
    final accountNumberController = useTextEditingController();
    final accountHolderController = useTextEditingController();
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final isInitialized = useState(false);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: const Text('Withdrawal Settings'),
        backgroundColor: colorScheme.surface,
      ),
      body: BlocConsumer<CampaignBloc, CampaignState>(
        listenWhen: (prev, curr) =>
            prev.isUpdatingBankDetails != curr.isUpdatingBankDetails ||
            prev.message != curr.message ||
            prev.errorBankDetails != curr.errorBankDetails,
        listener: (context, state) {
          if (!state.isUpdatingBankDetails) {
            if (state.message != null && state.message!.contains('Saved')) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message!),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pop(context); // Go back after save
            } else if (state.errorBankDetails != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errorBankDetails!),
                  backgroundColor: colorScheme.error,
                ),
              );
            }
            context.read<CampaignBloc>().add(const CampaignEvent.clearTransient());
          }
        },
        builder: (context, state) {
          // Find campaign
          final campaign = state.userCampaigns.cast<CampaignEntity?>().firstWhere(
                (c) => c?.id == campaignId,
                orElse: () => state.selectedCampaign,
              );

          if (campaign == null) {
            return const Center(child: CircularProgressIndicator());
          }

          // Pre-fill form once
          if (!isInitialized.value) {
            bankNameController.text = campaign.withdrawalBankName ?? '';
            accountNumberController.text = campaign.withdrawalAccountNumber ?? '';
            accountHolderController.text = campaign.withdrawalAccountHolder ?? '';
            isInitialized.value = true;
          }

          return SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _InfoBox(
                    colorScheme: colorScheme,
                    theme: theme,
                    text:
                        'These bank details will be used for all future withdrawals from this campaign.',
                  ),
                  const SizedBox(height: 24),

                  // Bank Name Dropdown/Field
                  Text(
                    'Bank Name',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  DropdownButtonFormField<String>(
                    value: _bankOptions.contains(bankNameController.text)
                        ? bankNameController.text
                        : null,
                    decoration: InputDecoration(
                      hintText: 'Select Bank',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.account_balance),
                    ),
                    items: _bankOptions.map((bank) {
                      return DropdownMenuItem(value: bank, child: Text(bank));
                    }).toList(),
                    onChanged: (value) {
                      if (value != null) {
                        bankNameController.text = value;
                      }
                    },
                    validator: (value) {
                      if (bankNameController.text.isEmpty) {
                        return 'Please select a bank';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Account Number
                  Text(
                    'Account Number',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: accountNumberController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'e.g. 1234567890',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.numbers),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),

                  // Account Holder
                  Text(
                    'Account Holder Name',
                    style: theme.textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: accountHolderController,
                    textCapitalization: TextCapitalization.characters,
                    decoration: InputDecoration(
                      hintText: 'Name as registered in bank',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      prefixIcon: const Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 32),

                  // Save Button
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: FilledButton(
                      onPressed: state.isUpdatingBankDetails
                          ? null
                          : () {
                              if (formKey.currentState!.validate()) {
                                context.read<CampaignBloc>().add(
                                      CampaignEvent.updateCampaignBankDetails(
                                        campaignId: campaignId,
                                        bankName: bankNameController.text,
                                        accountNumber:
                                            accountNumberController.text,
                                        accountHolder:
                                            accountHolderController.text,
                                      ),
                                    );
                              }
                            },
                      style: FilledButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: state.isUpdatingBankDetails
                          ? const SizedBox(
                              width: 24,
                              height: 24,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Save Bank Details',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _InfoBox extends StatelessWidget {
  const _InfoBox({
    required this.colorScheme,
    required this.theme,
    required this.text,
  });

  final ColorScheme colorScheme;
  final ThemeData theme;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.secondaryContainer.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: colorScheme.secondaryContainer,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.info_outline,
            color: colorScheme.onSecondaryContainer,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSecondaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
