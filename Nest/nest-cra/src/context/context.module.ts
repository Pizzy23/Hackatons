import { Module } from '@nestjs/common';
import { UtilModule } from 'src/util/util.module';

import { EntityModule } from './entity/entity.module';
import {
  CommunicationService,
  FeedbackService,
  LoginService,
  ProjectsService,
  RegisterService,
} from './service';
import {
  CommunicationController,
  FeedbackController,
  LoginController,
  ProjectsController,
  RegisterController,
} from './controller';

@Module({
  imports: [EntityModule, UtilModule],
  controllers: [
    CommunicationController,
    FeedbackController,
    LoginController,
    ProjectsController,
    RegisterController,
  ],
  providers: [
    CommunicationService,
    FeedbackService,
    LoginService,
    ProjectsService,
    RegisterService,
  ],
})
export class ContextModule {}
