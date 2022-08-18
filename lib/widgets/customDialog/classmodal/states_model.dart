class States {
  String? names;

  States({
    this.names,
  });

  void setName(String getName) {
    names = getName;
  }

  String getName() {
    return names!;
  }
}

List<States> allStates() {
  List<States> states = [];
  States statesModel = States();

  statesModel.setName("Account 1");
  states.add(statesModel);
  statesModel = States();

  statesModel.setName("Account 2");
  states.add(statesModel);
  statesModel = States();

  statesModel.setName("Select Account");
  states.add(statesModel);
  statesModel = States();

  statesModel.setName("Account 3");
  states.add(statesModel);
  statesModel = States();

  return states;
}
