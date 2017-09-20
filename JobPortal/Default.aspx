<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JobPortal.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Job Portal - Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <h2>JOB PORTAL - REGISTRATION FORM </h2>
        </header>
        <div id="divForm" runat="server">
            <article>
                <section>
                    <h2>Account Details</h2>
                    <asp:Panel ID="panelLogin" runat="server">
                        <ul style="list-style:none">
                            <li>
                                <asp:Label ID="Label1" runat="server" Text="Username: "></asp:Label>
                                <asp:TextBox ID="tbUsername" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <asp:Label ID="Label2" runat="server" Text="Password: "></asp:Label>
                                <asp:TextBox ID="tbPassword" runat="server"></asp:TextBox>
                            </li>
                            <li>
                                <asp:Label ID="Label3" runat="server" Text="Confirm Password: "></asp:Label>
                                <asp:TextBox ID="tbPassword2" runat="server"></asp:TextBox>
                            </li>
                        </ul>
                    </asp:Panel>
                </section>
                <section>
                    <h2>Personal Details</h2>
                    <ul>
                        <li>
                            <asp:Label ID="Label4" runat="server" Text="Full Name: "></asp:Label>
                            <asp:TextBox ID="tbFullName" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Label ID="Label5" runat="server" Text="Age: "></asp:Label>
                            <asp:TextBox ID="tbAge" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            <asp:RadioButtonList ID="rblGender" runat="server">
                                <asp:ListItem Text="Male" Value="Male" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="Female" Value="Female" Selected="True"></asp:ListItem>
                            </asp:RadioButtonList>
                        </li>

                        <li>
                            <asp:Label ID="Label7" runat="server" Text="Nationality: "></asp:Label>
                            <asp:TextBox ID="tbNationality" runat="server"></asp:TextBox>
                        </li>
                    </ul>
                </section>
                <section>
                    <h2>Professional Details: </h2>
                    <ul>
                        <li>
                            <asp:Label ID="Label8" runat="server" Text="Domain: "></asp:Label>
                            <asp:DropDownList ID="ddlDomain" runat="server">
                                <asp:ListItem Text="Eningeering" Value="Eningeering"></asp:ListItem>
                                <asp:ListItem Text="Sales and Marketing" Value="Sales and Marketing"></asp:ListItem>
                                <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>
                                <asp:ListItem Text="Technical Support" Value="Technical Support"></asp:ListItem>
                                <asp:ListItem Text="Quality Assurance" Value="Quality Assurance"></asp:ListItem>
                            </asp:DropDownList>
                        </li>
                        <li>
                            <asp:Label ID="Label9" runat="server" Text="Experience: "></asp:Label>
                            <asp:TextBox ID="tbExperience" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:Label ID="Label10" runat="server" Text="Highest Degree: "></asp:Label>
                            <asp:TextBox ID="tbDegree" runat="server"></asp:TextBox>
                        </li>
                        <li>
                            <asp:CheckBox ID="cbRelocation" Text="Willing to relocate to Thunder Bay" runat="server" />
                        </li>
                        <li>
                            <asp:Label ID="Label11" runat="server" Text="Your Objective: "></asp:Label>
                        </li>
                        <li>
                            <asp:TextBox ID="tbObjective" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        </li>
                        <li>
                            <asp:FileUpload ID="fileResume" runat="server" />
                        </li>
                    </ul>
                </section>
            </article>
            <footer>
                <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            </footer>
        </div>
        <div id="divOutput" runat="server">
            <h2>You have submitted the following details: </h2>
            <ul>
                <li>
                    <asp:Literal ID="litValueFullName" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueAge" runat="server"></asp:Literal>
                </li>

                <li>
                    <asp:Literal ID="litValueGender" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueNationality" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueDomain" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueExperience" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueDegree" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueRelocation" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueObjective" runat="server"></asp:Literal>
                </li>
                <li>
                    <asp:Literal ID="litValueResume" runat="server"></asp:Literal>
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
