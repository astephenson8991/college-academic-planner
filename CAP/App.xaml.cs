using CAP.Services;

namespace CAP
{
    public partial class App : Application
    {
        public App(LocalDBService localDBService)
        {
            InitializeComponent();

            var navigationPage = new NavigationPage(new MainPage(dbService: localDBService));
            navigationPage.BarBackgroundColor = Color.FromRgb(115, 75, 94);
            navigationPage.BarTextColor = Colors.White;
            MainPage = navigationPage;
        }
    }
}
