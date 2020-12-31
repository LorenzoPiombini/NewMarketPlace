let bodyParser = require('body-parser');
let app = require('express')();
let port = 3003;

app.use(bodyParser.json());


let ProductInfo = [
    { type: "sss", typeDescription: "s", productCode: "s", brand: "s", sizeAndFit: "s", washingInfo: "s", aboutMe: "s" }
    
]

let Products = [
    {id:1, description:"an amazing product", price: "2,400.00", size:"medium", category:"jacket", photoName:"louisvuittonItem1.jpeg", productinfo:ProductInfo   },
    {id:2, description:"an amazing product", price: "2,400.00", size:"medium", category:"jacket", photoName:"louisvuittonItem2.jpeg", productinfo:ProductInfo   },
    {id:3, description:"an amazing product", price: "2,400.00", size:"medium", category:"jacket", photoName:"louisvuittonItem1.jpeg", productinfo:ProductInfo   },
    {id:4, description:"an amazing product", price: "2,400.00", size:"medium", category:"jacket", photoName:"louisvuittonItem1.jpeg", productinfo:ProductInfo   }
]

let shops = [
    
    {name:"MaxMara",  address:"1200 Morris turnpike 07078 Short Hills", phoneNumber: "973 609 9071", photo:"maxMaraLogo.png", products:Products },
    {name:"Louis Vuitton",  address:"1200 Morris turnpike 07078 Short Hills", phoneNumber: "973 609 9071", photo:"louisVuittonLogo.png", products:Products },
    {name:"Hermes",  address:"1200 Morris turnpike 07078 Short Hills", phoneNumber: "973 609 9071", photo:"hermesLogo.jpg", products:Products },
    {name:"Kendra Scott",  address:"1200 Morris turnpike 07078 Short Hills", phoneNumber: "973 609 9071", photo:"kendra-scott-logo.jpg", products:Products }
]

app.get('/', (request, response) => response.send({items: shops}))

app.post('/add', (request, response) => {
    if (request.body && request.body.item !== "") {
        todos.push(request.body);
        console.log(shops);
        response.send({items: todos});
    } else {
        response.status(400).send({message: "Todo item must have a title"})
    }
    
});

app.listen(port, () => console.log(`Example app listening on port ${port}!`))
