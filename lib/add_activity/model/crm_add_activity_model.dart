// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:activity_app/all_activites/model/model.dart';
import 'package:flutter/foundation.dart';

class CrmAddActivityModel {
  String? activityId;

  String? activityDate;
  String? createByUserid;
  String? createByUserName;
  String? createByUserPicture;
  String? businessUnit;
  String? visitDate;
  String? startTime;
  String? endTime;
  String? customerName;
  String? customerId;
  String? customerArea;
  String? brandCode;
  List<String>? brandName;
  String? itemCode;
  List<String>? itemName;
  String? cardCode;
  String? cardName;
  List<String>? typeVisit;
  String? noteVisit;
  bool? closed;
  String? closedRemark;
  String? closeDate;
  bool? reminder;
  List<String>? activityWithUsers;
  List<ActivityLike>? activityLikes;
  List<ActivityComment>? activityComments;
  CrmAddActivityModel({
    this.activityId,
    this.activityDate,
    this.createByUserid,
    this.createByUserName,
    this.createByUserPicture,
    this.businessUnit,
    this.visitDate,
    this.startTime,
    this.endTime,
    this.customerName,
    this.customerId,
    this.customerArea,
    this.brandCode,
    this.brandName,
    this.itemCode,
    this.itemName,
    this.cardCode,
    this.cardName,
    this.typeVisit,
    this.noteVisit,
    this.closed,
    this.closedRemark,
    this.closeDate,
    this.reminder,
    this.activityWithUsers,
    this.activityLikes,
    this.activityComments,
  });

  CrmAddActivityModel copyWith({
    String? activityId,
    String? activityDate,
    String? createByUserid,
    String? createByUserName,
    String? createByUserPicture,
    String? businessUnit,
    String? visitDate,
    String? startTime,
    String? endTime,
    String? customerName,
    String? customerId,
    String? customerArea,
    String? brandCode,
    List<String>? brandName,
    String? itemCode,
    List<String>? itemName,
    String? cardCode,
    String? cardName,
    List<String>? typeVisit,
    String? noteVisit,
    bool? closed,
    String? closedRemark,
    String? closeDate,
    bool? reminder,
    List<String>? activityWithUsers,
    List<ActivityLike>? activityLikes,
    List<ActivityComment>? activityComments,
  }) {
    return CrmAddActivityModel(
      activityId: activityId ?? this.activityId,
      activityDate: activityDate ?? this.activityDate,
      createByUserid: createByUserid ?? this.createByUserid,
      createByUserName: createByUserName ?? this.createByUserName,
      createByUserPicture: createByUserPicture ?? this.createByUserPicture,
      businessUnit: businessUnit ?? this.businessUnit,
      visitDate: visitDate ?? this.visitDate,
      startTime: startTime ?? this.startTime,
      endTime: endTime ?? this.endTime,
      customerName: customerName ?? this.customerName,
      customerId: customerId ?? this.customerId,
      customerArea: customerArea ?? this.customerArea,
      brandCode: brandCode ?? this.brandCode,
      brandName: brandName ?? this.brandName,
      itemCode: itemCode ?? this.itemCode,
      itemName: itemName ?? this.itemName,
      cardCode: cardCode ?? this.cardCode,
      cardName: cardName ?? this.cardName,
      typeVisit: typeVisit ?? this.typeVisit,
      noteVisit: noteVisit ?? this.noteVisit,
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
      'activityDate': activityDate,
      'createByUserid': createByUserid,
      'createByUserName': createByUserName,
      'createByUserPicture': createByUserPicture,
      'businessUnit': businessUnit,
      'visitDate': visitDate,
      'startTime': startTime,
      'endTime': endTime,
      'customerName': customerName,
      'customerId': customerId,
      'customerArea': customerArea,
      'brandCode': brandCode,
      'brandName': brandName,
      'itemCode': itemCode,
      'itemName': itemName,
      'cardCode': cardCode,
      'cardName': cardName,
      'typeVisit': typeVisit,
      'noteVisit': noteVisit,
      'closed': closed,
      'closedRemark': closedRemark,
      'closeDate': closeDate,
      'reminder': reminder,
      'activityWithUsers': activityWithUsers,
      'activityLikes': activityLikes!.map((x) => x?.toMap()).toList(),
      'activityComments': activityComments!.map((x) => x?.toMap()).toList(),
    };
  }

