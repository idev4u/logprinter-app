import Kitura
import Foundation

setbuf(stdout, nil)
print("Gentleman start the engine ....")

let endpoint = Router()
let logmessage = "this line will be printed to stdout."
endpoint.get("/"){
    request, response, next in
    print(logmessage)
    response.send("Hello, [ \(logmessage) ] was writen.")
    next()
}

Kitura.addHTTPServer(onPort: 8080, with: endpoint)
Kitura.run()
