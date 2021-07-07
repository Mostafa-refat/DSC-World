// To parse this JSON data, do
//
//     final projectsRequest = projectsRequestFromJson(jsonString);

import 'dart:convert';

class AllData {
  AllData({
    this.continents,
    this.countries,
    this.languages,
  });

  Continents continents;
  Map<String, Country> countries;
  Languages languages;

  factory AllData.fromJson(Map<String, dynamic> json) => AllData(
        continents: Continents.fromJson(json["continents"]),
        countries: Map.from(json["countries"])
            .map((k, v) => MapEntry<String, Country>(k, Country.fromJson(v))),
        languages: Languages.fromJson(json["languages"]),
      );

  Map<String, dynamic> toJson() => {
        "continents": continents.toJson(),
        "countries": Map.from(countries)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "languages": languages.toJson(),
      };
}

class Continents {
  Continents({
    this.af,
    this.an,
    this.continentsAs,
    this.eu,
    this.na,
    this.oc,
    this.sa,
  });

  String af;
  String an;
  String continentsAs;
  String eu;
  String na;
  String oc;
  String sa;

  factory Continents.fromJson(Map<String, dynamic> json) => Continents(
        af: json["AF"],
        an: json["AN"],
        continentsAs: json["AS"],
        eu: json["EU"],
        na: json["NA"],
        oc: json["OC"],
        sa: json["SA"],
      );

  Map<String, dynamic> toJson() => {
        "AF": af,
        "AN": an,
        "AS": continentsAs,
        "EU": eu,
        "NA": na,
        "OC": oc,
        "SA": sa,
      };
}

class Country {
  Country({
    this.name,
    this.native,
    this.phone,
    this.continent,
    this.capital,
    this.currency,
    this.languages,
    this.emoji,
    this.emojiU,
    this.isFav = false,
  });

  String name;
  String native;
  String phone;
  String continent;
  String capital;
  String currency;
  List<String> languages;
  String emoji;
  String emojiU;
  bool isFav = false;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        name: json["name"],
        native: json["native"],
        phone: json["phone"],
        continent: json["continent"],
        capital: json["capital"],
        currency: json["currency"],
        languages: List<String>.from(json["languages"].map((x) => x)),
        emoji: json["emoji"],
        emojiU: json["emojiU"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "native": native,
        "phone": phone,
        "continent": continent,
        "capital": capital,
        "currency": currency,
        "languages": List<dynamic>.from(languages.map((x) => x)),
        "emoji": emoji,
        "emojiU": emojiU,
      };
}

enum Continent { EU, AS, NA, AF, AN, SA, OC }

final continentValues = EnumValues({
  "AF": Continent.AF,
  "AN": Continent.AN,
  "AS": Continent.AS,
  "EU": Continent.EU,
  "NA": Continent.NA,
  "OC": Continent.OC,
  "SA": Continent.SA
});

class Languages {
  Languages({
    this.af,
    this.am,
    this.ar,
    this.ay,
    this.az,
    this.be,
    this.bg,
    this.bi,
    this.bn,
    this.bs,
    this.ca,
    this.ch,
    this.cs,
    this.da,
    this.de,
    this.dv,
    this.dz,
    this.el,
    this.en,
    this.es,
    this.et,
    this.eu,
    this.fa,
    this.ff,
    this.fi,
    this.fj,
    this.fo,
    this.fr,
    this.ga,
    this.gl,
    this.gn,
    this.gv,
    this.he,
    this.hi,
    this.hr,
    this.ht,
    this.hu,
    this.hy,
    this.id,
    this.languagesIs,
    this.it,
    this.ja,
    this.ka,
    this.kg,
    this.kk,
    this.kl,
    this.km,
    this.ko,
    this.ku,
    this.ky,
    this.la,
    this.lb,
    this.ln,
    this.lo,
    this.lt,
    this.lu,
    this.lv,
    this.mg,
    this.mh,
    this.mi,
    this.mk,
    this.mn,
    this.ms,
    this.mt,
    this.my,
    this.na,
    this.nb,
    this.nd,
    this.ne,
    this.nl,
    this.nn,
    this.no,
    this.nr,
    this.ny,
    this.oc,
    this.pa,
    this.pl,
    this.ps,
    this.pt,
    this.qu,
    this.rn,
    this.ro,
    this.ru,
    this.rw,
    this.sg,
    this.si,
    this.sk,
    this.sl,
    this.sm,
    this.sn,
    this.so,
    this.sq,
    this.sr,
    this.ss,
    this.st,
    this.sv,
    this.sw,
    this.ta,
    this.tg,
    this.th,
    this.ti,
    this.tk,
    this.tn,
    this.to,
    this.tr,
    this.ts,
    this.uk,
    this.ur,
    this.uz,
    this.ve,
    this.vi,
    this.xh,
    this.zh,
    this.zu,
  });

