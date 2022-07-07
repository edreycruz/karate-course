function configure() {
	//Aqui se configuran variables de los features
	var config = {
		name: "Edrey",
		baseUrl: "https://reqres.in/api/"
	};

	//El valor de karate.env se define en la clase TestRunner.java
	// o al ejecutar la fase test con Maven
	var env = karate.env;

	karate.log("Value of env is ", env);

	if (env != null) {
		config.baseUrl = config.baseUrl + env;
	}

	//Aqui se configuran valores para el framework
	karate.configure("connectTimeout", 500);
	karate.configure("readTimeout", 500);

	return config;
}