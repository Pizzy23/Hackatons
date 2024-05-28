import { RegisterEntity } from 'src/context/entity';
import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { RegisterDto } from 'src/view/dto';

@Injectable()
export class RegisterService {
  constructor(private repository: RegisterEntity) {}
  async postRegister(input: RegisterDto) {
    try {
      await this.repository.postRegister(input);
      return { res: 'Usuario criado', status: HttpStatus.OK };
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
