import { Injectable } from '@nestjs/common';
import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsObject, IsString } from 'class-validator';

@Injectable()
export class PostProjectsDto {
  @ApiProperty()
  @IsString()
  uuid: string;

  @ApiProperty()
  @IsString()
  project: string;

  @ApiProperty()
  @IsString()
  status: string;
}
export class GetProjectsDto {
  @ApiProperty()
  @IsString()
  id: number;
}
export class GetAllProjectsDto {
  @ApiProperty()
  @IsString()
  uuid: string;
}
export class PutProjectsDto {
  @ApiProperty()
  @IsString()
  uuid: string;
  @ApiProperty()
  @IsString()
  id: number;
  @ApiProperty()
  @IsString()
  status: string;
}
