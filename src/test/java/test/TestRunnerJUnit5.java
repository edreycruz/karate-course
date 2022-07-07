package test;

import com.intuit.karate.junit5.Karate;

/**
 * Esta clase ejecutará todos los features que se encuentren especificados en
 * <code>Karate.run()</code> y se debe ejecutar como JUnit test y es compatible
 * con JUnit5
 */
public class TestRunnerJUnit5 {

	@Karate.Test
	public Karate testSample() {
		return Karate.run("junit5").relativeTo(getClass());
	}
	
	@Karate.Test
	public Karate testTags() {
		return Karate.run("junit5").tags("@testTags").relativeTo(getClass());
	}
}
