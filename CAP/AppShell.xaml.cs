using CAP.Services;

namespace CAP
{
    public partial class AppShell : Shell
    {
        public AppShell(LocalDBService localDBService)
        {
            InitializeComponent();
        }
    }
}
