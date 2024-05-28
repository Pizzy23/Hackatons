import { Module } from '@nestjs/common';
import { UtilModule } from 'src/util/util.module';

import { PdfService } from './service';
import { PdfController } from './controller';

@Module({
  imports: [UtilModule],
  controllers: [PdfController],
  providers: [PdfService],
})
export class ContextModule {}
