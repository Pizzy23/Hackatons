import { InternetEntity } from 'src/context/entity';
import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { MobileDto } from 'src/view/dto';
@Injectable()
export class InternetService {
  constructor(private repository: InternetEntity) {}

  async putInternet(input: MobileDto) {
    await this.repository.postInternet(input);
    return { res: 'Zona com internet foi adicionado', status: 200 };
  }
  async putNoInternet(input: MobileDto) {
    await this.repository.postNoInternet(input);
    return { res: 'Zona sem internet foi adicionado', status: 200 };
  }
}
