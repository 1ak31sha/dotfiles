setState() called within a Component will tell React to trigger the proper re-rendering.
It will also invoke the lifecycle methods, and those methods’ control on the rendering process.
or example, if setState() is called within componentWillMount(), the state update will be synchronous, and the Component will only render once.
If called within componentWillReceiveProps(), there will not be an additional render. It will also not render if shouldComponentUpdate() returns false.

forceUpdate(), on the other hand, completely overrules the rendering process and queues up a new render for React to display to the screen; it will also not call shouldComponentUpdate().

In most cases, you should use setState() unless your code is setup to need a bypass for shouldComponentUpdate().
As per the React docs, if your render() method reads from something other than this.
props or this.state, such as if your Component has access to a shared variable that holds a Backbone Model, Redux Store, Ember Model, etc.
In these cases, you’ll need to likely use forceUpdate(). It’s worth noting that you should never mutate this.state directly.
