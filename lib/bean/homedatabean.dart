/**
 * json转Flutter实体类：https://javiercbk.github.io/json_to_dart/
 */
class HomeDataBean {
  String _msg;
  List<Notices> _notices;
  CurrentLesson _currentLesson;
  List<Indexbanner> _indexbanner;
  List<TeacherProfile> _teacherProfile;
  List<AboutMsb> _aboutMsb;
  Consultation _consultation;
  List<Indexicon> _indexicon;
  AdTwo _adTwo;
  String _noticemore;
  int _status;

  HomeDataBean(
      {String msg,
      List<Notices> notices,
      CurrentLesson currentLesson,
      List<Indexbanner> indexbanner,
      List<TeacherProfile> teacherProfile,
      List<AboutMsb> aboutMsb,
      Consultation consultation,
      List<Indexicon> indexicon,
      AdTwo adTwo,
      String noticemore,
      int status}) {
    this._msg = msg;
    this._notices = notices;
    this._currentLesson = currentLesson;
    this._indexbanner = indexbanner;
    this._teacherProfile = teacherProfile;
    this._aboutMsb = aboutMsb;
    this._consultation = consultation;
    this._indexicon = indexicon;
    this._adTwo = adTwo;
    this._noticemore = noticemore;
    this._status = status;
  }

  String get msg => _msg;

  set msg(String msg) => _msg = msg;

  List<Notices> get notices => _notices;

  set notices(List<Notices> notices) => _notices = notices;

  CurrentLesson get currentLesson => _currentLesson;

  set currentLesson(CurrentLesson currentLesson) =>
      _currentLesson = currentLesson;

  List<Indexbanner> get indexbanner => _indexbanner;

  set indexbanner(List<Indexbanner> indexbanner) => _indexbanner = indexbanner;

  List<TeacherProfile> get teacherProfile => _teacherProfile;

  set teacherProfile(List<TeacherProfile> teacherProfile) =>
      _teacherProfile = teacherProfile;

  List<AboutMsb> get aboutMsb => _aboutMsb;

  set aboutMsb(List<AboutMsb> aboutMsb) => _aboutMsb = aboutMsb;

  Consultation get consultation => _consultation;

  set consultation(Consultation consultation) => _consultation = consultation;

  List<Indexicon> get indexicon => _indexicon;

  set indexicon(List<Indexicon> indexicon) => _indexicon = indexicon;

  AdTwo get adTwo => _adTwo;

  set adTwo(AdTwo adTwo) => _adTwo = adTwo;

  String get noticemore => _noticemore;

  set noticemore(String noticemore) => _noticemore = noticemore;

  int get status => _status;

  set status(int status) => _status = status;

  HomeDataBean.fromJson(Map<String, dynamic> json) {
    _msg = json['msg'];
    if (json['notices'] != null) {
      _notices = new List<Notices>();
      json['notices'].forEach((v) {
        _notices.add(new Notices.fromJson(v));
      });
    }
    _currentLesson = json['currentLesson'] != null
        ? new CurrentLesson.fromJson(json['currentLesson'])
        : null;
    if (json['indexbanner'] != null) {
      _indexbanner = new List<Indexbanner>();
      json['indexbanner'].forEach((v) {
        _indexbanner.add(new Indexbanner.fromJson(v));
      });
    }
    if (json['teacherProfile'] != null) {
      _teacherProfile = new List<TeacherProfile>();
      json['teacherProfile'].forEach((v) {
        _teacherProfile.add(new TeacherProfile.fromJson(v));
      });
    }
    if (json['aboutMsb'] != null) {
      _aboutMsb = new List<AboutMsb>();
      json['aboutMsb'].forEach((v) {
        _aboutMsb.add(new AboutMsb.fromJson(v));
      });
    }
    _consultation = json['consultation'] != null
        ? new Consultation.fromJson(json['consultation'])
        : null;
    if (json['indexicon'] != null) {
      _indexicon = new List<Indexicon>();
      json['indexicon'].forEach((v) {
        _indexicon.add(new Indexicon.fromJson(v));
      });
    }
    _adTwo = json['adTwo'] != null ? new AdTwo.fromJson(json['adTwo']) : null;
    _noticemore = json['noticemore'];
    _status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this._msg;
    if (this._notices != null) {
      data['notices'] = this._notices.map((v) => v.toJson()).toList();
    }
    if (this._currentLesson != null) {
      data['currentLesson'] = this._currentLesson.toJson();
    }
    if (this._indexbanner != null) {
      data['indexbanner'] = this._indexbanner.map((v) => v.toJson()).toList();
    }
    if (this._teacherProfile != null) {
      data['teacherProfile'] =
          this._teacherProfile.map((v) => v.toJson()).toList();
    }
    if (this._aboutMsb != null) {
      data['aboutMsb'] = this._aboutMsb.map((v) => v.toJson()).toList();
    }
    if (this._consultation != null) {
      data['consultation'] = this._consultation.toJson();
    }
    if (this._indexicon != null) {
      data['indexicon'] = this._indexicon.map((v) => v.toJson()).toList();
    }
    if (this._adTwo != null) {
      data['adTwo'] = this._adTwo.toJson();
    }
    data['noticemore'] = this._noticemore;
    data['status'] = this._status;
    return data;
  }
}

