import { CommunicationService } from 'src/context/service';
import { Controller, Post, Body, Put, Get } from '@nestjs/common';
import { ApiOkResponse, ApiOperation, ApiTags } from '@nestjs/swagger';
import {
  GetCommunicationDto,
  GetAllCommunicationDto,
  PostCommunicationDto,
} from 'src/view/dto';

@ApiTags('Communication')
@Controller('/Communication')
export class CommunicationController {
  constructor(private readonly service: CommunicationService) {}

  @ApiOperation({
    summary: 'Router for Get unique post',
  })
  @Get('/')
  async getCommunication(@Body() input: GetCommunicationDto) {
    return await this.getCommunication(input);
  }

  @ApiOperation({
    summary: 'Router for Get All posts by company',
  })
  @Get('/All')
  async getAllCommunication(@Body() input: GetAllCommunicationDto) {
    return await this.getAllCommunication(input);
  }

  @ApiOperation({
    summary: 'Router for Add new post',
  })
  @Post('/')
  async postCommunication(@Body() input: PostCommunicationDto) {
    return await this.postCommunication(input);
  }
}
