import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../../config';

@Injectable()
export class RegisterEntity {
  constructor(private prisma: PrismaService) {}
  async postRegister(input) {
    const data = {
      Email: input,
      Score: '0',
      UUID: input,
      Feedback: {
        create: {
          Message: '',
          Author: '',
        },
      },
      Projects: {
        create: {
          Project: '',
          Status: '',
        },
      },
      Communication: {
        create: {
          Company: input.company,
          Post: '',
        },
      },
      Login: {
        create: {
          IsLogged: true,
        },
      },

      include: {
        Feedback: true,
        Projects: true,
        Communication: true,
        Login: true,
      },
    };
    await this.prisma.user.create({
      data: data,
    });
  }
}
