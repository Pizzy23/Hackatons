import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../../config';
import {
  PostCommunicationDto,
  GetCommunicationDto,
  GetAllCommunicationDto,
} from 'src/view/dto';

@Injectable()
export class CommunicationEntity {
  constructor(private prisma: PrismaService) {}
  async postCommunication(input: PostCommunicationDto) {
    const data = {
      Communication: {
        update: { Post: input.post },
      },
    };
    await this.prisma.user.update({
      where: { UUID: input.uuid },
      data: data,
    });
  }
  async getCommunication(input: GetCommunicationDto) {
    return await this.prisma.communication.findFirst({
      where: { idCommunication: input.id },
    });
  }
  async getAllCommunication(input: GetAllCommunicationDto) {
    return await this.prisma.user.findMany({
      where: { UUID: input.uuid },
      include: {
        Projects: true,
      },
    });
  }
}
