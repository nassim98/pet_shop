package pet.shop.properties;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * The PropertiesManager Class  Presents Methods to  Read properties files
 */
public class PropertiesManager {
	/**
	 * The getProperties() Method  Read properties files
	 * @param Url
	 * @return Properties
	 * @throws IOException
	 */
	public  static  Properties  getProperties(String Url) throws IOException {

		ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
		InputStream input = classLoader.getResourceAsStream(Url);
		
		Properties properties = new Properties();
		properties.load(input);
		
		return properties;
	}
	public  static  Properties  getDataBaseProperties() throws IOException {

		return getProperties("pet/shop/properties/database.properties");
	}

}
