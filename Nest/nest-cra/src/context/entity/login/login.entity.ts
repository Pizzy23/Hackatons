import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../../config';
import { DisconnectDto, ConnectDto } from 'src/view/dto';

@Injectable()
export class LoginEntity {
  constructor(private prisma: PrismaService) {}
  async putDisconnect(input: DisconnectDto) {
    const data = {
      Login: {
        update: { IsLogged: false },
      },
    };
    await this.prisma.user.update({
      where: { UUID: input.uuid },
      data: data,
    });
  }

  async putConnect(input: ConnectDto) {
    const data = {
      Login: {
        update: { IsLogged: true },
      },
    };
    await this.prisma.user.update({
      where: { UUID: input.uuid },
      data: data,
    });
  }
}
