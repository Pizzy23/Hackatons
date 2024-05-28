import { FeedbackEntity } from 'src/context/entity';
import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { postFeedback, getFeedback, putFeedback } from 'src/view/dto';
@Injectable()
export class FeedbackService {
  constructor(private repository: FeedbackEntity) {}
  async postFeedback(input: postFeedback) {
    try {
      await this.repository.postFeedback(input);
      return { res: 'Post criado', status: HttpStatus.OK };
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
  async getFeedback(input: getFeedback) {
    try {
      const res = await this.getFeedback(input);
      return { res: res, status: HttpStatus.OK };
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
  async putFeedback(input: putFeedback) {
    try {
      await this.putFeedback(input)
      return { res: 'Texto alterado', status: HttpStatus.OK };
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