class Notices {
  String _headImg;
  int _id;
  String _source;
  String _title;
  int _type;
  String _url;
  int _regtype;

  Notices(
      {String headImg,
      int id,
      String source,
      String title,
      int type,
      String url,
      int regtype}) {
    this._headImg = headImg;
    this._id = id;
    this._source = source;
    this._title = title;
    this._type = type;
    this._url = url;
    this._regtype = regtype;
  }

  String get headImg => _headImg;

  set headImg(String headImg) => _headImg = headImg;

  int get id => _id;

  set id(int id) => _id = id;

  String get source => _source;

  set source(String source) => _source = source;

  String get title => _title;

  set title(String title) => _title = title;

  int get type => _type;

  set type(int type) => _type = type;

  String get url => _url;

  set url(String url) => _url = url;

  int get regtype => _regtype;

  set regtype(int regtype) => _regtype = regtype;

  Notices.fromJson(Map<String, dynamic> json) {
    _headImg = json['headImg'];
    _id = json['id'];
    _source = json['source'];
    _title = json['title'];
    _type = json['type'];
    _url = json['url'];
    _regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headImg'] = this._headImg;
    data['id'] = this._id;
    data['source'] = this._source;
    data['title'] = this._title;
    data['type'] = this._type;
    data['url'] = this._url;
    data['regtype'] = this._regtype;
    return data;
  }
}

class CurrentLesson {
  String _week;
  String _teacherName;
  int _teacherId;
  String _mobile;
  int _lessonTimeId;
  int _istest;
  String _title;
  String _room;
  int _lessontype;
  int _lessonstatus;
  int _timelength;
  String _cover;
  int _uid;
  String _sTitle;
  int _datetime;
  String _hour;
  String _teacherhead;
  String _lessontime;
  int _id;
  int _cid;

  CurrentLesson(
      {String week,
      String teacherName,
      int teacherId,
      String mobile,
      int lessonTimeId,
      int istest,
      String title,
      String room,
      int lessontype,
      int lessonstatus,
      int timelength,
      String cover,
      int uid,
      String sTitle,
      int datetime,
      String hour,
      String teacherhead,
      String lessontime,
      int id,
      int cid}) {
    this._week = week;
    this._teacherName = teacherName;
    this._teacherId = teacherId;
    this._mobile = mobile;
    this._lessonTimeId = lessonTimeId;
    this._istest = istest;
    this._title = title;
    this._room = room;
    this._lessontype = lessontype;
    this._lessonstatus = lessonstatus;
    this._timelength = timelength;
    this._cover = cover;
    this._uid = uid;
    this._sTitle = sTitle;
    this._datetime = datetime;
    this._hour = hour;
    this._teacherhead = teacherhead;
    this._lessontime = lessontime;
    this._id = id;
    this._cid = cid;
  }

  String get week => _week;

  set week(String week) => _week = week;

  String get teacherName => _teacherName;

  set teacherName(String teacherName) => _teacherName = teacherName;

  int get teacherId => _teacherId;

  set teacherId(int teacherId) => _teacherId = teacherId;

  String get mobile => _mobile;

  set mobile(String mobile) => _mobile = mobile;

  int get lessonTimeId => _lessonTimeId;

