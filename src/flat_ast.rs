use crate::ast::Expression;
use serde::{Deserialize, Serialize};

#[derive(Clone, Debug, PartialEq, Default, Serialize, Deserialize)]
pub struct Model {
    pub name: String,
    pub description: String,
    pub c: Vec<Component>,
    pub x: Vec<Component>,
    pub z: Vec<Component>,
    pub u: Vec<Component>,
    pub y: Vec<Component>,
    pub p: Vec<Component>,
    pub ode: Vec<Expression>,
    pub alg: Vec<Expression>,
}

#[derive(Clone, Debug, PartialEq, Serialize, Deserialize)]
pub struct Component {
    pub name: String,
    pub start: Box<Expression>,
    pub array_subscripts: Vec<Box<Expression>>,
}
