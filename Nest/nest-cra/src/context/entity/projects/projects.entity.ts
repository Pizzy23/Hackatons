import { Injectable } from '@nestjs/common';
import { PrismaService } from '../../../config';
import {
  GetProjectsDto,
  PostProjectsDto,
  PutProjectsDto,
  GetAllProjectsDto,
} from 'src/view/dto';

@Injectable()
export class ProjectsEntity {
  constructor(private prisma: PrismaService) {}

  async getProjects(input: GetProjectsDto) {
    const project = await this.prisma.projects.findFirst({
      where: { idProjects: input.id },
    });
    return project;
  }
  async postProjects(input: PostProjectsDto) {
    const data = {
      Projects: {
        update: { project: input.project, status: 'Em processo' },
      },
    };
    await this.prisma.user.update({
      where: { UUID: input.uuid },
      data: data,
    });
  }
  async putStatusProjects(input: PutProjectsDto) {
    const where = { idProjects: input.id };
    const data = {
      update: { status: input.status },
    };
    await this.prisma.projects.update({
      where: where,
      data: data,
    });
  }

  async getAllProjects(input: GetAllProjectsDto) {
    return await this.prisma.user.findMany({
      where: { UUID: input.uuid },
      include: {
        Projects: true,
      },
    });
  }
}
