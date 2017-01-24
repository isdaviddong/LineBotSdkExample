<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormExample.aspx.cs" Inherits="LineBotSdkExample.WebFormExample" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>asp.net 傳統 WebForm</title>
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/vue.min.js"></script>
    <script src="Scripts/isRockFx.js"></script>
    <script src="Scripts/toastr.min.js"></script>
    <link href="Content/toastr.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="row" style="margin: 20px">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    基本資料
                </div>
                <div class="panel-body">
                    <p>如果需要LineBotSDK基本說明，請參考<a href="http://studyhost.blogspot.tw/search/label/LineBot" target="_blank">這裡</a>。</p>
                    <div class="form-group">
                        <label>LineBot Channel Access Token : </label>
                        <asp:TextBox ID="txb_Token" CssClass="form-control" runat="server" placeholder="Channel Access Token 請從Linebot管理後台取得"></asp:TextBox>
                        <label>訊息接收對象(uid) : </label>
                        <asp:TextBox ID="txb_SendTo" CssClass="form-control" runat="server" placeholder="uid並非用戶id，而是類似 U6ca0zz0fc5xxc152d3618xx1658ooa5f 這樣的一串文字"></asp:TextBox>
                    </div>
                </div>
            </div>
            <!--傳送文字-->
            <div class="panel panel-primary">
                <div class="panel-heading">
                    範例
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <label>傳送訊息內文 : </label>
                        <br />
                        <asp:TextBox ID="txb_Msg" CssClass="form-control" runat="server" Text="測試訊息"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button_SendText" CssClass="btn btn-primary" runat="server" Text="傳送純文字" OnClick="Button_SendText_Click" />
                    </div>
                </div>
            </div>
            <!--傳送貼圖-->
            <div class="panel panel-primary">
                <div class="panel-heading">
                    範例
                </div>
                <div class="panel-body">

                    <div class="form-group">
                        <label>傳送貼圖 : </label>
                        <br />
                        <div class="col-xs-12">
                            <div class="col-xs-6">
                                <label>PackageId:</label>
                                <asp:TextBox ID="txb_PackageId" CssClass="form-control " runat="server" Text="1"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <label>StickerId:</label>
                                <asp:TextBox ID="txb_StickerId" CssClass="form-control col-xs-6" runat="server" Text="1"></asp:TextBox>
                            </div>
                            <div class="col-xs-12">
                                <br />
                                <asp:Button ID="Button_SendSticker" CssClass="btn btn-primary" runat="server" Text="傳送貼圖" OnClick="Button_SendSticker_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--傳送圖片-->
            <div class="panel panel-primary">
                <div class="panel-heading">
                    範例
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <br />
                        <label>傳送圖片訊息 : </label>
                        <br />
                        <div class="col-xs-12">
                            <asp:TextBox ID="txb_PictureURL" CssClass="form-control" runat="server" Text="https://scontent-tpe1-1.xx.fbcdn.net/v/t31.0-8/15800635_1324407647598805_917901174271992826_o.jpg?oh=2fe14b080454b33be59cdfea8245406d&oe=591D5C94"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button_SendPicture" CssClass="btn btn-primary" runat="server" Text="傳送圖片" OnClick="Button_SendPicture_Click" />
                        </div>
                    </div>
                </div>
            </div>
            <!--傳送Button Template Message-->
            <div class="panel panel-primary">
                <div class="panel-heading">
                    範例
                </div>
                <div class="panel-body">
                    <div class="form-group">
                        <br />
                        <label>傳送Button Template訊息 : </label>
                        <br />
                        <div class="col-xs-12">
                            <div class="col-xs-6">
                                <label>text:</label>
                                <asp:TextBox ID="txbButtonTemplateText" CssClass="form-control" runat="server" Text="ButtonsTemplate文字訊息"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <label>Title:</label>
                                <asp:TextBox ID="txbButtonTemplateTitle" CssClass="form-control" runat="server" Text="ButtonsTemplate標題"></asp:TextBox>
                            </div>
                            <div class="col-xs-12">
                                <br />
                                <asp:Button ID="Button_SendButtonTemplate" CssClass="btn btn-primary" runat="server" Text="傳送Button Template Message" OnClick="Button_SendButtonTemplate_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
