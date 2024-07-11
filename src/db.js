import { createPool } from "mysql2/promise";

const dbConfig = {
  host: "database-test.c0r91riiurqf.us-east-1.rds.amazonaws.com",
  user: "admin",
  password: "diego123",
  port: 3306,
  database: "vilaSur"
};

export const pool = createPool(dbConfig);