  set lessonTimeId(int lessonTimeId) => _lessonTimeId = lessonTimeId;

  int get istest => _istest;

  set istest(int istest) => _istest = istest;

  String get title => _title;

  set title(String title) => _title = title;

  String get room => _room;

  set room(String room) => _room = room;

  int get lessontype => _lessontype;

  set lessontype(int lessontype) => _lessontype = lessontype;

  int get lessonstatus => _lessonstatus;

  set lessonstatus(int lessonstatus) => _lessonstatus = lessonstatus;

  int get timelength => _timelength;

  set timelength(int timelength) => _timelength = timelength;

  String get cover => _cover;

  set cover(String cover) => _cover = cover;

  int get uid => _uid;

  set uid(int uid) => _uid = uid;

  String get sTitle => _sTitle;

  set sTitle(String sTitle) => _sTitle = sTitle;

  int get datetime => _datetime;

  set datetime(int datetime) => _datetime = datetime;

  String get hour => _hour;

  set hour(String hour) => _hour = hour;

  String get teacherhead => _teacherhead;

  set teacherhead(String teacherhead) => _teacherhead = teacherhead;

  String get lessontime => _lessontime;

  set lessontime(String lessontime) => _lessontime = lessontime;

  int get id => _id;

  set id(int id) => _id = id;

  int get cid => _cid;

  set cid(int cid) => _cid = cid;

  CurrentLesson.fromJson(Map<String, dynamic> json) {
    _week = json['week'];
    _teacherName = json['teacherName'];
    _teacherId = json['teacher_id'];
    _mobile = json['mobile'];
    _lessonTimeId = json['lessonTimeId'];
    _istest = json['istest'];
    _title = json['title'];
    _room = json['room'];
    _lessontype = json['lessontype'];
    _lessonstatus = json['lessonstatus'];
    _timelength = json['timelength'];
    _cover = json['cover'];
    _uid = json['uid'];
    _sTitle = json['s_title'];
    _datetime = json['datetime'];
    _hour = json['hour'];
    _teacherhead = json['teacherhead'];
    _lessontime = json['lessontime'];
    _id = json['id'];
    _cid = json['cid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['week'] = this._week;
    data['teacherName'] = this._teacherName;
    data['teacher_id'] = this._teacherId;
    data['mobile'] = this._mobile;
    data['lessonTimeId'] = this._lessonTimeId;
    data['istest'] = this._istest;
    data['title'] = this._title;
    data['room'] = this._room;
    data['lessontype'] = this._lessontype;
    data['lessonstatus'] = this._lessonstatus;
    data['timelength'] = this._timelength;
    data['cover'] = this._cover;
    data['uid'] = this._uid;
    data['s_title'] = this._sTitle;
    data['datetime'] = this._datetime;
    data['hour'] = this._hour;
    data['teacherhead'] = this._teacherhead;
    data['lessontime'] = this._lessontime;
    data['id'] = this._id;
    data['cid'] = this._cid;
    return data;
  }
}

class Indexbanner {
  String _icon;
  int _type;
  String _title;
  String _url;
  int _regtype;

  Indexbanner({String icon, int type, String title, String url, int regtype}) {
    this._icon = icon;
    this._type = type;
    this._title = title;
    this._url = url;
    this._regtype = regtype;
  }

  String get icon => _icon;

  set icon(String icon) => _icon = icon;

  int get type => _type;

  set type(int type) => _type = type;

  String get title => _title;

  set title(String title) => _title = title;

  String get url => _url;

  set url(String url) => _url = url;

  int get regtype => _regtype;

  set regtype(int regtype) => _regtype = regtype;

  Indexbanner.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _type = json['type'];
    _title = json['title'];
    _url = json['url'];
    _regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['type'] = this._type;
    data['title'] = this._title;
    data['url'] = this._url;
    data['regtype'] = this._regtype;
    return data;
  }
}

class TeacherProfile {
  String _url;
  String _imgurl;
  String _title;
  String _subTitle;

  TeacherProfile({String url, String imgurl, String title, String subTitle}) {
    this._url = url;
    this._imgurl = imgurl;
    this._title = title;
    this._subTitle = subTitle;
  }

  String get url => _url;

  set url(String url) => _url = url;

  String get imgurl => _imgurl;

