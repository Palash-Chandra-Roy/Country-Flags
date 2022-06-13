//   // To parse this JSON data, do
// // //
// // //   final countryModel = countryModelFromJson(jsonString);
//
// import 'package:meta/meta.dart';
// import 'dart:convert';
//
// List<CountryModel> countryModelFromJson(String str) => List<CountryModel>.from(json.decode(str).map((x) => CountryModel.fromJson(x)));
//
// String countryModelToJson(List<CountryModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));
//
// class CountryModel {
//   CountryModel({
//     required this.name,
//    // required this.tld,
//     required this.cca2,
//     required this.ccn3,
//     required this.cca3,
//     required this.cioc,
//     required this.independent,
//     required this.status,
//     required this.unMember,
//     //required this.currencies,
//     required this.idd,
//     // required this.capital,
//     // required this.altSpellings,
//     required this.region,
//     required this.subregion,
//     //required this.languages,
//    // required this.translations,
//     required this.latlng,
//     required this.landlocked,
//     required this.borders,
//     required this.area,
//     required this.demonyms,
//     required this.flag,
//     required this.maps,
//     required this.population,
//     //required this.gini,
//     required this.fifa,
//     required this.car,
//     required this.timezones,
//     //required this.continents,
//     required this.flags,
//     required this.coatOfArms,
//     required this.startOfWeek,
//     required this.capitalInfo,
//     //required this.postalCode,
//   });
//
//   Name name;
//   //List<String> tld;
//   String cca2;
//   String ccn3;
//   String cca3;
//   String cioc;
//   bool independent;
//   String status;
//   bool unMember;
//   //Currencies currencies;
//   Idd idd;
//   // List<String> capital;
//   // List<String> altSpellings;
//   String region;
//   String subregion;
//   //Map<String, String> languages;
//   //Map<String, Translation> translations;
//   List<double> latlng;
//   bool landlocked;
//   List<String> borders;
//   double area;
//   Demonyms demonyms;
//   String flag;
//   Maps maps;
//   int population;
//   //Map<String, double> gini;
//   String fifa;
//   Car car;
//   List<String> timezones;
//   //List<Continent> continents;
//   CoatOfArms flags;
//   CoatOfArms coatOfArms;
//   String startOfWeek;
//   CapitalInfo capitalInfo;
//   //PostalCode postalCode;
//
//   factory CountryModel.fromJson(Map<String, dynamic> json) => CountryModel(
//     name: Name.fromJson(json["name"]),
//    // tld: json["tld"] == null ? [] : List<String>.from(json["tld"].map((x) => x)),
//     cca2: json["cca2"],
//     ccn3: json["ccn3"] ?? "",
//     cca3: json["cca3"],
//     cioc: json["cioc"] ?? "",
//     independent: json["independent"] ?? false,
//     status: json["status"],
//     unMember: json["unMember"],
//     //currencies: json["currencies"] == null ? null : Currencies.fromJson(json["currencies"]),
//     idd: Idd.fromJson(json["idd"]),
//     // capital: json["capital"] == null ? [] : List<String>.from(json["capital"].map((x) => x)),
//     // altSpellings: List<String>.from(json["altSpellings"].map((x) => x)),
//     region: json["region"],
//     subregion: json["subregion"] ?? "",
//    // languages: json["languages"] == null ? null : Map.from(json["languages"]).map((k, v) => MapEntry<String, String>(k, v)),
//     //translations: Map.from(json["translations"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
//     latlng: List<double>.from(json["latlng"].map((x) => x.toDouble())),
//     landlocked: json["landlocked"],
//     borders: json["borders"] == null ? [] : List<String>.from(json["borders"].map((x) => x)),
//     area: json["area"].toDouble(),
//     demonyms:  Demonyms.fromJson(json["demonyms"]),
//     flag: json["flag"] ?? "",
//     maps: Maps.fromJson(json["maps"]),
//     population: json["population"],
//     //gini: json["gini"] == null ? null : Map.from(json["gini"]).map((k, v) => MapEntry<String, double>(k, v.toDouble())),
//     fifa: json["fifa"] ?? "",
//     car: Car.fromJson(json["car"]),
//     timezones: List<String>.from(json["timezones"].map((x) => x)),
//     //continents: List<Continent>.from(json["continents"].map((x) => continentValues.map[x])),
//     flags: CoatOfArms.fromJson(json["flags"]),
//     coatOfArms: CoatOfArms.fromJson(json["coatOfArms"]),
//     startOfWeek: json["startOfWeek"],
//     capitalInfo: CapitalInfo.fromJson(json["capitalInfo"]),
//     //postalCode: json["postalCode"] ?? null ,
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name.toJson(),
//     //"tld": tld == null ? null : List<dynamic>.from(tld.map((x) => x)),
//     "cca2": cca2,
//     "ccn3": ccn3 == null ? null : ccn3,
//     "cca3": cca3,
//     "cioc": cioc == null ? null : cioc,
//     "independent": independent == null ? null : independent,
//     "status": status,
//     "unMember": unMember,
//     //"currencies": currencies.toJson(),
//     "idd": idd.toJson(),
//     // "capital": capital == null ? null : List<dynamic>.from(capital.map((x) => x)),
//     // "altSpellings": List<dynamic>.from(altSpellings.map((x) => x)),
//     "region": region,
//     "subregion": subregion == null ? null : subregion,
//     //"languages": languages == null ? null : Map.from(languages).map((k, v) => MapEntry<String, dynamic>(k, v)),
//     //"translations": Map.from(translations).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//     "latlng": List<dynamic>.from(latlng.map((x) => x)),
//     "landlocked": landlocked,
//     "borders": borders == null ? null : List<dynamic>.from(borders.map((x) => x)),
//     "area": area,
//     "demonyms": demonyms == null ? null : demonyms.toJson(),
//     "flag": flag == null ? null : flag,
//     "maps": maps.toJson(),
//     "population": population,
//     //"gini": gini == null ? null : Map.from(gini).map((k, v) => MapEntry<String, dynamic>(k, v)),
//     "fifa": fifa == null ? null : fifa,
//     "car": car.toJson(),
//     "timezones": List<dynamic>.from(timezones.map((x) => x)),
//     //"continents": List<dynamic>.from(continents.map((x) => continentValues.reverse[x])),
//     "flags": flags.toJson(),
//     "coatOfArms": coatOfArms.toJson(),
//     "startOfWeek": startOfWeek,
//     "capitalInfo": capitalInfo.toJson(),
//     //"postalCode": postalCode == null ? null : postalCode.toJson(),
//   };
// }
//
// class CapitalInfo {
//   CapitalInfo({
//     required this.latlng,
//   });
//
//   List<double> latlng;
//
//   factory CapitalInfo.fromJson(Map<String, dynamic> json) => CapitalInfo(
//     latlng: json["latlng"] == null ? [] : List<double>.from(json["latlng"].map((x) => x.toDouble())),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "latlng": latlng == null ? null : List<dynamic>.from(latlng.map((x) => x)),
//   };
// }
//
// class Car {
//   Car({
//     required this.signs,
//     required this.side,
//   });
//
//   List<String> signs;
//   String side;
//
//   factory Car.fromJson(Map<String, dynamic> json) => Car(
//     signs: json["signs"] == null ? [] : List<String>.from(json["signs"].map((x) => x)),
//     side: json["side"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "signs": signs == null ? null : List<dynamic>.from(signs.map((x) => x)),
//     "side": side,
//   };
// }
//
// class CoatOfArms {
//   CoatOfArms({
//     required this.png,
//     required this.svg,
//   });
//
//   String png;
//   String svg;
//
//   factory CoatOfArms.fromJson(Map<String, dynamic> json) => CoatOfArms(
//     png: json["png"] == null ? null : json["png"],
//     svg: json["svg"] == null ? null : json["svg"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "png": png == null ? null : png,
//     "svg": svg == null ? null : svg,
//   };
// }
//
//
//
// class Aed {
//   Aed({
//     required this.name,
//     required this.symbol,
//   });
//
//   String name;
//   String symbol;
//
//   factory Aed.fromJson(Map<String, dynamic> json) => Aed(
//     name: json["name"],
//     symbol: json["symbol"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "symbol": symbol,
//   };
// }
//
// class Bam {
//   Bam({
//     required this.name,
//   });
//
//   String name;
//
//   factory Bam.fromJson(Map<String, dynamic> json) => Bam(
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//   };
// }
//
// class Demonyms {
//   Demonyms({
//     required this.eng,
//     required this.fra,
//   });
//
//   Eng eng;
//   Eng fra;
//
//   factory Demonyms.fromJson(Map<String, dynamic> json) => Demonyms(
//     eng: Eng.fromJson(json["eng"]),
//     fra: Eng.fromJson(json["fra"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "eng": eng.toJson(),
//     "fra": fra == null ? null : fra.toJson(),
//   };
// }
//
// class Eng {
//   Eng({
//     required this.f,
//     required this.m,
//   });
//
//   String f;
//   String m;
//
//   factory Eng.fromJson(Map<String, dynamic> json) => Eng(
//     f: json["f"],
//     m: json["m"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "f": f,
//     "m": m,
//   };
// }
//
// class Idd {
//   Idd({
//     required this.root,
//     required this.suffixes,
//   });
//
//   String root;
//   List<String> suffixes;
//
//   factory Idd.fromJson(Map<String, dynamic> json) => Idd(
//     root: json["root"] ?? "",
//     suffixes: json["suffixes"] == null ? [] : List<String>.from(json["suffixes"].map((x) => x)),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "root": root ?? " ",
//     "suffixes": suffixes == null ? null : List<dynamic>.from(suffixes.map((x) => x)),
//   };
// }
//
// class Maps {
//   Maps({
//     required this.googleMaps,
//     required this.openStreetMaps,
//   });
//
//   String googleMaps;
//   String openStreetMaps;
//
//   factory Maps.fromJson(Map<String, dynamic> json) => Maps(
//     googleMaps: json["googleMaps"],
//     openStreetMaps: json["openStreetMaps"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "googleMaps": googleMaps,
//     "openStreetMaps": openStreetMaps,
//   };
// }
//
// class Name {
//   Name({
//     required this.common,
//     required this.official,
//     //required this.nativeName,
//   });
//
//   String common;
//   String official;
//   //Map<String, Translation> nativeName;
//
//   factory Name.fromJson(Map<String, dynamic> json) => Name(
//     common: json["common"],
//     official: json["official"],
//     //nativeName: json["nativeName"] == null ? null : Map.from(json["nativeName"]).map((k, v) => MapEntry<String, Translation>(k, Translation.fromJson(v))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "common": common,
//     "official": official,
//     //"nativeName": nativeName == null ? null : Map.from(nativeName).map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
//   };
// }
//
// class Translation {
//   Translation({
//     required this.official,
//     required this.common,
//   });
//
//   String official;
//   String common;
//
//   factory Translation.fromJson(Map<String, dynamic> json) => Translation(
//     official: json["official"],
//     common: json["common"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "official": official,
//     "common": common,
//   };
// }
//
// class PostalCode {
//   PostalCode({
//     required this.format,
//     required this.regex,
//   });
//
//   String format;
//   String regex;
//
//   factory PostalCode.fromJson(Map<String, dynamic> json) => PostalCode(
//     format: json["format"],
//     regex: json["regex"] == null ? null : json["regex"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "format": format,
//     "regex": regex == null ? null : regex,
//   };
// }
//



