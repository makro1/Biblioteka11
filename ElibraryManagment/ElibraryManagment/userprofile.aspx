<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userprofile.aspx.cs" Inherits="ElibraryManagment.userprofile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5 mx-auto">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />
                                   
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Profile</h4>
                                    <span>Account Status - </span>
                                    <asp:Label class="badge badge-pill badge-info" 
                                        ID="Label1" runat="server" Text="Your status"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Full Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                        placeholder="Full Name"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                            <label>Date of Birth</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Date of Birth" TextMode="Date"></asp:TextBox>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                        placeholder="Contact Number" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                             <div class="col-md-6">
                            <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                        placeholder="Email ID" TextMode="Email"></asp:TextBox>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList CssClass="form-control" ID="DropDownList1" runat="server">

                                        <asp:ListItem Text="Select" Value="select"></asp:ListItem>
                                        <asp:ListItem Text="Pomorskie" Value="Pomorskie"></asp:ListItem>
                                        <asp:ListItem Text="Zachodnio-Pomorskie" Value="Zachodnio-Pomorskie"></asp:ListItem>
                                        <asp:ListItem Text="Kujawsko-Pomorskie" Value="Kujawsko-Pomorskie"></asp:ListItem>
                                        <asp:ListItem Text="Mazurskie" Value="Mazurskie"></asp:ListItem>
                                        <asp:ListItem Text="Lubuskie" Value="Lubuskie"></asp:ListItem>
                                        <asp:ListItem Text="Lubelskie" Value="Lubelskie"></asp:ListItem>
                                        <asp:ListItem Text="Małopolskie" Value="Małopolskie"></asp:ListItem>
                                        <asp:ListItem Text="Wielkopolskie" Value="Wielkopolskie"></asp:ListItem>
                                        <asp:ListItem Text="Mazowieckie" Value="Mazowieckie"></asp:ListItem>
                                        <asp:ListItem Text="Sląskie" Value="Sląskie"></asp:ListItem>
                                        <asp:ListItem Text="Dolno-Śląskie" Value="Dolno-Śląskie"></asp:ListItem>
                                        <asp:ListItem Text="Podkarpackie" Value="Podkarpackie"></asp:ListItem>
                                        <asp:ListItem Text="Świętokrzyskie" Value="Świętokrzyskie"></asp:ListItem>
                                        <asp:ListItem Text="Opolskie" Value="Opolskie"></asp:ListItem>
                                        <asp:ListItem Text="Łódzkie" Value="Łódzkie"></asp:ListItem>
                                        <asp:ListItem Text="Podlaskie" Value="Podlaskie"></asp:ListItem>

                                    </asp:DropDownList>
                                </div>
                            </div>

                             <div class="col-md-4">
                            <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox6" runat="server"
                                        placeholder="City" ></asp:TextBox>
                                </div>
                             </div>

                            <div class="col-md-4">
                            <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server"
                                        placeholder="Pincode" TextMode="Number"></asp:TextBox>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label>Full Address</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                        placeholder="Full Address" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>                             
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                 <span class="badge badge-pill badge-info">Login Credentials</span>  
                                </center>
                            </div>
                       </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>User ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server"
                                        placeholder="User ID" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">
                            <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                        placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                             </div>

                             <div class="col-md-4">
                            <label>New Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                        placeholder="New Password" TextMode="Password"></asp:TextBox>
                                </div>
                             </div>
                        </div>



                        <div class="row">
                            <div class="col-8 mx-auto">
                                <center>
                                 <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button3" 
                                        runat="server" Text="Update" />
                                 </div>                
                                </center>
                            </div>
                       </div>



                </div>
                <a href="homepage.aspx"><< Back to Home</a><br /><br />

            </div>

        </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.png"/>
                                   
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Your Issued Books</h4>
                                    <asp:Label class="badge badge-pill badge-info" 
                                        ID="Label2" runat="server" Text="Info about book due date"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                            <div class="col">
                                <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered" 
                                    ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

            </div>





    </div>
     







</asp:Content>
