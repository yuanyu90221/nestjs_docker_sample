# nestjs_docker_sample

This is project is for proof that nestjs no need to specify 0.0.0.0 to accept all source ip from outside


## Example

```typescript
import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  await app.listen(3000);
}
bootstrap();

```

## run
```shell
docker-compose up -d
```
