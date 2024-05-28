import { FeedbackService } from 'src/context/service';
import { Controller, Post, Body, Put, Get } from '@nestjs/common';
import { ApiOkResponse, ApiOperation, ApiTags } from '@nestjs/swagger';
import { putFeedback, postFeedback, getFeedback } from 'src/view/dto';

@ApiTags('Feedback')
@Controller('/Feedback')
export class FeedbackController {
  constructor(private readonly service: FeedbackService) {}

  @ApiOperation({
    summary: 'Router for change message in feedback',
  })
  @Put('/')
  async putFeedback(@Body() input: putFeedback) {
    return await this.service.putFeedback(input);
  }

  @ApiOperation({
    summary: 'Router for add new feedback',
  })
  @Post('/')
  async postFeedback(@Body() input: postFeedback) {
    return await this.service.postFeedback(input);
  }

  @ApiOperation({
    summary: 'Router for get your feedback',
  })
  @Get('/')
  async getFeedback(@Body() input: getFeedback) {
    return await this.service.getFeedback(input);
  }
}
