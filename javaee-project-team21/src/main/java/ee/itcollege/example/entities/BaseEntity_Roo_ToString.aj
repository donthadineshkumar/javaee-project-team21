// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.example.entities;

import java.lang.String;

privileged aspect BaseEntity_Roo_ToString {
    
    public String BaseEntity.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DateTime: ").append(getDateTime()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("OpenedBy: ").append(getOpenedBy()).append(", ");
        sb.append("OpenedDate: ").append(getOpenedDate()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}