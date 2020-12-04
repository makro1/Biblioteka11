﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermenagement.aspx.cs" Inherits="ElibraryManagment.adminmembermenagement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
         $(document).ready( function () {
         $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable();
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member Details</h4>                                        
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" img src="imgs/generaluser.png" />                             
                                </center>
                            </div>
                        </div>
                        <hr />

                        <div class="row">
                            <div class="col-md-3">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                        placeholder="ID"> </asp:TextBox>                
                                        <asp:Button class="btn btn-primary" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                            <label>Full Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="Full Name" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                             </div>

                            <div class="col-md-5">
                            <label>Account Status</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server"
                                        placeholder="Account Status" ReadOnly="True"></asp:TextBox>

                                        <asp:LinkButton class="btn btn-success mr-1 mr-1" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">
                                            <i class="fas fa-check-circle"></i></asp:LinkButton>
                                        
                                        <asp:LinkButton class="btn btn-warning mr-1" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">
                                            <i class="far fa-times-circle"></i></asp:LinkButton>
                                        
                                        <asp:LinkButton class="btn btn-danger" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">
                                            <i class="fas fa-pause-circle"></i></asp:LinkButton>

                                    </div>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-md-3">
                                <label>DOB</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox8" runat="server"
                                        placeholder="DOB" ReadOnly="True"></asp:TextBox>                                    
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                            <label>Contanct Number</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server"
                                        placeholder="Contanct Number" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                             </div>

                            <div class="col-md-5">
                            <label>Email ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox10" runat="server"
                                        placeholder="Email ID" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server"
                                        placeholder="State" ReadOnly="True"></asp:TextBox>                                    
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4">
                            <label>City</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox12" runat="server"
                                        placeholder="City" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                             </div>

                            <div class="col-md-4">
                            <label>Pin Code</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox13" runat="server"
                                        placeholder="Pin Code" ReadOnly="True"></asp:TextBox>
                                    </div>
                                </div>
                             </div>
                        </div>  


                        <div class="row">
                            <div class="col">
                                <label>Full Postal Address</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                        placeholder="Address" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>                                    
                                    </div>
                                </div>
                            </div>  
                            </div>
                        

                        <div class="row">
                            <div class="col">
                                 <div class="form-group">
                                    <asp:Button class="btn btn-danger btn-block btn-lg" ID="Button1" runat="server" Text="Delete User Pernamently" OnClick="Button1_Click" />
                                 </div>                                  
                            </div>
                          
                        </div>
                </div>                

            </div>

        </div>

            <div class="col-md-7">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>Member List</h4>                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:elibraryDBConnectionString %>" SelectCommand="SELECT * FROM [member_master_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" 
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="ID" ReadOnly="True" SortExpression="member_id" />
                                        <asp:BoundField DataField="full_name" HeaderText="Name" SortExpression="full_name" />
                                        <asp:BoundField DataField="account_status" HeaderText="Account Status" SortExpression="account_status" />
                                        <asp:BoundField DataField="contant_no" HeaderText="Contact No" SortExpression="contant_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

            </div>





    </div>

                </div>
            </div>
        <a href="homepage.aspx"><< Back to Home</a><br /><br />
        </div>






</asp:Content>
