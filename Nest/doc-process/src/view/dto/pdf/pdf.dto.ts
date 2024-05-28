import { Injectable } from '@nestjs/common';
import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsObject, IsString, isNumber } from 'class-validator';

@Injectable()
export class getPageFromPdf {
  @ApiProperty()
  @IsNumber()
  page: number;
}
