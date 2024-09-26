package itstep.learning.ioc;


import com.google.inject.servlet.GuiceFilter;
import com.google.inject.servlet.ServletModule;
import itstep.learning.filters.AccessControlFilter;
import itstep.learning.filters.CharsetFilter;
import itstep.learning.servlets.HomeServlet;
import itstep.learning.servlets.ServletsServlet;
import itstep.learning.servlets.SignupServlet;

public class WebModule extends ServletModule {

    @Override
    protected void configureServlets() {
        filter( "/*" ).through( CharsetFilter.class );
        filter("/*").through(AccessControlFilter.class);
        serve( "/"         ).with( HomeServlet.class     );
        serve( "/servlets" ).with( ServletsServlet.class );
        serve( "/signup"   ).with( SignupServlet.class   );

    }
}
