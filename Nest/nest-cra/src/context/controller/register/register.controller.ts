import { RegisterService } from 'src/context/service';
import { Controller, Post, Body } from '@nestjs/common';
import { ApiOkResponse, ApiOperation, ApiTags } from '@nestjs/swagger';
import { RegisterDto } from 'src/view/dto';

@ApiTags('Register')
@Controller('/Register')
export class RegisterController {
  constructor(private readonly service: RegisterService) {}

  @ApiOperation({
    summary: 'Router for Create new user',
  })
  @Post('/')
  async postRegister(@Body() input: RegisterDto) {
    return await this.service.postRegister(input);
  }
}