  Af af;
  Af am;
  Ar ar;
  Af ay;
  Af az;
  Af be;
  Af bg;
  Af bi;
  Af bn;
  Af bs;
  Af ca;
  Af ch;
  Af cs;
  Af da;
  Af de;
  Ar dv;
  Af dz;
  Af el;
  Af en;
  Af es;
  Af et;
  Af eu;
  Ar fa;
  Af ff;
  Af fi;
  Af fj;
  Af fo;
  Af fr;
  Af ga;
  Af gl;
  Af gn;
  Af gv;
  Ar he;
  Af hi;
  Af hr;
  Af ht;
  Af hu;
  Af hy;
  Af id;
  Af languagesIs;
  Af it;
  Af ja;
  Af ka;
  Af kg;
  Af kk;
  Af kl;
  Af km;
  Af ko;
  Ar ku;
  Af ky;
  Af la;
  Af lb;
  Af ln;
  Af lo;
  Af lt;
  Lu lu;
  Af lv;
  Af mg;
  Af mh;
  Af mi;
  Af mk;
  Af mn;
  Af ms;
  Af mt;
  Af my;
  Af na;
  Lu nb;
  Af nd;
  Af ne;
  Af nl;
  Af nn;
  Af no;
  Af nr;
  Af ny;
  Af oc;
  Af pa;
  Af pl;
  Ar ps;
  Af pt;
  Af qu;
  Af rn;
  Af ro;
  Af ru;
  Af rw;
  Af sg;
  Af si;
  Af sk;
  Af sl;
  Af sm;
  Af sn;
  Af so;
  Af sq;
  Af sr;
  Af ss;
  Af st;
  Af sv;
  Af sw;
  Af ta;
  Af tg;
  Af th;
  Af ti;
  Af tk;
  Af tn;
  Af to;
  Af tr;
  Af ts;
  Af uk;
  Ar ur;
  Af uz;
  Af ve;
  Af vi;
  Af xh;
  Af zh;
  Af zu;

