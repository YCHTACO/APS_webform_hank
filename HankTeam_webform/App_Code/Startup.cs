using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HankTeam_webform.Startup))]
namespace HankTeam_webform
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
