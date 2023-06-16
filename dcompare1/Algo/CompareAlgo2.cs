using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Algo
{
    public class CompareAlgo2
    {
        public static int realWinner(int dimensionWinner, int displayWinner, int audioWinner, int processorWinner, int graphicsWinner, int ramWinner, int storageWinner, int fcameraWinner, int rcameraWinner, int batteryWinner)
        {
            int count = 0;
            int count2 = 0;
            int count3 = 0;
            if (dimensionWinner == 1) count++;
            else if (dimensionWinner == 2) count2++;
            else if (dimensionWinner == 3) count3++;
            else if (dimensionWinner == 12)
            {
                count++;
                count2++;
            }
            else if (dimensionWinner == 13)
            {
                count++;
                count3++;
            }
            else if (dimensionWinner == 23)
            {
                count2++;
                count3++;
            }
            if (displayWinner == 1) count++;
            else if (displayWinner == 2) count2++;
            else if (displayWinner == 3) count3++;
            else if (displayWinner == 12)
            {
                count++;
                count2++;
            }
            else if (displayWinner == 13)
            {
                count++;
                count3++;
            }
            else if (displayWinner == 23)
            {
                count2++;
                count3++;
            }
            if (audioWinner == 1) count++;
            else if (audioWinner == 2) count2++;
            else if (audioWinner == 3) count3++;
            else if (audioWinner == 12)
            {
                count++;
                count2++;
            }
            else if (audioWinner == 13)
            {
                count++;
                count3++;
            }
            else if (audioWinner == 23)
            {
                count2++;
                count3++;
            }
            if (processorWinner == 1) count++;
            else if (processorWinner == 2) count2++;
            else if (processorWinner == 3) count3++;
            else if (processorWinner == 12)
            {
                count++;
                count2++;
            }
            else if (processorWinner == 13)
            {
                count++;
                count3++;
            }
            else if (processorWinner == 23)
            {
                count2++;
                count3++;
            }
            if (graphicsWinner == 1) count++;
            else if (graphicsWinner == 2) count2++;
            else if (graphicsWinner == 3) count3++;
            else if (graphicsWinner == 12)
            {
                count++;
                count2++;
            }
            else if (graphicsWinner == 13)
            {
                count++;
                count3++;
            }
            else if (graphicsWinner == 23)
            {
                count2++;
                count3++;
            }
            if (ramWinner == 1) count++;
            else if (ramWinner == 2) count2++;
            else if (ramWinner == 3) count3++;
            else if (ramWinner == 12)
            {
                count++;
                count2++;
            }
            else if (ramWinner == 13)
            {
                count++;
                count3++;
            }
            else if (ramWinner == 23)
            {
                count2++;
                count3++;
            }
            if (storageWinner == 1) count++;
            else if (storageWinner == 2) count2++;
            else if (storageWinner == 3) count3++;
            else if (storageWinner == 12)
            {
                count++;
                count2++;
            }
            else if (storageWinner == 13)
            {
                count++;
                count3++;
            }
            else if (storageWinner == 23)
            {
                count2++;
                count3++;
            }
            if (batteryWinner == 1) count++;
            else if (batteryWinner == 2) count2++;
            else if (batteryWinner == 3) count3++;
            else if (batteryWinner == 12)
            {
                count++;
                count2++;
            }
            else if (batteryWinner == 13)
            {
                count++;
                count3++;
            }
            else if (batteryWinner == 23)
            {
                count2++;
                count3++;
            }
            if (fcameraWinner == 1) count++;
            else if (fcameraWinner == 2) count2++;
            else if (fcameraWinner == 3) count3++;
            else if (fcameraWinner == 12)
            {
                count++;
                count2++;
            }
            else if (fcameraWinner == 13)
            {
                count++;
                count3++;
            }
            else if (fcameraWinner == 23)
            {
                count2++;
                count3++;
            }
            if (rcameraWinner == 1) count++;
            else if (rcameraWinner == 2) count2++;
            else if (rcameraWinner == 3) count3++;
            else if (rcameraWinner == 12)
            {
                count++;
                count2++;
            }
            else if (rcameraWinner == 13)
            {
                count++;
                count3++;
            }
            else if (rcameraWinner == 23)
            {
                count2++;
                count3++;
            }
            return chooseWinner3Device(count, count2, count3);
        }
        public static int chooseWinner3Device(double? n1, double? n2, double? n3)
        {
            if ((n1 == n2 && n2 == n3) || (n1 == null && n2 == null && n3 == null)) return 0;
            else
            {
                if (n1 > n2)
                {
                    if (n1 > n3) return 1;
                    else if (n1 == n3) return 13;
                }
                else if (n2 > n3)
                {
                    if (n2 > n1) return 2;
                    else if (n2 == n1) return 12;
                }
                else if (n3 > n1)
                {
                    if (n3 > n2) return 3;
                    else if (n3 == n2) return 23;
                }
            }
            return 0;
        }

        public static void conditional(int temp, ref int sub1, ref int sub2, ref int sub3)
        {
            if (temp == 1)
            {
                sub1 = sub1 + 1;
            }
            else if (temp == 2)
            {
                sub2 = sub2 + 1;
            }
            else if (temp == 3)
            {
                sub3 = sub3 + 1;
            }
            else if (temp == 12)
            {
                sub1 = sub1 + 1;
                sub2 = sub2 + 1;
            }
            else if (temp == 23)
            {
                sub2 = sub2 + 1;
                sub3 = sub3 + 1;
            }
            else if (temp == 13)
            {
                sub1 = sub1 + 1;
                sub3 = sub3 + 1;
            }

        }
        public static int compareDimension(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Dimension1.length, d2.Dimension1.length, d3.Dimension1.length);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Dimension1.width, d2.Dimension1.width, d3.Dimension1.width);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Dimension1.height, d2.Dimension1.height, d3.Dimension1.height);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareDisplay(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Display1.height, d2.Display1.height, d3.Display1.height);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Display1.width, d2.Display1.width, d3.Display1.width);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Display1.refresh_rate, d2.Display1.refresh_rate, d3.Display1.refresh_rate);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Display1.size, d2.Display1.size, d3.Display1.size);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareAudio(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Audio1.quantity, d2.Audio1.quantity, d3.Audio1.quantity);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareProcessor(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Processor1.clock_speed, d2.Processor1.clock_speed, d3.Processor1.clock_speed);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Processor1.cores, d2.Processor1.cores, d3.Processor1.cores);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Processor1.threads, d2.Processor1.threads, d3.Processor1.threads);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareGraphics(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Graphic.wattage, d2.Graphic.wattage, d3.Graphic.wattage);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Graphic.clock_speed, d2.Graphic.clock_speed, d3.Graphic.clock_speed);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Graphic.vram, d2.Graphic.vram, d3.Graphic.vram);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareMemory(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Memory1.size, d2.Memory1.size, d3.Memory1.size);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Memory1.channel, d2.Memory1.channel, d3.Memory1.channel);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Memory1.max_capacity, d2.Memory1.max_capacity, d3.Memory1.max_capacity);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return 23;
        }
        public static int compareStorage(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Storage1.size, d2.Storage1.size, d3.Storage1.size);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Storage1.max_caoacity, d2.Storage1.max_caoacity, d3.Storage1.max_caoacity);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareBattery(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.Battery1.capacity, d2.Battery1.capacity, d3.Battery1.capacity);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Battery1.wattage, d2.Battery1.wattage, d3.Battery1.wattage);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.Battery1.life_hours, d2.Battery1.life_hours, d3.Battery1.life_hours);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareFCamera(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.fCamera1.resolution, d2.fCamera1.resolution, d3.fCamera1.resolution);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.fCamera1.megapixels, d2.fCamera1.megapixels, d3.fCamera1.megapixels);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.fCamera1.frame_rate, d2.fCamera1.frame_rate, d3.fCamera1.frame_rate);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
        public static int compareRCamera(Device d, Device d2, Device d3)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0;
            int temp;
            temp = chooseWinner3Device(d.rCamera1.resolution, d2.rCamera1.resolution, d3.rCamera1.resolution);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.rCamera1.megapixels, d2.rCamera1.megapixels, d3.rCamera1.megapixels);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            temp = chooseWinner3Device(d.rCamera1.frame_rate, d2.rCamera1.frame_rate, d3.rCamera1.frame_rate);
            conditional(temp, ref sub1, ref sub2, ref sub3);
            return chooseWinner3Device(sub1, sub2, sub3);
        }
    }
}