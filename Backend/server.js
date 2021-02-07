const express = require("express");
const app = express();
const mongoose = require("mongoose");
const { graphqlHTTP } = require("express-graphql");
const userSchema = require("./src/graphql/UserSchema").UserSchema;

mongoose.set("useUnifiedTopology", true);
mongoose.set("useFindAndModify", true);
mongoose.set("setDefaultsOnInsert", true);
mongoose.connect("mongodb://mongo/myappdb", (err) => {
  if (err) throw err;
  console.log("connected to mongo");
});

app.set("port", process.env.PORT || 4000);
app.listen(app.get("port"), () => {
  console.log("Node app is running at localhost:" + app.get("port"));
});

app.use(
  "/graphql",
  graphqlHTTP({
    schema: userSchema,
    rootValue: global,
    graphiql: true,
  })
);
