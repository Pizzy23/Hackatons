import { LoginService } from 'src/context/service';
import { Controller, Put, Body } from '@nestjs/common';
import { ApiOkResponse, ApiOperation, ApiTags } from '@nestjs/swagger';
import { DisconnectDto, ConnectDto } from 'src/view/dto';

@ApiTags('Login')
@Controller('/Login')
export class LoginController {
  constructor(private readonly service: LoginService) {}

  @ApiOperation({
    summary: 'Router for disconnect user',
  })
  @Put('/dis')
  async putDisconnect(@Body() input: DisconnectDto) {
    return await this.service.putDisconnect(input);
  }
  @ApiOperation({
    summary: 'Router for connect user',
  })
  @Put('/log')
  async putConnect(@Body() input: ConnectDto) {
    return await this.service.putConnect(input);
  }
}
