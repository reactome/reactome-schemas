    public List<@TargetNodeClass@> get@Attribute@(){
        List<@TargetNodeClass@> rtn = null;
        if (this.@attribute@ != null) {
            rtn = new ArrayList<>();
            for (@RelationshipClass@ @attribute@ : this.@attribute@) {
                for (int i = 0; i < @attribute@.getStoichiometry(); i++) {
                    rtn.add(@attribute@.get@TargetNodeClass@());
                }
            }
        }
        return rtn;
    }