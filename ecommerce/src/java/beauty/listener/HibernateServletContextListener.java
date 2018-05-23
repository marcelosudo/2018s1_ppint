/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beauty.listener;

import java.net.URL;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

public class HibernateServletContextListener implements ServletContextListener {

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        SessionFactory sf = (SessionFactory) sce.getServletContext().getAttribute("SessionFactory");
        sf.close();
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        URL url = HibernateServletContextListener.class.getResource("/hibernate.cfg.xml");
        Configuration config = new Configuration();
        config.configure(url);
        ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                .applySettings(config.getProperties()).build();
        SessionFactory sf = config.buildSessionFactory(serviceRegistry);
        sce.getServletContext().setAttribute("SessionFactory", sf);
    }

}
