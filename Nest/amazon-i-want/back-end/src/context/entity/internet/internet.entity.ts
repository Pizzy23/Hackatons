import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { PrismaService } from '../../../config';
import { MobileDto } from 'src/view/dto';

@Injectable()
export class InternetEntity {
  constructor(private prisma: PrismaService) {}
  async postNoInternet(input: MobileDto) {
    try {
      let manyQuest = await this.prisma.region.findFirst({
        where: { RegionName: input.region },
      });
      let internet = await this.prisma.noInternet.findFirst({
        where: { idNoInternet: manyQuest.NoInternet_idNoInternet },
      });
      switch (input.connectiontype) {
        case '3g':
          internet.No3G = internet.No3G + 1;
          break;
        case '4g':
          internet.No4G = internet.No4G + 1;
          break;
        case '5g':
          internet.No5G = internet.No5G + 1;
          break;
        case 'Fixed_internet':
          internet.No_Fixed_internet = internet.No_Fixed_internet + 1;
          break;
        default:
          break;
      }
      await this.prisma.noInternet.create({
        data: {
          Have3G: internet.Have3G,
          Have4G: internet.Have4G,
          Have5G: internet.Have5G,
          Have_Fixed_internet: internet.Have_Fixed_internet,
          No3G: internet.No3G,
          No4G: internet.No4G,
          No5G: internet.No5G,
          No_Fixed_internet: internet.No_Fixed_internet,
        },
      });
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
  async postInternet(input: MobileDto) {
    try {
      let manyQuest = await this.prisma.region.findFirst({
        where: { RegionName: input.region },
      });
      let internet = await this.prisma.noInternet.findFirst({
        where: { idNoInternet: manyQuest.NoInternet_idNoInternet },
      });
      switch (input.connectiontype) {
        case '3g':
          internet.Have3G = internet.Have3G + 1;
          break;
        case '4g':
          internet.Have4G = internet.Have4G + 1;
          break;
        case '5g':
          internet.Have5G = internet.Have5G + 1;
          break;
        case 'Fixed_internet':
          internet.Have_Fixed_internet = internet.Have_Fixed_internet + 1;
          break;
        default:
          break;
      }
      await this.prisma.noInternet.create({
        data: internet,
      });
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
