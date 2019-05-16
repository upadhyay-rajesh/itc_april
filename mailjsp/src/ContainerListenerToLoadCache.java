import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class ContainerListenerToLoadCache implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		//here using first level cache load the data
		//and delete the file of second level cache
		
	}

	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		//create the file of second level cache
		//and using first level cache add the data to file
		
	}

}
//notes so whenever one server will stop there container will destroy, before destroying above method contextDestroy will run and copy the data into first level cache
//and provide services temporarily using first level, as your server startup will complete then create file inside contextInitialized method and run 