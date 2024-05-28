import { MiddlewareConsumer, Module, NestModule } from '@nestjs/common';
import { ContextModule } from './context/context.module';
import {
  RequestLoggerMiddleware,
  RateLimitMiddleware,
} from './config';
import { HttpExceptionFilter } from './config/middleware/http-catcher';
import { APP_FILTER } from '@nestjs/core';

@Module({
  imports: [ ContextModule],
  providers: [
    {
      provide: APP_FILTER,
      useClass: HttpExceptionFilter,
    },
  ],
})
export class AppModule implements NestModule {
  configure(consumer: MiddlewareConsumer) {
    consumer.apply(RequestLoggerMiddleware).forRoutes('*');
    consumer.apply(RateLimitMiddleware).forRoutes('*');
  }
}
