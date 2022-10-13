import pg from "pg"
import readline from "readline-sync"
import { creds } from "./creds.js"
const { Pool } = pg

const pool = new Pool(creds)


//const query = `select * from customers`

async function runQuery(query) {
    return await pool.query(query);
}

while (true) {
    const answer = readline.question('Run what?')
    let query = ""
    let result = ""
    switch (answer) {
        case "1": // 1. select * from customer
            query = "SELECT customerId,firstName, lastName FROM customers"
            const rows = await runQuery(query)
            console.table(rows.rows)
            break;
        case "2": // 2. add a new customer
            query = `INSERT INTO customers(
                firstName, lastName, phone, email)
                VALUES ('Emily', 'LaBelle', '5611234567', 'email@email.com');`
            result = await runQuery(query)
            console.log("user added")
            break;
        case "3": // 3. update that customer
            query = `UPDATE public.customers 
        SET firstname='Angela',
        lastname='LaBelle',
        -- 	email=?, 
        -- 	phone=?, 
        -- 	createdat=?, 
        updatedat=NOW()
	    WHERE customerid=10;`
            result = await runQuery(query)
            console.log("cutsomer updated")
            break;
        default:
            console.log("wat!")
            break;
    }
}