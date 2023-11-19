package org.reactome.server.graph.domain.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.util.*;
import org.reactome.server.graph.domain.annotations.ReactomeProperty;
import org.reactome.server.graph.domain.annotations.ReactomeSchemaIgnore;
import org.reactome.server.graph.domain.relationship.HasModifiedResidue;
import org.springframework.data.neo4j.core.schema.Node;
import org.springframework.data.neo4j.core.schema.Relationship;

@Node
@SuppressWarnings("unused")
public class EntityWithAccessionedSequence extends GenomeEncodedEntity {

    @ReactomeSchemaIgnore
    @Override
    public String getClassName() {
        switch (referenceType) { 
          case ("ReferenceGeneProduct"):
            return "Protein";
           case ("ReferenceDNASequence"):
            return "DNA Sequence";
           case ("ReferenceRNASequence"):
            return "RNA Sequence";
           default:
            return super.getClassName();
        }
    }

    @ReactomeProperty
    private Integer endCoordinate;

    @ReactomeSchemaIgnore
    @JsonIgnore
    @Override
    public String getExplanation() {
        return "A protein, RNA, or DNA molecule or fragment thereof in a specified cellular compartment and specific post-translational state. Must be linked to an external database reference, given as the value of referenceSequence. An EWAS typically corresponds to the entire protein or polynucleotide described in the external database. Fragments are defined by setting the first and last residue using the numbering scheme of the external database, entered as startCoordinate and endCoordinate values. Values of 1 and -1 respectively indicate that the true start and end are unconfirmed. EWAS instances are specific to a subcellular compartment; if the same molecule is found in two cellular components it will have two EWASes. EWAS instances by default define an unmodified protein sequence, any post-translational modification (PTM), such as phosphorylation, requires a new EWAS instance. The location and type of any PTM are defined in the hasModifiedResidue slot";
    }

    @Relationship(type = "hasModifiedResidue")
    private SortedSet<HasModifiedResidue> hasModifiedResidue;

    @Relationship(type = "referenceEntity")
    private ReferenceSequence referenceEntity;

    @ReactomeProperty
    private Integer startCoordinate;

    public EntityWithAccessionedSequence() {}

    public EntityWithAccessionedSequence(Long dbId) { super(dbId); }

    public Integer getEndCoordinate() { return endCoordinate; }

    public void setEndCoordinate(Integer endCoordinate) {
        this.endCoordinate = endCoordinate;
    }

    public List<AbstractModifiedResidue> getHasModifiedResidue(){
        List<AbstractModifiedResidue> rtn = null;
        if (this.hasModifiedResidue != null) {
            rtn = new ArrayList<>();
            for (HasModifiedResidue hasModifiedResidue : this.hasModifiedResidue) {
                for (int i = 0; i < hasModifiedResidue.getStoichiometry(); i++) {
                    rtn.add(hasModifiedResidue.getAbstractModifiedResidue());
                }
            }
        }
        return rtn;
    }

    public void setHasModifiedResidue(List<AbstractModifiedResidue> hasModifiedResidue) {
        if (hasModifiedResidue == null) return;
        Map<Long, HasModifiedResidue> map = new LinkedHashMap<>();
        int order = 0;
        for (AbstractModifiedResidue abstractModifiedResidue : hasModifiedResidue) {
            AbstractModifiedResidue relInst = map.get(abstractModifiedResidue.getDB_ID());
            if (relInst != null) {
                relInst.setStoichiometry(relInst.getStoichiometry() + 1);
            } else {
                relInst = new HasModifiedResidue();
                relInst.setAbstractModifiedResidue(abstractModifiedResidue);
                relInst.setOrder(order++);
                map.put(abstractModifiedResidue.getDB_ID(), relInst);
            }
        }
        this.hasModifiedResidue = new TreeSet<>(map.values());
    }

    public ReferenceSequence getReferenceEntity() { return referenceEntity; }

    public void setReferenceEntity(ReferenceSequence referenceEntity) {
        this.referenceEntity = referenceEntity;
    }

    public Integer getStartCoordinate() { return startCoordinate; }

    public void setStartCoordinate(Integer startCoordinate) {
        this.startCoordinate = startCoordinate;
    }

}
