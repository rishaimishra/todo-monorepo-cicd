import { prismaClient } from "db/client";



export default async function Home() {
  // const users = await prismaClient.user.findMany();
  const users = {    name: "John Doe",
    username: "johndoe",
    password: "password123"};
  return (
    <div>
     {JSON.stringify(users) ?? "No users found"}
    </div>
  );
}
