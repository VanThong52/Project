<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TaoTK.aspx.cs" Inherits="MYKINGDOM.TaoTK" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" AnswerLabelText="Câu trả lời:" BackColor="#CCCCCC" ConfirmPasswordLabelText="Xác nhận MK:" CreateUserButtonText="Đăng ký" ForeColor="Black" PasswordLabelText="Mật khẩu:" QuestionLabelText="Câu hỏi bí mật:" UserNameLabelText="Tên TK:" Width="747px" ContinueDestinationPageUrl="~/TrangChu.aspx">
        <MailDefinition BodyFileName="~/Createuser.txt" From="2121012984@sv.ufm.edu.vn" Subject="Tài khoản và mật khẩu vừa tạo">
        </MailDefinition>
        <WizardSteps>
            <asp:CreateUserWizardStep runat="server" />
            <asp:CompleteWizardStep runat="server" />
        </WizardSteps>
    </asp:CreateUserWizard>
</asp:Content>