import 'dart:convert';

List<Welcome> welcomeFromJson(String str) => List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    required this.name,
    required this.topLevelDomain,
    required this.alpha2Code,
    required this.alpha3Code,
    required this.callingCodes,
    required this.capital,
    required this.altSpellings,
    required this.subregion,
    required this.region,
    required this.population,
    required this.latlng,
    required this.demonym,
    required this.area,
    required this.timezones,
    required this.borders,
    required this.nativeName,
    required this.numericCode,
    required this.flags,
    required this.currencies,
    required this.languages,
    required this.translations,
    required this.flag,
    //required this.regionalBlocs,
    required this.cioc,
    required this.independent,
    required  this.gini,
  });

  String name;
  List<String> topLevelDomain;
  String alpha2Code;
  String alpha3Code;
  List<String> callingCodes;
  String capital;
  List<String> altSpellings;
  String subregion;
  String region;
  int population;
  List<double> latlng;
  String demonym;
  double area;
  List<String> timezones;
  List<String> borders;
  String nativeName;
  String numericCode;
  Flags flags;
  List<Currency> currencies;
  List<Language> languages;
  Translations translations;
  String flag;
  //List<RegionalBloc> regionalBlocs;
  String cioc;
  bool independent;
  double gini;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    name: json["name"],
    topLevelDomain: json["topLevelDomain"] == null?[]:List<String>.from(json["topLevelDomain"].map((x) => x)),
    alpha2Code: json["alpha2Code"],
    alpha3Code: json["alpha3Code"],
    callingCodes: List<String>.from(json["callingCodes"].map((x) => x)),
    capital: json["capital"]??"",
    altSpellings: json["altSpellings"] == null?[]:List<String>.from(json["altSpellings"].map((x) => x)),
    subregion: json["subregion"]??"",
    region: json["region"]??"",
    population: json["population"]??0,
    latlng: json["latlng"] == null?[]:List<double>.from(json["latlng"].map((x) => x.toDouble())),
    demonym: json["demonym"]??"",
    area: json["area"] == null?00:json["area"].toDouble(),
    timezones: json["timezones"] == null?[]:List<String>.from(json["timezones"].map((x) => x)),
    borders: json["borders"] == null?[]:List<String>.from(json["borders"].map((x) => x)),
    nativeName: json["nativeName"]??"",
    numericCode: json["numericCode"]??"",
    flags: Flags.fromJson(json["flags"]),
    currencies: json["currencies"] == null?[]:List<Currency>.from(json["currencies"].map((x) => Currency.fromJson(x))),
    languages: json["languages"] == null?[]:List<Language>.from(json["languages"].map((x) => Language.fromJson(x))),
    translations: Translations.fromJson(json["translations"]),
    flag: json["flag"]??"",
    //regionalBlocs: List<RegionalBloc>.from(json["regionalBlocs"].map((x) => RegionalBloc.fromJson(x))),
    cioc: json["cioc"]??"",
    independent: json["independent"]??false,
    gini: json["gini"] == null ? 00 : json["gini"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    //  "name": name,
    "topLevelDomain": List<dynamic>.from(topLevelDomain.map((x) => x)),
    "alpha2Code": alpha2Code,
    "alpha3Code": alpha3Code,
    // "callingCodes": List<dynamic>.from(callingCodes!.map((x) => x)),
    // "capital": capital,
    // "altSpellings": List<dynamic>.from(altSpellings!.map((x) => x)),
    // "subregion": subregion,
    // "region": region,
    // "population": population,
    // "latlng": List<dynamic>.from(latlng!.map((x) => x)),
    // "demonym": demonym,
    // "area": area.toString().isEmpty ? 00 : area,
    // "timezones": List<dynamic>.from(timezones!.map((x) => x)),
    // "borders": List<dynamic>.from(borders!.map((x) => x)),
    // "nativeName": nativeName,
    // "numericCode": numericCode,
    // "flags": flags!.toJson(),
    // "currencies": List<dynamic>.from(currencies!.map((x) => x.toJson())),
    // "languages": List<dynamic>.from(languages!.map((x) => x.toJson())),
    // "translations": translations!.toJson(),
    // "flag": flag,
    // //"regionalBlocs": regionalBlocs == null ? null : List<dynamic>.from(regionalBlocs!.map((x) => x.toJson())),
    // "cioc": cioc == null ? null : cioc,
    // "independent": independent,
    // "gini": gini == null ? null : gini,
  };
}

