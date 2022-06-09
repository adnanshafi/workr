// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'job_proposal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JobProposal _$JobProposalFromJson(Map<String, dynamic> json) => JobProposal(
      timeCreated: DateTime.parse(json['timeCreated'] as String),
      storePath: json['storePath'] as String? ?? '',
      description: json['description'] as String? ?? '',
      creatorUid: json['creatorUid'] as String? ?? '',
      estimatedDuration: json['estimatedDuration'] as int? ?? 1,
      proposedHourlyRate: json['proposedHourlyRate'] as String? ?? '',
    );

Map<String, dynamic> _$JobProposalToJson(JobProposal instance) =>
    <String, dynamic>{
      'timeCreated': instance.timeCreated.toIso8601String(),
      'storePath': instance.storePath,
      'description': instance.description,
      'creatorUid': instance.creatorUid,
      'estimatedDuration': instance.estimatedDuration,
      'proposedHourlyRate': instance.proposedHourlyRate,
    };