  set imgurl(String imgurl) => _imgurl = imgurl;

  String get title => _title;

  set title(String title) => _title = title;

  String get subTitle => _subTitle;

  set subTitle(String subTitle) => _subTitle = subTitle;

  TeacherProfile.fromJson(Map<String, dynamic> json) {
    _url = json['url'];
    _imgurl = json['imgurl'];
    _title = json['title'];
    _subTitle = json['subTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this._url;
    data['imgurl'] = this._imgurl;
    data['title'] = this._title;
    data['subTitle'] = this._subTitle;
    return data;
  }
}

class AboutMsb {
  String _url;
  String _imgurl;
  String _title;
  String _subTitle;

  AboutMsb({String url, String imgurl, String title, String subTitle}) {
    this._url = url;
    this._imgurl = imgurl;
    this._title = title;
    this._subTitle = subTitle;
  }

  String get url => _url;

  set url(String url) => _url = url;

  String get imgurl => _imgurl;

  set imgurl(String imgurl) => _imgurl = imgurl;

  String get title => _title;

  set title(String title) => _title = title;

  String get subTitle => _subTitle;

  set subTitle(String subTitle) => _subTitle = subTitle;

  AboutMsb.fromJson(Map<String, dynamic> json) {
    _url = json['url'];
    _imgurl = json['imgurl'];
    _title = json['title'];
    _subTitle = json['subTitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this._url;
    data['imgurl'] = this._imgurl;
    data['title'] = this._title;
    data['subTitle'] = this._subTitle;
    return data;
  }
}

class Consultation {
  String _icon;
  int _type;
  String _title;
  String _url;
  int _regtype;

  Consultation({String icon, int type, String title, String url, int regtype}) {
    this._icon = icon;
    this._type = type;
    this._title = title;
    this._url = url;
    this._regtype = regtype;
  }

  String get icon => _icon;

  set icon(String icon) => _icon = icon;

  int get type => _type;

  set type(int type) => _type = type;

  String get title => _title;

  set title(String title) => _title = title;

  String get url => _url;

  set url(String url) => _url = url;

  int get regtype => _regtype;

  set regtype(int regtype) => _regtype = regtype;

  Consultation.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _type = json['type'];
    _title = json['title'];
    _url = json['url'];
    _regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['type'] = this._type;
    data['title'] = this._title;
    data['url'] = this._url;
    data['regtype'] = this._regtype;
    return data;
  }
}

class Indexicon {
  String _icon;
  int _type;
  String _title;
  String _url;
  int _order;
  int _regtype;

  Indexicon(
      {String icon,
      int type,
      String title,
      String url,
      int order,
      int regtype}) {
    this._icon = icon;
    this._type = type;
    this._title = title;
    this._url = url;
    this._order = order;
    this._regtype = regtype;
  }

  String get icon => _icon;

  set icon(String icon) => _icon = icon;

  int get type => _type;

  set type(int type) => _type = type;

  String get title => _title;

  set title(String title) => _title = title;

  String get url => _url;

  set url(String url) => _url = url;

  int get order => _order;

  set order(int order) => _order = order;

  int get regtype => _regtype;

  set regtype(int regtype) => _regtype = regtype;

  Indexicon.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _type = json['type'];
    _title = json['title'];
    _url = json['url'];
    _order = json['order'];
    _regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['type'] = this._type;
    data['title'] = this._title;
    data['url'] = this._url;
    data['order'] = this._order;
    data['regtype'] = this._regtype;
    return data;
  }
}

class AdTwo {
  String _icon;
  String _title;
  int _type;
  String _url;

  AdTwo({String icon, String title, int type, String url}) {
    this._icon = icon;
    this._title = title;
    this._type = type;
    this._url = url;
  }

  String get icon => _icon;

  set icon(String icon) => _icon = icon;

  String get title => _title;

  set title(String title) => _title = title;

  int get type => _type;

  set type(int type) => _type = type;

  String get url => _url;

  set url(String url) => _url = url;

  AdTwo.fromJson(Map<String, dynamic> json) {
    _icon = json['icon'];
    _title = json['title'];
    _type = json['type'];
    _url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this._icon;
    data['title'] = this._title;
    data['type'] = this._type;
    data['url'] = this._url;
    return data;
  }
}
