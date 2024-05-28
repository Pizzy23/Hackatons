import { Injectable } from '@nestjs/common';
import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsObject, IsString } from 'class-validator';

@Injectable()
export class postFeedback {
  @ApiProperty()
  @IsString()
  uuid: string;
  @ApiProperty()
  @IsString()
  message: string;
  @ApiProperty()
  @IsString()
  author: string;
}
export class getFeedback {
  @ApiProperty()
  @IsString()
  id: number;
}
export class putFeedback {
  @ApiProperty()
  @IsString()
  id: number;

  @ApiProperty()
  @IsString()
  uuid: string;

  @ApiProperty()
  @IsString()
  message: string;
}
