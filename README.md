# WebStorm vs. tsc typechecking

The code in [index.js](index.js) is type checked.
For some reason `tsc` does NOT report a type error, even though there is one in the code.
But WebStorm does report a type error, see the picture below. 

![WebStorms typing error message](./webstorm-type-error.png)

How can I make `tsc` report this error too? Tbh I want this error to stop my code from being valid.