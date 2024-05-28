import { LoginEntity } from 'src/context/entity';
import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { ConnectDto, DisconnectDto } from 'src/view/dto';
@Injectable()
export class LoginService {
  constructor(private repository: LoginEntity) {}
  async putConnect(input: ConnectDto) {
    try {
      await this.repository.putConnect(input);
      return { res: 'Usuario connectado', status: HttpStatus.OK };
    } catch (e) {
      throw new HttpException(
        'Generic Error',
        HttpStatus.INTERNAL_SERVER_ERROR,
        {
          cause: new Error(e),
        },
      );
    }
  }
  async putDisconnect(input: DisconnectDto) {
    try {
      await this.repository.putDisconnect(input);
      return { res: 'Usuario connectado', status: HttpStatus.OK };
    } catch (e) {
      throw new HttpException(
        'Generic Error',
        HttpStatus.INTERNAL_SERVER_ERROR,
        {
          cause: new Error(e),
        },
      );
    }
  }
}
