

class SoccerMatch {
    Fixture? fixture;
    Team? home;
    Team ?away;
    Goals? goals;

    SoccerMatch(this.fixture, this.home, this.away, this.goals);

    factory SoccerMatch.fromJson(Map<String,dynamic>json){
      return SoccerMatch(Fixture.fromJson(json['fixture']),
          Team.fromJson(json['teams']['home']),
          Team.fromJson(json['teams']['away']),
          Goals.fromJson(json['goals']));
    }
}


class Goals{
  int? home;
  int? away;

  Goals(this.home, this.away);
  factory Goals.fromJson(Map<String,dynamic>json){
    return Goals(json['home'], json['away']);
  }
}
class Team{
  int? id;
  String? name;
  String? logo;
  bool? winner;

  Team(this.id, this.name, this.logo, this.winner);
  factory Team.fromJson(Map<String,dynamic>json){

  return Team(json['id'], json['name'], json['logo'], json['winner']);

  }

}
class Fixture{
  int? id;
  String? date;
  Status status;

  Fixture(this.id, this.date, this.status);
  factory Fixture.fromJson(Map<String,dynamic>json){
    return Fixture(json['id'], json['data'], Status.fromJson(json['status']));
  }
}

class Status{
  int? elapsed;
  String? long;
  String? short;
  Status(this.elapsed, this.long, this.short);
  factory Status.fromJson(Map<String,dynamic>json){
    return Status(json['elapsed'], json['long'], json['short']);
  }
  
  
}