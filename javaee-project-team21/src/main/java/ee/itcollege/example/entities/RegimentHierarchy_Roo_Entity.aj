// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.example.entities;

import ee.itcollege.example.entities.RegimentHierarchy;
import java.lang.Long;
import java.util.List;

privileged aspect RegimentHierarchy_Roo_Entity {
    
    public static long RegimentHierarchy.countRegimentHierarchys() {
        return entityManager().createQuery("SELECT COUNT(o) FROM RegimentHierarchy o", Long.class).getSingleResult();
    }
    
    public static List<RegimentHierarchy> RegimentHierarchy.findAllRegimentHierarchys() {
        return entityManager().createQuery("SELECT o FROM RegimentHierarchy o", RegimentHierarchy.class).getResultList();
    }
    
    public static RegimentHierarchy RegimentHierarchy.findRegimentHierarchy(Long id) {
        if (id == null) return null;
        return entityManager().find(RegimentHierarchy.class, id);
    }
    
    public static List<RegimentHierarchy> RegimentHierarchy.findRegimentHierarchyEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM RegimentHierarchy o", RegimentHierarchy.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}
