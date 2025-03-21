import 'dart:convert';

class CRMModel {
  final String activityId;
  final String activitytype;
  final String subject;
  final String priority;
  final String activityDate;
  final String startDate;
  final String endDate;
  final String content;
  final String createByUserid;
  final String createByUserName;
  final String createByUserPicture;
  final String handledByUserId;
  final String handledByUserName;
  final String handledByUserPicture;
  final String contentPicture;
  final String cardCode;
  final String cardName;
  final String itemCode;
  final String itemName;
  final String brandCode;
  final String brandName;
  final String businessUnit;
  final String docNum;
  final String docType;
  final String docEntry;
  final String docCardName;
  final String docDate;
  final String docDueDate;
  final String docTotal;
  final bool closed;
  final String closedRemark;
  final String closeDate;
  final bool reminder;
  final List<ActivityWithUser> activityWithUsers;
  final List<ActivityLike> activityLikes;
  final List<ActivityComment> activityComments;
  CRMModel({
    required this.activityId,
    required this.activitytype,
    required this.subject,
    required this.priority,
    required this.activityDate,
    required this.startDate,
    required this.endDate,
    required this.content,
    required this.createByUserid,
    required this.createByUserName,
    required this.createByUserPicture,
    required this.handledByUserId,
    required this.handledByUserName,
    required this.handledByUserPicture,
    required this.contentPicture,
    required this.cardCode,
    required this.cardName,
    required this.itemCode,
    required this.itemName,
    required this.brandCode,
    required this.brandName,
    required this.businessUnit,
    required this.docNum,
    required this.docType,
    required this.docEntry,
    required this.docCardName,
    required this.docDate,
    required this.docDueDate,
    required this.docTotal,
    required this.closed,
    required this.closedRemark,
    required this.closeDate,
    required this.reminder,
    required this.activityWithUsers,
    required this.activityLikes,
    required this.activityComments,
  });

  CRMModel copyWith({
    String? activityId,
    String? activitytype,
    String? subject,
    String? priority,
    String? activityDate,
    String? startDate,
    String? endDate,
    String? content,
    String? createByUserid,
    String? createByUserName,
    String? createByUserPicture,
    String? handledByUserId,
    String? handledByUserName,
    String? handledByUserPicture,
    String? contentPicture,
    String? cardCode,
    String? cardName,
    String? itemCode,
    String? itemName,
    String? brandCode,
    String? brandName,
    String? businessUnit,
    String? docNum,
    String? docType,
    String? docEntry,
    String? docCardName,
    String? docDate,
    String? docDueDate,
    String? docTotal,
    bool? closed,
    String? closedRemark,
    String? closeDate,
    bool? reminder,
    List<ActivityWithUser>? activityWithUsers,
    List<ActivityLike>? activityLikes,
    List<ActivityComment>? activityComments,
  }) {
    return CRMModel(
      activityId: activityId ?? this.activityId,
      activitytype: activitytype ?? this.activitytype,
      subject: subject ?? this.subject,
      priority: priority ?? this.priority,
      activityDate: activityDate ?? this.activityDate,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      content: content ?? this.content,
      createByUserid: createByUserid ?? this.createByUserid,
      createByUserName: createByUserName ?? this.createByUserName,
      createByUserPicture: createByUserPicture ?? this.createByUserPicture,
      handledByUserId: handledByUserId ?? this.handledByUserId,
      handledByUserName: handledByUserName ?? this.handledByUserName,
      handledByUserPicture: handledByUserPicture ?? this.handledByUserPicture,
      contentPicture: contentPicture ?? this.contentPicture,
      cardCode: cardCode ?? this.cardCode,
      cardName: cardName ?? this.cardName,
      itemCode: itemCode ?? this.itemCode,
      itemName: itemName ?? this.itemName,
      brandCode: brandCode ?? this.brandCode,
      brandName: brandName ?? this.brandName,
      businessUnit: businessUnit ?? this.businessUnit,
      docNum: docNum ?? this.docNum,
      docType: docType ?? this.docType,
      docEntry: docEntry ?? this.docEntry,
      docCardName: docCardName ?? this.docCardName,
      docDate: docDate ?? this.docDate,
      docDueDate: docDueDate ?? this.docDueDate,
      docTotal: docTotal ?? this.docTotal,
      closed: closed ?? this.closed,
      closedRemark: closedRemark ?? this.closedRemark,
      closeDate: closeDate ?? this.closeDate,
      reminder: reminder ?? this.reminder,
      activityWithUsers: activityWithUsers ?? this.activityWithUsers,
      activityLikes: activityLikes ?? this.activityLikes,
      activityComments: activityComments ?? this.activityComments,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityId': activityId,
      'activitytype': activitytype,
      'subject': subject,
      'priority': priority,
      'activityDate': activityDate,
      'startDate': startDate,
      'endDate': endDate,
      'content': content,
      'createByUserid': createByUserid,
      'createByUserName': createByUserName,
      'createByUserPicture': createByUserPicture,
      'handledByUserId': handledByUserId,
      'handledByUserName': handledByUserName,
      'handledByUserPicture': handledByUserPicture,
      'contentPicture': contentPicture,
      'cardCode': cardCode,
      'cardName': cardName,
      'itemCode': itemCode,
      'itemName': itemName,
      'brandCode': brandCode,
      'brandName': brandName,
      'businessUnit': businessUnit,
      'docNum': docNum,
      'docType': docType,
      'docEntry': docEntry,
      'docCardName': docCardName,
      'docDate': docDate,
      'docDueDate': docDueDate,
      'docTotal': docTotal,
      'closed': closed,
      'closedRemark': closedRemark,
      'closeDate': closeDate,
      'reminder': reminder,
      'activityWithUsers': activityWithUsers.map((x) => x.toMap()).toList(),
      'activityLikes': activityLikes.map((x) => x.toMap()).toList(),
      'activityComments': activityComments.map((x) => x.toMap()).toList(),
    };
  }

