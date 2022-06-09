import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
import '../../models.dart';

part 'job_proposal.g.dart';

/// [JobProposal] : Model for a Job Proposal
/// User creates a job proposal to which workers can bid on

@JsonSerializable()
class JobProposal extends Equatable {
  JobProposal({
    required this.timeCreated,
    this.storePath = '',
    this.description = '',
    this.creatorUid = '',
    this.estimatedDuration = 1,
    this.proposedHourlyRate = '',
    this.category = Category.empty,
  });

  /// [timeCreated] : time on which the job was created
  final DateTime timeCreated;

  /// [storePath] : path of the job item in store
  final String storePath;

  /// [description] : description of job
  final String description;

  /// [creatorUid] : uid of the job creator
  final String creatorUid;

  /// [estimatedDuration] : estimated Job duration in hours
  final int estimatedDuration;

  /// [proposedHourlyRate] : String : proposed hourly rate
  final String proposedHourlyRate;

  /// [category] : expected category this job falls in
  final Category category;

  @override
  List<Object?> get props => [
        timeCreated,
        storePath,
        description,
        creatorUid,
        estimatedDuration,
        proposedHourlyRate
      ];

  Map<String, dynamic> toJson() => _$JobProposalToJson(this);
  factory JobProposal.fromJson(Map<String, dynamic> json) =>
      _$JobProposalFromJson(json);
}
