[Constructor(any handler)]
interface Promise {
	Promise then(any onFulfilled, optional any onRejected);
	Promise catch(any onRejected);
};