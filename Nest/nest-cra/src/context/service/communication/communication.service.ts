import { CommunicationEntity } from 'src/context/entity';
import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import {
  PostCommunicationDto,
  GetCommunicationDto,
  GetAllCommunicationDto,
} from 'src/view/dto';
@Injectable()
export class CommunicationService {
  constructor(private repository: CommunicationEntity) {}
  async postCommunication(input: PostCommunicationDto) {
    try {
      await this.repository.postCommunication(input);
      return {
        res: 'Novo post criado para sua empresa',
        status: HttpStatus.OK,
      };
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
  async getCommunication(input: GetCommunicationDto) {
    try {
      const res = await this.repository.getCommunication(input);
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
  async getAllCommunication(input: GetAllCommunicationDto) {
    try {
      const res = await this.repository.getAllCommunication(input);
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
}
