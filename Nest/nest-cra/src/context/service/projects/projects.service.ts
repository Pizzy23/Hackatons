import { ProjectsEntity } from 'src/context/entity';
import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import {
  GetProjectsDto,
  PostProjectsDto,
  PutProjectsDto,
  GetAllProjectsDto,
} from 'src/view/dto';

@Injectable()
export class ProjectsService {
  constructor(private repository: ProjectsEntity) {}
  async getProjects(input: GetProjectsDto) {
    try {
      const res = await this.repository.getProjects(input);
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
  async postProjects(input: PostProjectsDto) {
    try {
      const res = await this.repository.postProjects(input);
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
  async putStatusProjects(input: PutProjectsDto) {
    try {
      const res = await this.repository.putStatusProjects(input);
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
  async getAllProjects(input: GetAllProjectsDto) {
    try {
      const res = await this.repository.getAllProjects(input);
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
