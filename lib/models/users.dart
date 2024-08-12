class Users {
/*
{
  "id": 19,
  "name": "eso",
  "email": "eslam@gmail.com",
  "email_verified_at": null,
  "two_factor_confirmed_at": null,
  "current_team_id": null,
  "profile_photo_path": null,
  "created_at": "2024-07-05T15:54:15.000000Z",
  "updated_at": "2024-07-05T15:54:15.000000Z",
  "profile_photo_url": "https://ui-avatars.com/api/?name=e&color=7F9CF5&background=EBF4FF"
}
*/

  int? id;
  String? name;
  String? email;
  String? emailVerifiedAt;
  String? twoFactorConfirmedAt;
  String? currentTeamId;
  String? profilePhotoPath;
  String? createdAt;
  String? updatedAt;
  String? profilePhotoUrl;

  Users({
    this.id,
    this.name,
    this.email,
    this.emailVerifiedAt,
    this.twoFactorConfirmedAt,
    this.currentTeamId,
    this.profilePhotoPath,
    this.createdAt,
    this.updatedAt,
    this.profilePhotoUrl,
  });
  Users.fromJson(Map<String, dynamic> json) {
    id = int.tryParse(json['id']?.toString() ?? '');
    name = json['name']?.toString();
    email = json['email']?.toString();
    emailVerifiedAt = json['email_verified_at']?.toString();
    twoFactorConfirmedAt = json['two_factor_confirmed_at']?.toString();
    currentTeamId = json['current_team_id']?.toString();
    profilePhotoPath = json['profile_photo_path']?.toString();
    createdAt = json['created_at']?.toString();
    updatedAt = json['updated_at']?.toString();
    profilePhotoUrl = json['profile_photo_url']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['email_verified_at'] = emailVerifiedAt;
    data['two_factor_confirmed_at'] = twoFactorConfirmedAt;
    data['current_team_id'] = currentTeamId;
    data['profile_photo_path'] = profilePhotoPath;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['profile_photo_url'] = profilePhotoUrl;
    return data;
  }

}