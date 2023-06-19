using dcompare1.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace dcompare1.Algo
{
    public class CompareAlgo3
    {
        public static int realWinner(int dimensionWinner, int displayWinner, int audioWinner, int processorWinner, int graphicsWinner, int ramWinner, int storageWinner, int fcameraWinner, int rcameraWinner, int batteryWinner)
        {
            int[] attributes = { dimensionWinner, displayWinner, audioWinner, processorWinner, graphicsWinner, ramWinner, storageWinner, batteryWinner, fcameraWinner, rcameraWinner };


            int count1 = 0;
            int count2 = 0;
            int count3 = 0;
            int count4 = 0;

            foreach (int winner in attributes)
            {
                if (winner.ToString().Contains("1")) count1++;
                if (winner.ToString().Contains("2")) count2++;
                if (winner.ToString().Contains("3")) count3++;
                if (winner.ToString().Contains("4")) count4++;
            }
            return chooseWinner4Device(count1, count2, count3, count4);
        }
        public static int chooseWinner4Devices(double? n1, double? n2, double? n3, double? n4)
        {
            n1 = n1 == null ? 0 : n1;
            n2 = n2 == null ? 0 : n2;
            n3 = n3 == null ? 0 : n3;
            n4 = n4 == null ? 0 : n4;
            double?[] a = { n1, n2, n3, n4 };
            Array.Sort(a);
            Array.Reverse(a);
            if (ContainsDuplicateNumbers(a))
            {
                if (a[0] == a[1] && a[1] == a[2] && a[2] == a[3]) return 0;
                else
                {
                    if (a[0] == a[1] && a[1] == a[2] && a[1] != a[3])
                    {
                        if (a[3] == n1) return 234;
                        else if (a[3] == n2) return 134;
                        else if (a[3] == n3) return 124;
                        else if (a[3] == n4) return 123;
                        else return 0;
                    }
                    else if (a[0] == a[1] && a[1] != a[2] && a[1] != a[3])
                    {
                        if (a[0] == n1)
                        {
                            if (a[0] == n2) return 12;
                            else if (a[0] == n3) return 13;
                            else if (a[0] == n4) return 14;
                        }
                        else if (a[0] == n2)
                        {
                            if (a[0] == n1) return 12;
                            else if (a[0] == n3) return 23;
                            else if (a[0] == n4) return 24;
                        }
                        else if (a[0] == n3)
                        {
                            if (a[0] == n2) return 23;
                            else if (a[0] == n1) return 13;
                            else if (a[0] == n4) return 34;
                        }
                        else if (a[0] == n4)
                        {
                            if (a[0] == n2) return 24;
                            else if (a[0] == n3) return 34;
                            else if (a[0] == n1) return 14;
                        }
                    }
                }
            }
            else
            {
                if (a[0] == n1) return 1;
                else if (a[0] == n2) return 2;
                else if (a[0] == n3) return 3;
                else if (a[0] == n4) return 4;
            }
            return 0;
        }

        public static int chooseWinner4Device(double? n1, double? n2, double? n3, double? n4)
        {
            n1 = n1 == null ? 0 : n1;
            n2 = n2 == null ? 0 : n2;
            n3 = n3 == null ? 0 : n3;
            n4 = n4 == null ? 0 : n4;
            double?[] a = { n1, n2, n3, n4 };
            Array.Sort(a);
            Array.Reverse(a);
            string win = "";
            if (a[0] == n1) win += "1";
            if (a[0] == n2) win += "2";
            if (a[0] == n3) win += "3";
            if (a[0] == n4) win += "4";
            if (a[0] == a[1] && a[1] == a[2] && a[2] == a[3]) win = "0";
            return Convert.ToInt32(win);
        }


        public static bool ContainsDuplicateNumbers(double?[] array)
        {
            HashSet<double?> uniqueNumbers = new HashSet<double?>();

            foreach (int number in array)
            {
                if (!uniqueNumbers.Add(number))
                {
                    // Duplicate number found
                    return true;
                }
            }

            // No duplicate numbers found
            return false;
        }

        public static void conditional(int temp, ref int sub1, ref int sub2, ref int sub3, ref int sub4)
        {
            if (temp == 1)
            {
                sub1++;
            }
            else if (temp == 2)
            {
                sub2++;
            }
            else if (temp == 3)
            {
                sub3++;
            }
            else if (temp == 4)
            {
                sub4++;
            }
            else if (temp == 12)
            {
                sub1++;
                sub2++;
            }
            else if (temp == 23)
            {
                sub2++;
                sub3++;
            }
            else if (temp == 34)
            {
                sub3++;
                sub4++;
            }
            else if (temp == 13)
            {
                sub1++;
                sub3++;
            }
            else if (temp == 24)
            {
                sub2++;
                sub4++;
            }
            else if (temp == 14)
            {
                sub1++;
                sub4++;
            }
            else if (temp == 123)
            {
                sub1++;
                sub2++;
                sub3++;
            }
            else if (temp == 234)
            {
                sub2++;
                sub3++;
                sub4++;
            }
            else if (temp == 134)
            {
                sub1++;
                sub3++;
                sub4++;
            }
            else if (temp == 124)
            {
                sub1++;
                sub2++;
                sub4++;
            }
        }

        public static int compareDimension(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Dimension1.length, d2.Dimension1.length, d3.Dimension1.length, d4.Dimension1.length);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Dimension1.width, d2.Dimension1.width, d3.Dimension1.width, d4.Dimension1.width);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Dimension1.height, d2.Dimension1.height, d3.Dimension1.height, d4.Dimension1.height);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareDisplay(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Display1.height, d2.Display1.height, d3.Display1.height, d4.Display1.height);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Display1.width, d2.Display1.width, d3.Display1.width, d4.Display1.width);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Display1.refresh_rate, d2.Display1.refresh_rate, d3.Display1.refresh_rate, d4.Display1.refresh_rate);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Display1.size, d2.Display1.size, d3.Display1.size, d4.Display1.size);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareAudio(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Audio1.quantity, d2.Audio1.quantity, d3.Audio1.quantity, d4.Audio1.quantity);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareProcessor(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Processor1.clock_speed, d2.Processor1.clock_speed, d3.Processor1.clock_speed, d4.Processor1.clock_speed);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Processor1.cores, d2.Processor1.cores, d3.Processor1.cores, d4.Processor1.cores);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Processor1.threads, d2.Processor1.threads, d3.Processor1.threads, d4.Processor1.threads);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareGraphics(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Graphic.wattage, d2.Graphic.wattage, d3.Graphic.wattage, d4.Graphic.wattage);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Graphic.clock_speed, d2.Graphic.clock_speed, d3.Graphic.clock_speed, d4.Graphic.clock_speed);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Graphic.vram, d2.Graphic.vram, d3.Graphic.vram, d4.Graphic.vram);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareMemory(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Memory1.size, d2.Memory1.size, d3.Memory1.size, d4.Memory1.size);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Memory1.channel, d2.Memory1.channel, d3.Memory1.channel, d4.Memory1.channel);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Memory1.max_capacity, d2.Memory1.max_capacity, d3.Memory1.max_capacity, d4.Memory1.max_capacity);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareStorage(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Storage1.size, d2.Storage1.size, d3.Storage1.size, d4.Storage1.size);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Storage1.max_caoacity, d2.Storage1.max_caoacity, d3.Storage1.max_caoacity, d4.Storage1.max_caoacity);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareBattery(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.Battery1.capacity, d2.Battery1.capacity, d3.Battery1.capacity, d4.Battery1.capacity);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Battery1.wattage, d2.Battery1.wattage, d3.Battery1.wattage, d4.Battery1.wattage);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.Battery1.life_hours, d2.Battery1.life_hours, d3.Battery1.life_hours, d4.Battery1.life_hours);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareFCamera(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.fCamera1.resolution, d2.fCamera1.resolution, d3.fCamera1.resolution, d4.fCamera1.resolution);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.fCamera1.megapixels, d2.fCamera1.megapixels, d3.fCamera1.megapixels, d4.fCamera1.megapixels);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.fCamera1.frame_rate, d2.fCamera1.frame_rate, d3.fCamera1.frame_rate, d4.fCamera1.frame_rate);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
        public static int compareRCamera(Device d, Device d2, Device d3, Device d4)
        {
            int sub1 = 0, sub2 = 0, sub3 = 0, sub4 = 0;
            int temp;
            temp = chooseWinner4Device(d.rCamera1.resolution, d2.rCamera1.resolution, d3.rCamera1.resolution, d4.rCamera1.resolution);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.rCamera1.megapixels, d2.rCamera1.megapixels, d3.rCamera1.megapixels, d4.rCamera1.megapixels);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            temp = chooseWinner4Device(d.rCamera1.frame_rate, d2.rCamera1.frame_rate, d3.rCamera1.frame_rate, d4.rCamera1.frame_rate);
            conditional(temp, ref sub1, ref sub2, ref sub3, ref sub4);
            return chooseWinner4Device(sub1, sub2, sub3, sub4);
        }
    }
}