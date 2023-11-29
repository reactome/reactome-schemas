package org.reactome.server.graph.curator.domain.relationship;

import java.util.Objects;
import org.reactome.server.graph.curator.domain.model.PhysicalEntity;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.RelationshipProperties;
import org.springframework.data.neo4j.core.schema.TargetNode;

@RelationshipProperties
public class HasCandidate implements Comparable<HasCandidate> {

    @Id
    @GeneratedValue
    private Long id;

    private Integer order;

    @TargetNode
    private PhysicalEntity physicalEntity;

    private Integer stoichiometry = 1;

    public HasCandidate() {}

    public Integer getOrder() { return order; }

    public void setOrder(Integer order) {
        this.order = order;
    }

    public PhysicalEntity getPhysicalEntity() { return physicalEntity; }

    public void setPhysicalEntity(PhysicalEntity physicalEntity) {
        this.physicalEntity = physicalEntity;
    }

    public Integer getStoichiometry() { return stoichiometry; }

    public void setStoichiometry(Integer stoichiometry) {
        this.stoichiometry = stoichiometry;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        return Objects.equals(physicalEntity, ((HasCandidate) o).physicalEntity);
    }

    @Override
    public int hashCode() {
        return Objects.hash(physicalEntity);
    }

    @Override
    public int compareTo(HasCandidate o) {
        return this.order - o.order;
    }

}