import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../../config';
import { postFeedback, getFeedback, putFeedback } from 'src/view/dto';

@Injectable()
export class FeedbackEntity {
  constructor(private prisma: PrismaService) {}
  async postFeedback(input: postFeedback) {
    const data = {
      Feedback: {
        update: { Message: input.message, Author: input.author },
      },
    };
    await this.prisma.user.update({
      where: { UUID: input.uuid },
      data: data,
    });
  }
  async getFeedback(input: getFeedback) {
    return await this.prisma.feedback.findFirst({
      where: {
        idFeedback: input.id,
      },
    });
  }
  async putFeedback(input: putFeedback) {
    const data = {
      Feedback: {
        update: { Message: input.message },
      },
    };
    await this.prisma.user.update({
      where: { UUID: input.uuid },
      data: data,
    });
  }
}
