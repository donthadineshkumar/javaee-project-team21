// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.example.entities;

import ee.itcollege.example.entities.Regiment;
import java.lang.Long;
import java.util.List;

privileged aspect Regiment_Roo_Entity {
    
    public static long Regiment.countRegiments() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Regiment o", Long.class).getSingleResult();
    }
    
    public static List<Regiment> Regiment.findAllRegiments() {
        return entityManager().createQuery("SELECT o FROM Regiment o", Regiment.class).getResultList();
    }
    
    public static Regiment Regiment.findRegiment(Long id) {
        if (id == null) return null;
        return entityManager().find(Regiment.class, id);
    }
    
    public static List<Regiment> Regiment.findRegimentEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Regiment o", Regiment.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
