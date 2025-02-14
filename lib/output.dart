class Web3AuthResponse {
  final String? privKey;
  final String? ed25519PrivKey;
  final String? sessionId;
  final TorusUserInfo? userInfo;
  final String? error;

  Web3AuthResponse(
      {this.privKey,
      this.userInfo,
      this.error,
      this.ed25519PrivKey,
      this.sessionId});

  @override
  String toString() {
    return "{privKey=$privKey, userInfo = ${userInfo.toString()}, ed25519PrivKey=$ed25519PrivKey, sessionId=$sessionId, error=$error}";
  }

  Map<String, dynamic> toJson() {
    return {
      'privKey': privKey,
      'userInfo': userInfo?.toJson(),
      'ed25519PrivKey': ed25519PrivKey,
      'sessionId': sessionId,
      'error': error
    };
  }

  Web3AuthResponse.fromJson(Map<String, dynamic> json)
      : privKey = json['privKey'],
        userInfo = json['userInfo'] != null
            ? TorusUserInfo.fromJson(json['userInfo'])
            : null,
        ed25519PrivKey = json['ed25519PrivKey'],
        sessionId = json['sessionId'],
        error = json['error'];
}

class TorusUserInfo {
  final String? email;
  final String? name;
  final String? profileImage;
  final String? verifier;
  final String? verifierId;
  final String? typeOfLogin;
  final String? aggregateVerifier;
  final String? dappShare;
  final String? idToken;
  final String? oAuthIdToken;
  final String? oAuthAccessToken;

  const TorusUserInfo({
    this.email,
    this.name,
    this.profileImage,
    this.verifier,
    this.verifierId,
    this.typeOfLogin,
    this.aggregateVerifier,
    this.dappShare,
    this.idToken,
    this.oAuthIdToken,
    this.oAuthAccessToken,
  });

  @override
  String toString() {
    return "{email=$email, name=$name, profileImage=$profileImage, verifier=$verifier,"
        "verifierId=$verifierId, typeOfLogin=$typeOfLogin, dappShare=$dappShare, idToken=$idToken, oAuthIdToken=$oAuthIdToken, oAuthAccessToken=$oAuthAccessToken}";
  }

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'name': name,
      'profileImage': profileImage,
      'verifier': verifier,
      'verifierId': verifierId,
      'typeOfLogin': typeOfLogin,
      'aggregateVerifier': aggregateVerifier,
      'dappShare': dappShare,
      'idToken': idToken,
      'oAuthIdToken': oAuthIdToken,
      'oAuthAccessToken': oAuthAccessToken
    };
  }

  TorusUserInfo.fromJson(Map<String, dynamic> json)
      : email = json['email'],
        name = json['name'],
        profileImage = json['profileImage'],
        verifier = json['verifier'],
        verifierId = json['verifierId'],
        typeOfLogin = json['typeOfLogin'],
        aggregateVerifier = json['aggregateVerifier'],
        dappShare = json['dappShare'],
        idToken = json['idToken'],
        oAuthIdToken = json['oAuthIdToken'],
        oAuthAccessToken = json['oAuthAccessToken'];
}
