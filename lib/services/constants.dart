class Constant {
  static String prodTokenEndpoint =
      "https://peckish-videoconf-1115.app.100ms.live/hmsapi/get-token";
  static String qaTokenEndPoint = "https://peckish-videoconf-1115.app.100ms.live/hmsapi/get-token";
  static String tokenQuery = "api/token";
  static String defaultRoomID =
      "https://peckish-videoconf-1115.app.100ms.live/meeting/ncn-bgaf-wos";
  static String tokenKey = "token";
  static String idKey = "id";
  
  static String roomIDKey = "roomID";
  static String hostKey = "host";
  static String defaultRole = 'host';
  static String meetingUrl = defaultRoomID;
  static String meetingCode = "ncn-bgaf-wos";
  static String rtmpUrl = "";

  // Additional fields
  static String appId = "peckish-videoconf-1115";
  static String audioMuteType = "AUDIO_MUTE";
  static String videoMuteType = "VIDEO_MUTE";
  static String defaultAudioState = "AUDIO_ON";
  static String defaultVideoState = "VIDEO_ON";
  static String participantKey = "participant";
  static String messageKey = "message";
  static String senderNameKey = "senderName";
  static String timeKey = "time";
  static String errorKey = "error";
  static String pinnedMessageTypeKey = "PINNED_MESSAGE";
  static String regularMessageTypeKey = "REGULAR_MESSAGE";

  // RTMP streaming related constants
  static String rtmpStreamingStarted = "RTMP_STREAMING_STARTED";
  static String rtmpStreamingStopped = "RTMP_STREAMING_STOPPED";

  // Recording related constants
  static String recordingStarted = "RECORDING_STARTED";
  static String recordingStopped = "RECORDING_STOPPED";

  // Peer related constants
  static String peerJoined = "PEER_JOINED";
  static String peerLeft = "PEER_LEFT";

  // Track related constants
  static String trackAdded = "TRACK_ADDED";
  static String trackRemoved = "TRACK_REMOVED";
  static String trackMuted = "TRACK_MUTED";
  static String trackUnmuted = "TRACK_UNMUTED";

  // Role related constants
  static String roleChanged = "ROLE_CHANGED";
}