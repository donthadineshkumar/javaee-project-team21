// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.example.entities;

import java.lang.String;

privileged aspect AdminUnitHierarchy_Roo_ToString {
    
    public String AdminUnitHierarchy.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("AdminUnit: ").append(getAdminUnit()).append(", ");
        sb.append("ChangedBy: ").append(getChangedBy()).append(", ");
        sb.append("ChangedDate: ").append(getChangedDate()).append(", ");
        sb.append("ClosedBy: ").append(getClosedBy()).append(", ");
        sb.append("ClosedDate: ").append(getClosedDate()).append(", ");
        sb.append("Comment: ").append(getComment()).append(", ");
        sb.append("DateTime: ").append(getDateTime()).append(", ");
        sb.append("FromDate: ").append(getFromDate()).append(", ");
        sb.append("Id: ").append(getId()).append(", ");
        sb.append("OpenedBy: ").append(getOpenedBy()).append(", ");
        sb.append("OpenedDate: ").append(getOpenedDate()).append(", ");
        sb.append("SubUnit: ").append(getSubUnit()).append(", ");
        sb.append("UntilDate: ").append(getUntilDate()).append(", ");
        sb.append("Version: ").append(getVersion());
        return sb.toString();
    }
    
}
