class Chats{
  String? _profilePicPath;
  String? _userName;
  String? _message;
  String? _time;
  Chats(this._profilePicPath, this._userName, this._message, this._time);
  getProfilePic(){
    return this._profilePicPath;
  }
  getUserName(){
    return this._userName;
  }
  getMessage(){
    return this._message;
  }
  getTime(){
    return this._time;
  }
}