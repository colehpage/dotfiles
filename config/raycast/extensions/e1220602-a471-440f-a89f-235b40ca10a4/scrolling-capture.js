"use strict";var t=Object.defineProperty;var e=Object.getOwnPropertyDescriptor;var i=Object.getOwnPropertyNames;var s=Object.prototype.hasOwnProperty;var p=(a,o)=>{for(var n in o)t(a,n,{get:o[n],enumerable:!0})},u=(a,o,n,c)=>{if(o&&typeof o=="object"||typeof o=="function")for(let l of i(o))!s.call(a,l)&&l!==n&&t(a,l,{get:()=>o[l],enumerable:!(c=e(o,l))||c.enumerable});return a};var d=a=>u(t({},"__esModule",{value:!0}),a);var m={};p(m,{default:()=>f});module.exports=d(m);var r=require("@raycast/api"),f=async()=>{(0,r.open)("cleanshot://scrolling-capture"),await(0,r.closeMainWindow)()};0&&(module.exports={});