  factory CrmAddActivityModel.fromMap(Map<String, dynamic> map) {
    return CrmAddActivityModel(
      activityId:
          map['activityId'] != null ? map['activityId'] as String : null,
      activityDate:
          map['activityDate'] != null ? map['activityDate'] as String : null,
      createByUserid: map['createByUserid'] != null
          ? map['createByUserid'] as String
          : null,
      createByUserName: map['createByUserName'] != null
          ? map['createByUserName'] as String
          : null,
      createByUserPicture: map['createByUserPicture'] != null
          ? map['createByUserPicture'] as String
          : null,
      businessUnit:
          map['businessUnit'] != null ? map['businessUnit'] as String : null,
      visitDate: map['visitDate'] != null ? map['visitDate'] as String : null,
      startTime: map['startTime'] != null ? map['startTime'] as String : null,
      endTime: map['endTime'] != null ? map['endTime'] as String : null,
      customerName:
          map['customerName'] != null ? map['customerName'] as String : null,
      customerId:
          map['customerId'] != null ? map['customerId'] as String : null,
      customerArea:
          map['customerArea'] != null ? map['customerArea'] as String : null,
      brandCode: map['brandCode'] != null ? map['brandCode'] as String : null,
      brandName: map['brandName'] ?? [],
      itemCode: map['itemCode'] != null ? map['itemCode'] as String : null,
      itemName: map['itemName'] ?? [],
      cardCode: map['cardCode'] != null ? map['cardCode'] as String : null,
      cardName: map['cardName'] != null ? map['cardName'] as String : null,
      typeVisit: map['typeVisit'] ?? [],
      noteVisit: map['noteVisit'] != null ? map['noteVisit'] as String : null,
      closed: map['closed'] != null ? map['closed'] as bool : null,
      closedRemark:
          map['closedRemark'] != null ? map['closedRemark'] as String : null,
      closeDate: map['closeDate'] != null ? map['closeDate'] as String : null,
      reminder: map['reminder'] != null ? map['reminder'] as bool : null,
      activityWithUsers: map['activityWithUsers'] ?? [],
      activityLikes: map['activityLikes'] != null
          ? List<ActivityLike>.from(
              (map['activityLikes'] as List<int>).map<ActivityLike?>(
                (x) => ActivityLike.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
      activityComments: map['activityComments'] != null
          ? List<ActivityComment>.from(
              (map['activityComments'] as List<int>).map<ActivityComment?>(
                (x) => ActivityComment.fromMap(x as Map<String, dynamic>),
              ),
            )
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory CrmAddActivityModel.fromJson(String source) =>
      CrmAddActivityModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CrmAddActivityModel(activityId: $activityId, activityDate: $activityDate, createByUserid: $createByUserid, createByUserName: $createByUserName, createByUserPicture: $createByUserPicture, businessUnit: $businessUnit, visitDate: $visitDate, startTime: $startTime, endTime: $endTime, customerName: $customerName, customerId: $customerId, customerArea: $customerArea, brandCode: $brandCode, brandName: $brandName, itemCode: $itemCode, itemName: $itemName, cardCode: $cardCode, cardName: $cardName, typeVisit: $typeVisit, noteVisit: $noteVisit, closed: $closed, closedRemark: $closedRemark, closeDate: $closeDate, reminder: $reminder, activityWithUsers: $activityWithUsers, activityLikes: $activityLikes, activityComments: $activityComments)';
  }

  @override
  bool operator ==(covariant CrmAddActivityModel other) {
    if (identical(this, other)) return true;

    return other.activityId == activityId &&
        other.activityDate == activityDate &&
        other.createByUserid == createByUserid &&
        other.createByUserName == createByUserName &&
        other.createByUserPicture == createByUserPicture &&
        other.businessUnit == businessUnit &&
        other.visitDate == visitDate &&
        other.startTime == startTime &&
        other.endTime == endTime &&
        other.customerName == customerName &&
        other.customerId == customerId &&
        other.customerArea == customerArea &&
        other.brandCode == brandCode &&
        listEquals(other.brandName, brandName) &&
        other.itemCode == itemCode &&
        listEquals(other.itemName, itemName) &&
        other.cardCode == cardCode &&
        other.cardName == cardName &&
        listEquals(other.typeVisit, typeVisit) &&
        other.noteVisit == noteVisit &&
        other.closed == closed &&
        other.closedRemark == closedRemark &&
        other.closeDate == closeDate &&
        other.reminder == reminder &&
        listEquals(other.activityWithUsers, activityWithUsers) &&
        listEquals(other.activityLikes, activityLikes) &&
        listEquals(other.activityComments, activityComments);
  }

  @override
  int get hashCode {
    return activityId.hashCode ^
        activityDate.hashCode ^
        createByUserid.hashCode ^
        createByUserName.hashCode ^
        createByUserPicture.hashCode ^
        businessUnit.hashCode ^
        visitDate.hashCode ^
        startTime.hashCode ^
        endTime.hashCode ^
        customerName.hashCode ^
        customerId.hashCode ^
        customerArea.hashCode ^
        brandCode.hashCode ^
        brandName.hashCode ^
        itemCode.hashCode ^
        itemName.hashCode ^
        cardCode.hashCode ^
        cardName.hashCode ^
        typeVisit.hashCode ^
        noteVisit.hashCode ^
        closed.hashCode ^
        closedRemark.hashCode ^
        closeDate.hashCode ^
        reminder.hashCode ^
        activityWithUsers.hashCode ^
        activityLikes.hashCode ^
        activityComments.hashCode;
  }
}