  factory CRMModel.fromMap(Map<String, dynamic> map) {
    return CRMModel(
      activityId: map['activityId'] as String,
      activitytype: map['activitytype'] as String,
      subject: map['subject'] as String,
      priority: map['priority'] as String,
      activityDate: map['activityDate'] as String,
      startDate: map['startDate'] as String,
      endDate: map['endDate'] as String,
      content: map['content'] as String,
      createByUserid: map['createByUserid'] as String,
      createByUserName: map['createByUserName'] as String,
      createByUserPicture: map['createByUserPicture'] as String,
      handledByUserId: map['handledByUserId'] as String,
      handledByUserName: map['handledByUserName'] as String,
      handledByUserPicture: map['handledByUserPicture'] as String,
      contentPicture: map['contentPicture'] as String,
      cardCode: map['cardCode'] as String,
      cardName: map['cardName'] as String,
      itemCode: map['itemCode'] as String,
      itemName: map['itemName'] as String,
      brandCode: map['brandCode'] as String,
      brandName: map['brandName'] as String,
      businessUnit: map['businessUnit'] as String,
      docNum: map['docNum'] as String,
      docType: map['docType'] as String,
      docEntry: map['docEntry'] as String,
      docCardName: map['docCardName'] as String,
      docDate: map['docDate'] as String,
      docDueDate: map['docDueDate'] as String,
      docTotal: map['docTotal'] as String,
      closed: map['closed'] as bool,
      closedRemark: map['closedRemark'] as String,
      closeDate: map['closeDate'] as String,
      reminder: map['reminder'] as bool,
      activityWithUsers: List<ActivityWithUser>.from(
        (map['activityWithUsers'] as List<int>).map<ActivityWithUser>(
          (x) => ActivityWithUser.fromMap(x as Map<String, dynamic>),
        ),
      ),
      activityLikes: List<ActivityLike>.from(
        (map['activityLikes'] as List<int>).map<ActivityLike>(
          (x) => ActivityLike.fromMap(x as Map<String, dynamic>),
        ),
      ),
      activityComments: List<ActivityComment>.from(
        (map['activityComments'] as List<int>).map<ActivityComment>(
          (x) => ActivityComment.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory CRMModel.fromJson(String source) =>
      CRMModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CRMModel(activityId: $activityId, activitytype: $activitytype, subject: $subject, priority: $priority, activityDate: $activityDate, startDate: $startDate, endDate: $endDate, content: $content, createByUserid: $createByUserid, createByUserName: $createByUserName, createByUserPicture: $createByUserPicture, handledByUserId: $handledByUserId, handledByUserName: $handledByUserName, handledByUserPicture: $handledByUserPicture, contentPicture: $contentPicture, cardCode: $cardCode, cardName: $cardName, itemCode: $itemCode, itemName: $itemName, brandCode: $brandCode, brandName: $brandName, businessUnit: $businessUnit, docNum: $docNum, docType: $docType, docEntry: $docEntry, docCardName: $docCardName, docDate: $docDate, docDueDate: $docDueDate, docTotal: $docTotal, closed: $closed, closedRemark: $closedRemark, closeDate: $closeDate, reminder: $reminder, activityWithUsers: $activityWithUsers, activityLikes: $activityLikes, activityComments: $activityComments)';
  }
}

class ActivityWithUser {
  final String withUserId;
  final String withUserName;
  final String withUserPicture;
  final String withUserDateAdded;
  ActivityWithUser({
    required this.withUserId,
    required this.withUserName,
    required this.withUserPicture,
    required this.withUserDateAdded,
  });

  ActivityWithUser copyWith({
    String? withUserId,
    String? withUserName,
    String? withUserPicture,
    String? withUserDateAdded,
  }) {
    return ActivityWithUser(
      withUserId: withUserId ?? this.withUserId,
      withUserName: withUserName ?? this.withUserName,
      withUserPicture: withUserPicture ?? this.withUserPicture,
      withUserDateAdded: withUserDateAdded ?? this.withUserDateAdded,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'withUserId': withUserId,
      'withUserName': withUserName,
      'withUserPicture': withUserPicture,
      'withUserDateAdded': withUserDateAdded,
    };
  }

  factory ActivityWithUser.fromMap(Map<String, dynamic> map) {
    return ActivityWithUser(
      withUserId: map['withUserId'] as String,
      withUserName: map['withUserName'] as String,
      withUserPicture: map['withUserPicture'] as String,
      withUserDateAdded: map['withUserDateAdded'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityWithUser.fromJson(String source) =>
      ActivityWithUser.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ActivityWithUser(withUserId: $withUserId, withUserName: $withUserName, withUserPicture: $withUserPicture, withUserDateAdded: $withUserDateAdded)';
  }

  @override
  bool operator ==(covariant ActivityWithUser other) {
    if (identical(this, other)) return true;

    return other.withUserId == withUserId &&
        other.withUserName == withUserName &&
        other.withUserPicture == withUserPicture &&
        other.withUserDateAdded == withUserDateAdded;
  }

  @override
  int get hashCode {
    return withUserId.hashCode ^
        withUserName.hashCode ^
        withUserPicture.hashCode ^
        withUserDateAdded.hashCode;
  }
}

class ActivityLike {
  final String activityLikeId;
  final String activityLikeUserId;
  final String activityLikeUserName;
  final String activityLikeUserPicture;
  final String activityLikeDateAdded;
  ActivityLike({
    required this.activityLikeId,
    required this.activityLikeUserId,
    required this.activityLikeUserName,
    required this.activityLikeUserPicture,
    required this.activityLikeDateAdded,
  });

  ActivityLike copyWith({
    String? activityLikeId,
    String? activityLikeUserId,
    String? activityLikeUserName,
    String? activityLikeUserPicture,
    String? activityLikeDateAdded,
  }) {
    return ActivityLike(
      activityLikeId: activityLikeId ?? this.activityLikeId,
      activityLikeUserId: activityLikeUserId ?? this.activityLikeUserId,
      activityLikeUserName: activityLikeUserName ?? this.activityLikeUserName,
      activityLikeUserPicture:
          activityLikeUserPicture ?? this.activityLikeUserPicture,
      activityLikeDateAdded:
          activityLikeDateAdded ?? this.activityLikeDateAdded,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activityLikeId': activityLikeId,
      'activityLikeUserId': activityLikeUserId,
      'activityLikeUserName': activityLikeUserName,
      'activityLikeUserPicture': activityLikeUserPicture,
      'activityLikeDateAdded': activityLikeDateAdded,
    };
  }

  factory ActivityLike.fromMap(Map<String, dynamic> map) {
    return ActivityLike(
      activityLikeId: map['activityLikeId'] as String,
      activityLikeUserId: map['activityLikeUserId'] as String,
      activityLikeUserName: map['activityLikeUserName'] as String,
      activityLikeUserPicture: map['activityLikeUserPicture'] as String,
      activityLikeDateAdded: map['activityLikeDateAdded'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityLike.fromJson(String source) =>
      ActivityLike.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ActivityLike(activityLikeId: $activityLikeId, activityLikeUserId: $activityLikeUserId, activityLikeUserName: $activityLikeUserName, activityLikeUserPicture: $activityLikeUserPicture, activityLikeDateAdded: $activityLikeDateAdded)';
  }

  @override
  bool operator ==(covariant ActivityLike other) {
    if (identical(this, other)) return true;

    return other.activityLikeId == activityLikeId &&
        other.activityLikeUserId == activityLikeUserId &&
        other.activityLikeUserName == activityLikeUserName &&
        other.activityLikeUserPicture == activityLikeUserPicture &&
        other.activityLikeDateAdded == activityLikeDateAdded;
  }

  @override
  int get hashCode {
    return activityLikeId.hashCode ^
        activityLikeUserId.hashCode ^
        activityLikeUserName.hashCode ^
        activityLikeUserPicture.hashCode ^
        activityLikeDateAdded.hashCode;
  }
}

class ActivityComment {
  final String commentId;
  final String commentUserId;
  final String commentUserName;
  final String commentUserPicture;
  final String commentDateAdded;
  final List<CommentLike> commentLikes;
  ActivityComment({
    required this.commentId,
    required this.commentUserId,
    required this.commentUserName,
    required this.commentUserPicture,
    required this.commentDateAdded,
    required this.commentLikes,
  });

  ActivityComment copyWith({
    String? commentId,
    String? commentUserId,
    String? commentUserName,
    String? commentUserPicture,
    String? commentDateAdded,
    List<CommentLike>? commentLikes,
  }) {
    return ActivityComment(
      commentId: commentId ?? this.commentId,
      commentUserId: commentUserId ?? this.commentUserId,
      commentUserName: commentUserName ?? this.commentUserName,
      commentUserPicture: commentUserPicture ?? this.commentUserPicture,
      commentDateAdded: commentDateAdded ?? this.commentDateAdded,
      commentLikes: commentLikes ?? this.commentLikes,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commentId': commentId,
      'commentUserId': commentUserId,
      'commentUserName': commentUserName,
      'commentUserPicture': commentUserPicture,
      'commentDateAdded': commentDateAdded,
      'commentLikes': commentLikes.map((x) => x.toMap()).toList(),
    };
  }

  factory ActivityComment.fromMap(Map<String, dynamic> map) {
    return ActivityComment(
      commentId: map['commentId'] as String,
      commentUserId: map['commentUserId'] as String,
      commentUserName: map['commentUserName'] as String,
      commentUserPicture: map['commentUserPicture'] as String,
      commentDateAdded: map['commentDateAdded'] as String,
      commentLikes: List<CommentLike>.from(
        (map['commentLikes'] as List<int>).map<CommentLike>(
          (x) => CommentLike.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory ActivityComment.fromJson(String source) =>
      ActivityComment.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ActivityComment(commentId: $commentId, commentUserId: $commentUserId, commentUserName: $commentUserName, commentUserPicture: $commentUserPicture, commentDateAdded: $commentDateAdded, commentLikes: $commentLikes)';
  }
}

class CommentLike {
  final String commentLikeId;
  final String commentLikeUserId;
  final String commentLikeUserName;
  final String commentLikeUserPicture;
  final String commentLikeDateAdded;
  CommentLike({
    required this.commentLikeId,
    required this.commentLikeUserId,
    required this.commentLikeUserName,
    required this.commentLikeUserPicture,
    required this.commentLikeDateAdded,
  });

  CommentLike copyWith({
    String? commentLikeId,
    String? commentLikeUserId,
    String? commentLikeUserName,
    String? commentLikeUserPicture,
    String? commentLikeDateAdded,
  }) {
    return CommentLike(
      commentLikeId: commentLikeId ?? this.commentLikeId,
      commentLikeUserId: commentLikeUserId ?? this.commentLikeUserId,
      commentLikeUserName: commentLikeUserName ?? this.commentLikeUserName,
      commentLikeUserPicture:
          commentLikeUserPicture ?? this.commentLikeUserPicture,
      commentLikeDateAdded: commentLikeDateAdded ?? this.commentLikeDateAdded,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commentLikeId': commentLikeId,
      'commentLikeUserId': commentLikeUserId,
      'commentLikeUserName': commentLikeUserName,
      'commentLikeUserPicture': commentLikeUserPicture,
      'commentLikeDateAdded': commentLikeDateAdded,
    };
  }

  factory CommentLike.fromMap(Map<String, dynamic> map) {
    return CommentLike(
      commentLikeId: map['commentLikeId'] as String,
      commentLikeUserId: map['commentLikeUserId'] as String,
      commentLikeUserName: map['commentLikeUserName'] as String,
      commentLikeUserPicture: map['commentLikeUserPicture'] as String,
      commentLikeDateAdded: map['commentLikeDateAdded'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CommentLike.fromJson(String source) =>
      CommentLike.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CommentLike(commentLikeId: $commentLikeId, commentLikeUserId: $commentLikeUserId, commentLikeUserName: $commentLikeUserName, commentLikeUserPicture: $commentLikeUserPicture, commentLikeDateAdded: $commentLikeDateAdded)';
  }

  @override
  bool operator ==(covariant CommentLike other) {
    if (identical(this, other)) return true;

    return other.commentLikeId == commentLikeId &&
        other.commentLikeUserId == commentLikeUserId &&
        other.commentLikeUserName == commentLikeUserName &&
        other.commentLikeUserPicture == commentLikeUserPicture &&
        other.commentLikeDateAdded == commentLikeDateAdded;
  }

  @override
  int get hashCode {
    return commentLikeId.hashCode ^
        commentLikeUserId.hashCode ^
        commentLikeUserName.hashCode ^
        commentLikeUserPicture.hashCode ^
        commentLikeDateAdded.hashCode;
  }
}
