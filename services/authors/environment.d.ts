declare global {
namespace NodeJS{
interface ProcessEnv{
PORT: number;
 REDIS_HOST: string;
 REDIS_PORT: number; 
 REDIS_PASSWORD: string;
 MONGODB_PASSWORD: string;
 MONGODB_USERNAME: string;}}}
export {}