class Currency {
  Currency({
    required this.code,
    required this.name,
    required this.symbol,
  });

  String code;
  String name;
  String symbol;

  factory Currency.fromJson(Map<String, dynamic> json) => Currency(
    code: json["code"]??"",
    name: json["name"]??"",
    symbol: json["symbol"]??"",
  );

  Map<String, dynamic> toJson() => {
    "code": code,
    "name": name,
    "symbol": symbol,
  };
}

class Flags {
  Flags({
    required this.svg,
    required this.png,
  });

  String svg;
  String png;

  factory Flags.fromJson(Map<String, dynamic> json) => Flags(
    svg: json["svg"]??"",
    png: json["png"]??"",
  );

  Map<String, dynamic> toJson() => {
    "svg": svg,
    "png": png,
  };
}

class Language {
  Language({
    required this.iso6391,
    required this.iso6392,
    required this.name,
    required this.nativeName,
  });

  String iso6391;
  String iso6392;
  String name;
  String nativeName;

  factory Language.fromJson(Map<String, dynamic> json) => Language(
    iso6391: json["iso639_1"] ?? "",
    iso6392: json["iso639_2"]??"",
    name: json["name"],
    nativeName: json["nativeName"] ?? "",
  );

  Map<String, dynamic> toJson() => {
    "iso639_1": iso6391,
    "iso639_2": iso6392,
    "name": name,
    "nativeName": nativeName,
  };
}

