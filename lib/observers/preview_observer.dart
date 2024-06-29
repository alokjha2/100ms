// import 'package:demo_app_with_100ms_and_bloc/bloc/preview/preview_cubit.dart';
// import 'package:demo_app_with_100ms_and_bloc/services/RoomService.dart';
import 'package:flutter/foundation.dart';
import 'package:hmssdk_flutter/hmssdk_flutter.dart';
import 'package:videocalling/blocs/preview/preview_cubit.dart';
import 'package:videocalling/services/room_service.dart';

class PreviewObserver implements HMSPreviewListener {
  PreviewCubit previewCubit;

  List<HMSVideoTrack> localTracks = <HMSVideoTrack>[];

  PreviewObserver(this.previewCubit) {
    previewCubit.hmsSdk.addPreviewListener(listener: this);

    previewCubit.hmsSdk.build();
    // RoomService()
    //     .getToken(user: previewCubit.name, room: previewCubit.url)
    //     .then((token) {
      // if (token == null) return;
      // if (token[0] == null) return;

      HMSConfig config = HMSConfig(
        // authToken: token[0]!,
        // authToken: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NjdjZmM4MjU1ZjJlZDMyYzQzNTc4M2IiLCJyb2xlIjoiaG9zdCIsInJvb21faWQiOiI2NjdjZmM4YzE3Y2U1YzE3NTIyMTIwMTUiLCJ1c2VyX2lkIjoiZjNiNGI0MGMtYWYyOS00NDRhLTgxMTktNmU5ZGExYjFhOWJlIiwiZXhwIjoxNzE5NTU5OTY2LCJqdGkiOiIzYmQ4NmM0OC04NWRkLTRiOTctODQ1OS00ZDNiOTU5ZWY0OTAiLCJpYXQiOjE3MTk0NzM1NjYsImlzcyI6IjY2N2NmYzgyNTVmMmVkMzJjNDM1NzgzOSIsIm5iZiI6MTcxOTQ3MzU2Niwic3ViIjoiYXBpIn0.ssms2eqTwCIRrW_S2OcpFhQDhhsM6Dip6_rIt53UyPE",
        
        authToken : "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ2ZXJzaW9uIjoyLCJ0eXBlIjoiYXBwIiwiYXBwX2RhdGEiOm51bGwsImFjY2Vzc19rZXkiOiI2NjdjZmM4MjU1ZjJlZDMyYzQzNTc4M2IiLCJyb2xlIjoiaG9zdCIsInJvb21faWQiOiI2NjdjZmM4YzE3Y2U1YzE3NTIyMTIwMTUiLCJ1c2VyX2lkIjoiZDE0YjZiMmUtNTA4Ny00ZWJmLWFjYTAtYjJlZDI0ZTU1ZmY0IiwiZXhwIjoxNzE5Nzc4ODUyLCJqdGkiOiJlZGVmZDdhOC1kYjc5LTQ1NTYtODJkNS1lZDc1MmQ0MzI2NmIiLCJpYXQiOjE3MTk2OTI0NTIsImlzcyI6IjY2N2NmYzgyNTVmMmVkMzJjNDM1NzgzOSIsIm5iZiI6MTcxOTY5MjQ1Miwic3ViIjoiYXBpIn0.EwVNN5MTBdKrMCj7cgNAfLxJL-ctZqWaNRNy6C069dI",
        userName: previewCubit.name,
      );

      previewCubit.hmsSdk.preview(config: config);
    // });
  }

  @override
  void onPeerUpdate({required HMSPeer peer, required HMSPeerUpdate update}) {
    // TODO: implement onPeerUpdate
  }

  @override
  void onPreview({required HMSRoom room, required List<HMSTrack> localTracks}) {
    List<HMSVideoTrack> videoTracks = [];
    for (var track in localTracks) {
      if (track.kind == HMSTrackKind.kHMSTrackKindVideo) {
        videoTracks.add(track as HMSVideoTrack);
      }
    }
    this.localTracks.clear();
    this.localTracks.addAll(videoTracks);
    previewCubit.updateTracks(this.localTracks);
  }

  @override
  void onRoomUpdate({required HMSRoom room, required HMSRoomUpdate update}) {
    // TODO: implement onRoomUpdate
  }

  @override
  void onHMSError({required HMSException error}) {
    if (kDebugMode) {
      print("OnError ${error.message}");
    }
  }

  @override
  void onAudioDeviceChanged(
      {HMSAudioDevice? currentAudioDevice,
      List<HMSAudioDevice>? availableAudioDevice}) {
    // TODO: implement onAudioDeviceChanged
  }
  
  @override
  void onPeerListUpdate({required List<HMSPeer> addedPeers, required List<HMSPeer> removedPeers}) {
    // TODO: implement onPeerListUpdate
  }
}