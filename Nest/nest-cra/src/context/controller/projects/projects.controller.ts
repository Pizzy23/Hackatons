import { ProjectsService } from 'src/context/service';
import { Controller, Post, Body, Get, Put, Headers } from '@nestjs/common';
import { ApiOkResponse, ApiOperation, ApiTags } from '@nestjs/swagger';
import {
  GetAllProjectsDto,
  GetProjectsDto,
  PostProjectsDto,
  PutProjectsDto,
} from 'src/view/dto';

@ApiTags('Projects')
@Controller('/Projects')
export class ProjectsController {
  constructor(private readonly service: ProjectsService) {}

  @ApiOperation({
    summary: 'Router for create Projects',
  })
  @Post('/')
  async postProjects(@Body() input: PostProjectsDto) {
    return await this.service.postProjects(input);
  }

  @ApiOperation({
    summary: 'Router for get create projects by id projects',
  })
  @Get('/')
  async getProjects(@Headers() input: GetProjectsDto) {
    return await this.service.getProjects(input);
  }

  @ApiOperation({
    summary: 'Router for get all project by user email',
  })
  @Get('/All')
  async getAllProjects(@Headers() input: GetAllProjectsDto) {
    return await this.service.getAllProjects(input);
  }

  @ApiOperation({
    summary: 'Router for change status for determined user',
  })
  @Put('/')
  async putProjects(@Body() input: PutProjectsDto) {
    return await this.service.putStatusProjects(input);
  }
}
