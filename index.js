const koa = require('koa')
const app = new koa()

app.use(function* (ctx) {
    console.log(`请求参数；${JSON.stringify(this)}`)
    this.body = `请求进来的参数为：${this.request.url}`
})

app.listen(30003)