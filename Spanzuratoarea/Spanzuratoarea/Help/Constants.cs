using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

namespace Spanzuratoarea
{
    public class Constants
    {
        public static string UsersFile { get; } = @"..\..\XmlFiles\Users.xml";
        public static string WordsFile { get; } = @"..\..\XmlFiles\Words.xml";
        public static string ImagesFile { get; } = @"..\..\XmlFiles\Images.xml";
        public static int numberOfWords { get; } = 5;
        public static int numberOfCategories { get; } = 5;
    }
}
