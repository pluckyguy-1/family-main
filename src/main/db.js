import { Client } from 'pg';

export default async () => {
  const client = new Client({
    user: 'postgres',
    password: 'student123',
    host: 'localhost',
    port: '5432',
    database: 'student2',
  });

  await client.connect();
  return client;
};
