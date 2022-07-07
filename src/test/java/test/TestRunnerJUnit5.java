package test;

import com.intuit.karate.junit5.Karate;

/**
 * Esta clase ejecutará los features que se encuentren especificados en
 * <code>Karate.run()</code> de acuerdo a la configuración de cada método y se
 * debe ejecutar como JUnit test y es compatible con JUnit5
 */
public class TestRunnerJUnit5 {

	/**
	 * Este método ejecuta el feature <code>junit5</code> contenidos en el mismo
	 * paquete de esta clase
	 */
	@Karate.Test
	public Karate testSample() {
		return Karate.run("junit5").relativeTo(getClass());
	}

	/**
	 * Este método ejecutará todos el feature <code>junit5</code> etiquetados con
	 * <code>@testTags</code> contenidos en el mismo paquete de esta clase
	 */
	@Karate.Test
	public Karate testTags() {
		return Karate.run("post").tags("@readFromFile").relativeTo(getClass());
//		return Karate.run().relativeTo(getClass()); //Ejecuta todos los features del paquete
	}
}
