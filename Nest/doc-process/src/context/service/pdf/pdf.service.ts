import { Injectable } from '@nestjs/common';
import * as pdfExtract from 'pdf-extract';
import * as fs from 'fs';

@Injectable()
export class PdfService {
  constructor() {}

  async getPageFromPdf(
    file: Express.Multer.File,
    page: number,
  ): Promise<string> {
    const pdfPath = file.path;

    return new Promise((resolve, reject) => {
      const options = {
        type: 'text',
        combined: false, 
      };

      const processor =  pdfExtract(pdfPath, options, (err, data) => {
        if (err) {
          reject(new Error(`Error extracting text: ${err.message}`));
          return;
        }

        if (page > 0 && page <= data.length) {
          const text = data[page - 1];                                           
          console.log(text);
          resolve(text);
        } else {
          reject(
            new Error(`Invalid page number. The PDF has ${data.length} pages.`),
          );
        }
      });

      processor.on('error', (err) => {
        reject(new Error(`Error processing PDF: ${err.message}`));
      });
    });
  }
}
