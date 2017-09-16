package AuiDemo.portlet;

import AuiDemo.constants.AuiDemoPortletKeys;

import com.liferay.portal.kernel.portlet.bridges.mvc.MVCPortlet;

import javax.portlet.Portlet;

import org.osgi.service.component.annotations.Component;
import javax.portlet.ActionRequest;
import javax.portlet.ActionResponse;
import javax.portlet.ProcessAction;

/**
 * @author ravi.rajamani
 */
@Component(
	immediate = true,
	property = {
		"com.liferay.portlet.display-category=category.sample",
		"com.liferay.portlet.instanceable=true",
		"javax.portlet.display-name=AuiDemo Portlet",
		"javax.portlet.init-param.template-path=/",
		"javax.portlet.init-param.view-template=/view.jsp",
		"javax.portlet.name=" + AuiDemoPortletKeys.AuiDemo,
		"javax.portlet.resource-bundle=content.Language",
		"javax.portlet.security-role-ref=power-user,user"
	},
	service = Portlet.class
)
public class AuiDemoPortlet extends MVCPortlet {

	@ProcessAction(name = "updateData")
	public void updateData(ActionRequest actionRequest, ActionResponse actionResponse) {
		
		System.out.println("control is coming");
	}
}