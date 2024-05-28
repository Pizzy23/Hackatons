
import { Injectable } from '@nestjs/common';
import { ApiProperty } from '@nestjs/swagger';
import { IsNumber, IsObject, IsString } from 'class-validator';

@Injectable()
export class ConnectDto {
  @ApiProperty()
  @IsString()
  uuid: string;
}
export class DisconnectDto {
  @ApiProperty()
  @IsString()
  uuid: string;
}