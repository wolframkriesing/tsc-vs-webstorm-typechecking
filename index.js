/// <reference path="./index.d.ts"/>

/**
 * @param {object} data
 */
const fn = (data) => {
  /** @type {ComplexObject} */
  const x = {...data};
  console.log(x);
};

fn({});