//
// class RegionalBloc {
//   RegionalBloc({
//     this.acronym,
//     this.name,
//     this.otherNames,
//     this.otherAcronyms,
//   });
//
//   Acronym? acronym;
//   Name? name;
//   List<OtherName>? otherNames;
//   List<OtherAcronym>? otherAcronyms;
//
//   factory RegionalBloc.fromJson(Map<String, dynamic> json) => RegionalBloc(
//     acronym: acronymValues.map![json["acronym"]],
//     name: nameValues.map![json["name"]],
//     otherNames: json["otherNames"] == null ? null : List<OtherName>.from(json["otherNames"].map((x) => otherNameValues.map![x])),
//     otherAcronyms: json["otherAcronyms"] == null ? null : List<OtherAcronym>.from(json["otherAcronyms"].map((x) => otherAcronymValues.map![x])),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "acronym": acronymValues.reverse[acronym],
//     "name": nameValues.reverse[name],
//     "otherNames": otherNames == null ? null : List<dynamic>.from(otherNames!.map((x) => otherNameValues.reverse[x])),
//     "otherAcronyms": otherAcronyms == null ? null : List<dynamic>.from(otherAcronyms!.map((x) => otherAcronymValues.reverse[x])),
//   };
// }

class Translations {
  Translations({
    required this.br,
    required this.pt,
    required this.nl,
    required this.hr,
    required this.fa,
    required this.de,
    required this.es,
    required this.fr,
    required this.ja,
    required this.it,
    required this.hu,
  });

  String br;
  String pt;
  String nl;
  String hr;
  String fa;
  String de;
  String es;
  String fr;
  String ja;
  String it;
  String hu;

  factory Translations.fromJson(Map<String, dynamic> json) => Translations(
    br: json["br"]??"",
    pt: json["pt"]??"",
    nl: json["nl"]??"",
    hr: json["hr"]??"",
    fa: json["fa"] ?? "",
    de: json["de"]??"",
    es: json["es"]??"",
    fr: json["fr"]??"",
    ja: json["ja"]??"",
    it: json["it"]??"",
    hu: json["hu"]??"",
  );

  Map<String, dynamic> toJson() => {
    "br": br,
    "pt": pt,
    "nl": nl,
    "hr": hr,
    "fa": fa,
    "de": de,
    "es": es,
    "fr": fr,
    "ja": ja,
    "it": it,
    "hu": hu,
  };
}