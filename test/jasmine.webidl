[Global]
interface jasmine {
	void describe(String title, any nested);
	void it(String title, any nested);
	void fail(String reason);
	expectation expect(any value);	
};

interface expectation {
	void toBe(any value);	
};