  factory Languages.fromJson(Map<String, dynamic> json) => Languages(
        af: Af.fromJson(json["af"]),
        am: Af.fromJson(json["am"]),
        ar: Ar.fromJson(json["ar"]),
        ay: Af.fromJson(json["ay"]),
        az: Af.fromJson(json["az"]),
        be: Af.fromJson(json["be"]),
        bg: Af.fromJson(json["bg"]),
        bi: Af.fromJson(json["bi"]),
        bn: Af.fromJson(json["bn"]),
        bs: Af.fromJson(json["bs"]),
        ca: Af.fromJson(json["ca"]),
        ch: Af.fromJson(json["ch"]),
        cs: Af.fromJson(json["cs"]),
        da: Af.fromJson(json["da"]),
        de: Af.fromJson(json["de"]),
        dv: Ar.fromJson(json["dv"]),
        dz: Af.fromJson(json["dz"]),
        el: Af.fromJson(json["el"]),
        en: Af.fromJson(json["en"]),
        es: Af.fromJson(json["es"]),
        et: Af.fromJson(json["et"]),
        eu: Af.fromJson(json["eu"]),
        fa: Ar.fromJson(json["fa"]),
        ff: Af.fromJson(json["ff"]),
        fi: Af.fromJson(json["fi"]),
        fj: Af.fromJson(json["fj"]),
        fo: Af.fromJson(json["fo"]),
        fr: Af.fromJson(json["fr"]),
        ga: Af.fromJson(json["ga"]),
        gl: Af.fromJson(json["gl"]),
        gn: Af.fromJson(json["gn"]),
        gv: Af.fromJson(json["gv"]),
        he: Ar.fromJson(json["he"]),
        hi: Af.fromJson(json["hi"]),
        hr: Af.fromJson(json["hr"]),
        ht: Af.fromJson(json["ht"]),
        hu: Af.fromJson(json["hu"]),
        hy: Af.fromJson(json["hy"]),
        id: Af.fromJson(json["id"]),
        languagesIs: Af.fromJson(json["is"]),
        it: Af.fromJson(json["it"]),
        ja: Af.fromJson(json["ja"]),
        ka: Af.fromJson(json["ka"]),
        kg: Af.fromJson(json["kg"]),
        kk: Af.fromJson(json["kk"]),
        kl: Af.fromJson(json["kl"]),
        km: Af.fromJson(json["km"]),
        ko: Af.fromJson(json["ko"]),
        ku: Ar.fromJson(json["ku"]),
        ky: Af.fromJson(json["ky"]),
        la: Af.fromJson(json["la"]),
        lb: Af.fromJson(json["lb"]),
        ln: Af.fromJson(json["ln"]),
        lo: Af.fromJson(json["lo"]),
        lt: Af.fromJson(json["lt"]),
        lu: Lu.fromJson(json["lu"]),
        lv: Af.fromJson(json["lv"]),
        mg: Af.fromJson(json["mg"]),
        mh: Af.fromJson(json["mh"]),
        mi: Af.fromJson(json["mi"]),
        mk: Af.fromJson(json["mk"]),
        mn: Af.fromJson(json["mn"]),
        ms: Af.fromJson(json["ms"]),
        mt: Af.fromJson(json["mt"]),
        my: Af.fromJson(json["my"]),
        na: Af.fromJson(json["na"]),
        nb: Lu.fromJson(json["nb"]),
        nd: Af.fromJson(json["nd"]),
        ne: Af.fromJson(json["ne"]),
        nl: Af.fromJson(json["nl"]),
        nn: Af.fromJson(json["nn"]),
        no: Af.fromJson(json["no"]),
        nr: Af.fromJson(json["nr"]),
        ny: Af.fromJson(json["ny"]),
        oc: Af.fromJson(json["oc"]),
        pa: Af.fromJson(json["pa"]),
        pl: Af.fromJson(json["pl"]),
        ps: Ar.fromJson(json["ps"]),
        pt: Af.fromJson(json["pt"]),
        qu: Af.fromJson(json["qu"]),
        rn: Af.fromJson(json["rn"]),
        ro: Af.fromJson(json["ro"]),
        ru: Af.fromJson(json["ru"]),
        rw: Af.fromJson(json["rw"]),
        sg: Af.fromJson(json["sg"]),
        si: Af.fromJson(json["si"]),
        sk: Af.fromJson(json["sk"]),
        sl: Af.fromJson(json["sl"]),
        sm: Af.fromJson(json["sm"]),
        sn: Af.fromJson(json["sn"]),
        so: Af.fromJson(json["so"]),
        sq: Af.fromJson(json["sq"]),
        sr: Af.fromJson(json["sr"]),
        ss: Af.fromJson(json["ss"]),
        st: Af.fromJson(json["st"]),
        sv: Af.fromJson(json["sv"]),
        sw: Af.fromJson(json["sw"]),
        ta: Af.fromJson(json["ta"]),
        tg: Af.fromJson(json["tg"]),
        th: Af.fromJson(json["th"]),
        ti: Af.fromJson(json["ti"]),
        tk: Af.fromJson(json["tk"]),
        tn: Af.fromJson(json["tn"]),
        to: Af.fromJson(json["to"]),
        tr: Af.fromJson(json["tr"]),
        ts: Af.fromJson(json["ts"]),
        uk: Af.fromJson(json["uk"]),
        ur: Ar.fromJson(json["ur"]),
        uz: Af.fromJson(json["uz"]),
        ve: Af.fromJson(json["ve"]),
        vi: Af.fromJson(json["vi"]),
        xh: Af.fromJson(json["xh"]),
        zh: Af.fromJson(json["zh"]),
        zu: Af.fromJson(json["zu"]),
      );

