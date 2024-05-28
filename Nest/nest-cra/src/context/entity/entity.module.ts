import { Module } from '@nestjs/common';
import { PrismaService } from 'src/config';
import {
  CommunicationEntity,
  FeedbackEntity,
  LoginEntity,
  ProjectsEntity,
  RegisterEntity,
} from '.';

@Module({
  exports: [
    PrismaService,
    CommunicationEntity,
    FeedbackEntity,
    LoginEntity,
    ProjectsEntity,
    RegisterEntity,
  ],
  providers: [
    PrismaService,
    CommunicationEntity,
    FeedbackEntity,
    LoginEntity,
    ProjectsEntity,
    RegisterEntity,
  ],
})
export class EntityModule {}
