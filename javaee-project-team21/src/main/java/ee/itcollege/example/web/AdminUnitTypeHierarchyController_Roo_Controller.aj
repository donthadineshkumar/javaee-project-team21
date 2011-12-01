// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package ee.itcollege.example.web;

import ee.itcollege.example.entities.AdminUnitType;
import ee.itcollege.example.entities.AdminUnitTypeHierarchy;
import java.io.UnsupportedEncodingException;
import java.lang.Integer;
import java.lang.Long;
import java.lang.String;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect AdminUnitTypeHierarchyController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST)
    public String AdminUnitTypeHierarchyController.create(@Valid AdminUnitTypeHierarchy adminUnitTypeHierarchy, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("adminUnitTypeHierarchy", adminUnitTypeHierarchy);
            addDateTimeFormatPatterns(uiModel);
            return "adminunittypehierarchys/create";
        }
        uiModel.asMap().clear();
        adminUnitTypeHierarchy.persist();
        return "redirect:/adminunittypehierarchys/" + encodeUrlPathSegment(adminUnitTypeHierarchy.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", method = RequestMethod.GET)
    public String AdminUnitTypeHierarchyController.createForm(Model uiModel) {
        uiModel.addAttribute("adminUnitTypeHierarchy", new AdminUnitTypeHierarchy());
        addDateTimeFormatPatterns(uiModel);
        return "adminunittypehierarchys/create";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String AdminUnitTypeHierarchyController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("adminunittypehierarchy", AdminUnitTypeHierarchy.findAdminUnitTypeHierarchy(id));
        uiModel.addAttribute("itemId", id);
        return "adminunittypehierarchys/show";
    }
    
    @RequestMapping(method = RequestMethod.GET)
    public String AdminUnitTypeHierarchyController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            uiModel.addAttribute("adminunittypehierarchys", AdminUnitTypeHierarchy.findAdminUnitTypeHierarchyEntries(page == null ? 0 : (page.intValue() - 1) * sizeNo, sizeNo));
            float nrOfPages = (float) AdminUnitTypeHierarchy.countAdminUnitTypeHierarchys() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("adminunittypehierarchys", AdminUnitTypeHierarchy.findAllAdminUnitTypeHierarchys());
        }
        addDateTimeFormatPatterns(uiModel);
        return "adminunittypehierarchys/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT)
    public String AdminUnitTypeHierarchyController.update(@Valid AdminUnitTypeHierarchy adminUnitTypeHierarchy, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            uiModel.addAttribute("adminUnitTypeHierarchy", adminUnitTypeHierarchy);
            addDateTimeFormatPatterns(uiModel);
            return "adminunittypehierarchys/update";
        }
        uiModel.asMap().clear();
        adminUnitTypeHierarchy.merge();
        return "redirect:/adminunittypehierarchys/" + encodeUrlPathSegment(adminUnitTypeHierarchy.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", method = RequestMethod.GET)
    public String AdminUnitTypeHierarchyController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("adminUnitTypeHierarchy", AdminUnitTypeHierarchy.findAdminUnitTypeHierarchy(id));
        addDateTimeFormatPatterns(uiModel);
        return "adminunittypehierarchys/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE)
    public String AdminUnitTypeHierarchyController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        AdminUnitTypeHierarchy.findAdminUnitTypeHierarchy(id).remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/adminunittypehierarchys";
    }
    
    @ModelAttribute("adminunittypes")
    public Collection<AdminUnitType> AdminUnitTypeHierarchyController.populateAdminUnitTypes() {
        return AdminUnitType.findAllAdminUnitTypes();
    }
    
    @ModelAttribute("adminunittypehierarchys")
    public Collection<AdminUnitTypeHierarchy> AdminUnitTypeHierarchyController.populateAdminUnitTypeHierarchys() {
        return AdminUnitTypeHierarchy.findAllAdminUnitTypeHierarchys();
    }
    
    void AdminUnitTypeHierarchyController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("adminUnitTypeHierarchy_openeddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("adminUnitTypeHierarchy_changeddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
        uiModel.addAttribute("adminUnitTypeHierarchy_closeddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    String AdminUnitTypeHierarchyController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        }
        catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}