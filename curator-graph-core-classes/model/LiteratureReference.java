package org.reactome.server.graph.curator.domain.model;

import org.reactome.server.graph.curator.domain.annotations.ReactomeConstraint;
import org.reactome.server.graph.curator.domain.annotations.ReactomeInstanceDefiningValue;
import org.reactome.server.graph.curator.domain.annotations.ReactomeProperty;
import org.springframework.data.neo4j.core.schema.Node;

@Node
@SuppressWarnings("unused")
public class LiteratureReference extends Publication {

    private static final transient String PUBMED_URL = "http://www.ncbi.nlm.nih.gov/pubmed/";

    @ReactomeConstraint(constraint = ReactomeConstraint.Constraint.REQUIRED)
    @ReactomeProperty
    private String journal;

    @ReactomeConstraint(constraint = ReactomeConstraint.Constraint.OPTIONAL)
    @ReactomeProperty
    private String pages;

    @ReactomeConstraint(constraint = ReactomeConstraint.Constraint.REQUIRED)
    @ReactomeInstanceDefiningValue(category = "all")
    @ReactomeProperty
    private Integer pubMedIdentifier;

    @ReactomeConstraint(constraint = ReactomeConstraint.Constraint.OPTIONAL)
    @ReactomeProperty
    private Integer volume;

    @ReactomeConstraint(constraint = ReactomeConstraint.Constraint.MANDATORY)
    @ReactomeProperty
    private Integer year;

    public LiteratureReference() {}

    public LiteratureReference(Long dbId) { super(dbId); }

    public String getJournal() { return journal; }

    public void setJournal(String journal) {
        this.journal = journal;
    }

    public String getPages() { return pages; }

    public void setPages(String pages) {
        this.pages = pages;
    }

    public Integer getPubMedIdentifier() { return pubMedIdentifier; }

    public void setPubMedIdentifier(Integer pubMedIdentifier) {
        this.pubMedIdentifier = pubMedIdentifier;
    }

    public Integer getVolume() { return volume; }

    public void setVolume(Integer volume) {
        this.volume = volume;
    }

    public Integer getYear() { return year; }

    public void setYear(Integer year) {
        this.year = year;
    }

    public String getUrl() {
        if (pubMedIdentifier != null) {
            return PUBMED_URL + pubMedIdentifier;
        }
        return null;
    }

}
