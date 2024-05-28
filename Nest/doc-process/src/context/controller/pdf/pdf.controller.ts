import { PdfService } from 'src/context/service';

import {
  Controller,
  Post,
  UploadedFile,
  UseInterceptors,
  Headers,
  Body,
} from '@nestjs/common';
import { FileInterceptor } from '@nestjs/platform-express';
import { ApiConsumes, ApiBody, ApiTags } from '@nestjs/swagger';
import { Express } from 'express';
import { diskStorage } from 'multer';
import { getPageFromPdf } from 'src/view/dto';

@ApiTags('Pdf')
@Controller('/Pdf')
export class PdfController {
  constructor(private readonly service: PdfService) {}

  @Post('upload')
  @ApiConsumes('multipart/form-data')
  @UseInterceptors(
    FileInterceptor('file_asset', {
      storage: diskStorage({
        destination: './files/',
      }),
    }),
  )
  @ApiBody({
    schema: {
      type: 'object',
      properties: {
        file_asset: {
          type: 'string',
          format: 'binary',
        },
      },
    },
  })
  async getPageFromPdf(
    @UploadedFile() file: Express.Multer.File,
    @Headers() page: getPageFromPdf,
  ): Promise<string> {
    const response = await this.service.getPageFromPdf(file, page.page);
    return response;
  }
}
