using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LineBotSdkExample
{
    public partial class WebFormExample : System.Web.UI.Page
    {
        isRock.LineBot.Bot bot = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            //建立bot instance (需要channel access token)
            bot = new isRock.LineBot.Bot(this.txb_Token.Text.Trim());
        }

        protected void Button_SendText_Click(object sender, EventArgs e)
        {
            //傳送純文字訊息
            bot.PushMessage(this.txb_SendTo.Text.Trim(), this.txb_Msg.Text);
        }

        protected void Button_SendSticker_Click(object sender, EventArgs e)
        {
            //傳送貼圖訊息
            bot.PushMessage(this.txb_SendTo.Text.Trim(), int.Parse(this.txb_PackageId.Text), int.Parse(this.txb_StickerId.Text));
        }

        protected void Button_SendPicture_Click(object sender, EventArgs e)
        {
            //傳送圖片訊息
            bot.PushMessage(this.txb_SendTo.Text.Trim(), new Uri(this.txb_PictureURL.Text.Trim()));
        }
    }
}