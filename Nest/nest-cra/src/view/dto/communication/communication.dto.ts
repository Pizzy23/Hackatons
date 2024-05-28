import { Injectable } from '@nestjs/common';
import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsObject, IsString } from 'class-validator';

@Injectable()
export class PostCommunicationDto {
  @ApiProperty()
  @IsString()
  post: string;
  @ApiProperty()
  @IsString()
  uuid: string;
}
export class GetAllCommunicationDto {
  @ApiProperty()
  @IsString()
  uuid: string;
}
export class GetCommunicationDto {
  @ApiProperty()
  @IsString()
  id: number;
}
