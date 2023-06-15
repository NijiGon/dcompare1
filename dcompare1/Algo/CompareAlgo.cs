using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Algo
{
    public class CompareAlgo
    {
        public static int chooseWinner2Device(double? n1, double? n2)
        {
            if(n1 == n2 || (n1 == null && n2 == null))
            {
                return 0;
            }
            else
            {
                if(n1 > n2 || n2 == null)
                {
                    return 1;
                }
                return 2;
            }
        }
        public static int chooseWinner2DeviceInv(double? n1, double? n2)
        {
            if (n1 == n2 || (n1 == null && n2 == null))
            {
                return 0;
            }
            else
            {
                if (n1 < n2 || n2 == null)
                {
                    return 1;
                }
                return 2;
            }
        }
        public static int compareDimension(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.Dimension1.length, d2.Dimension1.length);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Dimension1.width, d2.Dimension1.width);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Dimension1.height, d2.Dimension1.height);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareDisplay(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.Display1.height, d2.Display1.height);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Display1.width, d2.Display1.width);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Display1.refresh_rate, d2.Display1.refresh_rate);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Display1.size, d2.Display1.size);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareAudio(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.Audio1.quantity, d2.Audio1.quantity);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareProcessor(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.Processor1.clock_speed, d2.Processor1.clock_speed);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Processor1.cores, d2.Processor1.cores);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Processor1.threads, d2.Processor1.threads);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareGraphics(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.Graphic.wattage, d2.Graphic.wattage);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Graphic.clock_speed, d2.Graphic.clock_speed);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Graphic.vram, d2.Graphic.vram);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareMemory(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.Memory1.size, d2.Memory1.size);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Memory1.channel, d2.Memory1.channel);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Memory1.max_capacity, d2.Memory1.max_capacity);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareStorage(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.Storage1.size, d2.Storage1.size);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.Storage1.max_caoacity, d2.Storage1.max_caoacity);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareFCamera(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.fCamera1.resolution, d2.fCamera1.resolution);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.fCamera1.megapixels, d2.fCamera1.megapixels);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.fCamera1.frame_rate, d2.fCamera1.frame_rate);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int compareRCamera(Device d, Device d2)
        {
            int sub1 = 0, sub2 = 0;
            int temp;
            temp = chooseWinner2Device(d.rCamera1.resolution, d2.rCamera1.resolution);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.rCamera1.megapixels, d2.rCamera1.megapixels);
            conditional(temp, ref sub1, ref sub2);
            temp = chooseWinner2Device(d.rCamera1.frame_rate, d2.rCamera1.frame_rate);
            conditional(temp, ref sub1, ref sub2);
            return chooseWinner2Device(sub1, sub2);
        }
        public static int realWinner(int dimensionWinner, int displayWinner, int audioWinner, int processorWinner, int graphicsWinner, int ramWinner, int storageWinner, int fcameraWinner, int rcameraWinner)
        {
            int count = 0;
            int count2 = 0;
            if (dimensionWinner == 1) count++;
            else if (dimensionWinner == 2) count2++;
            if (displayWinner == 1) count++;
            else if (displayWinner == 2) count2++;
            if (audioWinner == 1) count++;
            else if (audioWinner == 2) count2++;
            if (processorWinner == 1) count++;
            else if (processorWinner == 2) count2++;
            if (graphicsWinner == 1) count++;
            else if (graphicsWinner == 2) count2++;
            if (ramWinner == 1) count++;
            else if (ramWinner == 2) count2++;
            if (storageWinner == 1) count++;
            else if (storageWinner == 2) count2++;
            if (fcameraWinner == 1) count++;
            else if (fcameraWinner == 2) count2++;
            if (rcameraWinner == 1) count++;
            else if (rcameraWinner == 2) count2++;
            if (count > count2) return 1;
            else if (count < count2) return 2;
            else return 0;
        }
        public static void conditional(int temp, ref int sub1, ref int sub2)
        {
            if (temp == 1)
            {
                sub1 = sub1 + 1;
            }
            else if (temp == 2)
            {
                sub2 = sub2 + 1;
            }
        }
    }
}