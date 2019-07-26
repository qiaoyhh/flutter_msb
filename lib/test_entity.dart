class TestEntity {
  String msg;
  List<TestNotice> notices;
  List<TestIndexbanner> indexbanner;
  TestAd ad;
  List<TestTeacherprofile> teacherProfile;
  List<TestAboutmsb> aboutMsb;
  TestConsultation consultation;
  List<TestIndexicon> indexicon;
  String noticemore;
  int status;

  TestEntity(
      {this.msg,
      this.notices,
      this.indexbanner,
      this.ad,
      this.teacherProfile,
      this.aboutMsb,
      this.consultation,
      this.indexicon,
      this.noticemore,
      this.status});

  TestEntity.fromJson(Map<String, dynamic> json) {
    msg = json['msg'];
    if (json['notices'] != null) {
      notices = new List<TestNotice>();
      (json['notices'] as List).forEach((v) {
        notices.add(new TestNotice.fromJson(v));
      });
    }
    if (json['indexbanner'] != null) {
      indexbanner = new List<TestIndexbanner>();
      (json['indexbanner'] as List).forEach((v) {
        indexbanner.add(new TestIndexbanner.fromJson(v));
      });
    }
    ad = json['ad'] != null ? new TestAd.fromJson(json['ad']) : null;
    if (json['teacherProfile'] != null) {
      teacherProfile = new List<TestTeacherprofile>();
      (json['teacherProfile'] as List).forEach((v) {
        teacherProfile.add(new TestTeacherprofile.fromJson(v));
      });
    }
    if (json['aboutMsb'] != null) {
      aboutMsb = new List<TestAboutmsb>();
      (json['aboutMsb'] as List).forEach((v) {
        aboutMsb.add(new TestAboutmsb.fromJson(v));
      });
    }
    consultation = json['consultation'] != null
        ? new TestConsultation.fromJson(json['consultation'])
        : null;
    if (json['indexicon'] != null) {
      indexicon = new List<TestIndexicon>();
      (json['indexicon'] as List).forEach((v) {
        indexicon.add(new TestIndexicon.fromJson(v));
      });
    }
    noticemore = json['noticemore'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['msg'] = this.msg;
    if (this.notices != null) {
      data['notices'] = this.notices.map((v) => v.toJson()).toList();
    }
    if (this.indexbanner != null) {
      data['indexbanner'] = this.indexbanner.map((v) => v.toJson()).toList();
    }
    if (this.ad != null) {
      data['ad'] = this.ad.toJson();
    }
    if (this.teacherProfile != null) {
      data['teacherProfile'] =
          this.teacherProfile.map((v) => v.toJson()).toList();
    }
    if (this.aboutMsb != null) {
      data['aboutMsb'] = this.aboutMsb.map((v) => v.toJson()).toList();
    }
    if (this.consultation != null) {
      data['consultation'] = this.consultation.toJson();
    }
    if (this.indexicon != null) {
      data['indexicon'] = this.indexicon.map((v) => v.toJson()).toList();
    }
    data['noticemore'] = this.noticemore;
    data['status'] = this.status;
    return data;
  }
}

class TestNotice {
  String headImg;
  int id;
  String source;
  String title;
  int type;
  String url;
  int regtype;

  TestNotice(
      {this.headImg,
      this.id,
      this.source,
      this.title,
      this.type,
      this.url,
      this.regtype});

  TestNotice.fromJson(Map<String, dynamic> json) {
    headImg = json['headImg'];
    id = json['id'];
    source = json['source'];
    title = json['title'];
    type = json['type'];
    url = json['url'];
    regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['headImg'] = this.headImg;
    data['id'] = this.id;
    data['source'] = this.source;
    data['title'] = this.title;
    data['type'] = this.type;
    data['url'] = this.url;
    data['regtype'] = this.regtype;
    return data;
  }
}

class TestIndexbanner {
  String icon;
  int type;
  String title;
  String url;
  int regtype;

  TestIndexbanner({this.icon, this.type, this.title, this.url, this.regtype});

  TestIndexbanner.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    type = json['type'];
    title = json['title'];
    url = json['url'];
    regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['type'] = this.type;
    data['title'] = this.title;
    data['url'] = this.url;
    data['regtype'] = this.regtype;
    return data;
  }
}

class TestAd {
  String icon;
  int regtype;

  TestAd({this.icon, this.regtype});

  TestAd.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['regtype'] = this.regtype;
    return data;
  }
}

class TestTeacherprofile {
  String imgurl;
  String subTitle;
  String title;
  String url;

  TestTeacherprofile({this.imgurl, this.subTitle, this.title, this.url});

  TestTeacherprofile.fromJson(Map<String, dynamic> json) {
    imgurl = json['imgurl'];
    subTitle = json['subTitle'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgurl'] = this.imgurl;
    data['subTitle'] = this.subTitle;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class TestAboutmsb {
  String imgurl;
  String subTitle;
  String title;
  String url;

  TestAboutmsb({this.imgurl, this.subTitle, this.title, this.url});

  TestAboutmsb.fromJson(Map<String, dynamic> json) {
    imgurl = json['imgurl'];
    subTitle = json['subTitle'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imgurl'] = this.imgurl;
    data['subTitle'] = this.subTitle;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}

class TestConsultation {
  String icon;
  int type;
  String title;
  String url;
  int regtype;

  TestConsultation({this.icon, this.type, this.title, this.url, this.regtype});

  TestConsultation.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    type = json['type'];
    title = json['title'];
    url = json['url'];
    regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['type'] = this.type;
    data['title'] = this.title;
    data['url'] = this.url;
    data['regtype'] = this.regtype;
    return data;
  }
}

class TestIndexicon {
  String icon;
  int type;
  String title;
  String url;
  int order;
  int regtype;

  TestIndexicon(
      {this.icon, this.type, this.title, this.url, this.order, this.regtype});

  TestIndexicon.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    type = json['type'];
    title = json['title'];
    url = json['url'];
    order = json['order'];
    regtype = json['regtype'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['type'] = this.type;
    data['title'] = this.title;
    data['url'] = this.url;
    data['order'] = this.order;
    data['regtype'] = this.regtype;
    return data;
  }
}
