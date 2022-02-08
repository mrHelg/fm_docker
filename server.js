const app = require('express')();

app.use((req, res) => {
  res.send('Hi Elon Musk!');
});

const PORT = process.env.PORT || 3000;

app.listen(PORT);