  Map<String, dynamic> toJson() => {
        "af": af.toJson(),
        "am": am.toJson(),
        "ar": ar.toJson(),
        "ay": ay.toJson(),
        "az": az.toJson(),
        "be": be.toJson(),
        "bg": bg.toJson(),
        "bi": bi.toJson(),
        "bn": bn.toJson(),
        "bs": bs.toJson(),
        "ca": ca.toJson(),
        "ch": ch.toJson(),
        "cs": cs.toJson(),
        "da": da.toJson(),
        "de": de.toJson(),
        "dv": dv.toJson(),
        "dz": dz.toJson(),
        "el": el.toJson(),
        "en": en.toJson(),
        "es": es.toJson(),
        "et": et.toJson(),
        "eu": eu.toJson(),
        "fa": fa.toJson(),
        "ff": ff.toJson(),
        "fi": fi.toJson(),
        "fj": fj.toJson(),
        "fo": fo.toJson(),
        "fr": fr.toJson(),
        "ga": ga.toJson(),
        "gl": gl.toJson(),
        "gn": gn.toJson(),
        "gv": gv.toJson(),
        "he": he.toJson(),
        "hi": hi.toJson(),
        "hr": hr.toJson(),
        "ht": ht.toJson(),
        "hu": hu.toJson(),
        "hy": hy.toJson(),
        "id": id.toJson(),
        "is": languagesIs.toJson(),
        "it": it.toJson(),
        "ja": ja.toJson(),
        "ka": ka.toJson(),
        "kg": kg.toJson(),
        "kk": kk.toJson(),
        "kl": kl.toJson(),
        "km": km.toJson(),
        "ko": ko.toJson(),
        "ku": ku.toJson(),
        "ky": ky.toJson(),
        "la": la.toJson(),
        "lb": lb.toJson(),
        "ln": ln.toJson(),
        "lo": lo.toJson(),
        "lt": lt.toJson(),
        "lu": lu.toJson(),
        "lv": lv.toJson(),
        "mg": mg.toJson(),
        "mh": mh.toJson(),
        "mi": mi.toJson(),
        "mk": mk.toJson(),
        "mn": mn.toJson(),
        "ms": ms.toJson(),
        "mt": mt.toJson(),
        "my": my.toJson(),
        "na": na.toJson(),
        "nb": nb.toJson(),
        "nd": nd.toJson(),
        "ne": ne.toJson(),
        "nl": nl.toJson(),
        "nn": nn.toJson(),
        "no": no.toJson(),
        "nr": nr.toJson(),
        "ny": ny.toJson(),
        "oc": oc.toJson(),
        "pa": pa.toJson(),
        "pl": pl.toJson(),
        "ps": ps.toJson(),
        "pt": pt.toJson(),
        "qu": qu.toJson(),
        "rn": rn.toJson(),
        "ro": ro.toJson(),
        "ru": ru.toJson(),
        "rw": rw.toJson(),
        "sg": sg.toJson(),
        "si": si.toJson(),
        "sk": sk.toJson(),
        "sl": sl.toJson(),
        "sm": sm.toJson(),
        "sn": sn.toJson(),
        "so": so.toJson(),
        "sq": sq.toJson(),
        "sr": sr.toJson(),
        "ss": ss.toJson(),
        "st": st.toJson(),
        "sv": sv.toJson(),
        "sw": sw.toJson(),
        "ta": ta.toJson(),
        "tg": tg.toJson(),
        "th": th.toJson(),
        "ti": ti.toJson(),
        "tk": tk.toJson(),
        "tn": tn.toJson(),
        "to": to.toJson(),
        "tr": tr.toJson(),
        "ts": ts.toJson(),
        "uk": uk.toJson(),
        "ur": ur.toJson(),
        "uz": uz.toJson(),
        "ve": ve.toJson(),
        "vi": vi.toJson(),
        "xh": xh.toJson(),
        "zh": zh.toJson(),
        "zu": zu.toJson(),
      };
}

class Af {
  Af({
    this.name,
    this.native,
  });

  String name;
  String native;

  factory Af.fromJson(Map<String, dynamic> json) => Af(
        name: json["name"],
        native: json["native"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "native": native,
      };
}

class Ar {
  Ar({
    this.name,
    this.native,
    this.rtl,
  });

  String name;
  String native;
  int rtl;

  factory Ar.fromJson(Map<String, dynamic> json) => Ar(
        name: json["name"],
        native: json["native"],
        rtl: json["rtl"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "native": native,
        "rtl": rtl,
      };
}

class Lu {
  Lu();

  factory Lu.fromJson(Map<String, dynamic> json) => Lu();

  Map<String, dynamic> toJson() => {};
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
