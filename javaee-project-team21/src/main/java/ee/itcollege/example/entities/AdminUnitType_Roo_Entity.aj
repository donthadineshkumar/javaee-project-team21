// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.example.entities;

import ee.itcollege.example.entities.AdminUnitType;
import java.lang.Integer;
import java.lang.Long;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Version;
import org.springframework.transaction.annotation.Transactional;

privileged aspect AdminUnitType_Roo_Entity {
    
    @PersistenceContext
    transient EntityManager AdminUnitType.entityManager;
    
    @Version
    @Column(name = "version")
    private Integer AdminUnitType.version;
    
    public Long AdminUnitType.getId() {
        return this.id;
    }
    
    public void AdminUnitType.setId(Long id) {
        this.id = id;
    }
    
    public Integer AdminUnitType.getVersion() {
        return this.version;
    }
    
    public void AdminUnitType.setVersion(Integer version) {
        this.version = version;
    }
    
    @Transactional
    public void AdminUnitType.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void AdminUnitType.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            AdminUnitType attached = AdminUnitType.findAdminUnitType(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void AdminUnitType.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void AdminUnitType.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public AdminUnitType AdminUnitType.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        AdminUnitType merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
    public static final EntityManager AdminUnitType.entityManager() {
        EntityManager em = new AdminUnitType().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long AdminUnitType.countAdminUnitTypes() {
        return entityManager().createQuery("SELECT COUNT(o) FROM AdminUnitType o", Long.class).getSingleResult();
    }
    
    public static List<AdminUnitType> AdminUnitType.findAllAdminUnitTypes() {
        return entityManager().createQuery("SELECT o FROM AdminUnitType o", AdminUnitType.class).getResultList();
    }
    
    public static AdminUnitType AdminUnitType.findAdminUnitType(Long id) {
        if (id == null) return null;
        return entityManager().find(AdminUnitType.class, id);
    }
    
    public static List<AdminUnitType> AdminUnitType.findAdminUnitTypeEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM AdminUnitType o", AdminUnitType.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
}