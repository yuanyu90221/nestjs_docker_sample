import { Injectable, Logger } from '@nestjs/common';

@Injectable()
export class AppService {
  private logger: Logger = new Logger(AppService.name);
  getHello(): string {
    this.logger.log({ test: 'test' });
    return 'Hello World!';
  }
}
