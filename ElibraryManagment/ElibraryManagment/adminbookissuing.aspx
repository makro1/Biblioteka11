<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminbookissuing.aspx.cs" Inherits="ElibraryManagment.adminbookissuing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                                    <h4>Book Issuing</h4>                                        
                                </center>
                            </div>
                        </div>

                        
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" img src="imgs/books1.png" />                             
                                </center>
                            </div>
                        </div>
                        <hr />

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"
                                        placeholder="ID"></asp:TextBox>                                    
                                    </div>
                                </div>
                            </div>

                             <div class="col-md-6">
                            <label>Book ID</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"
                                        placeholder="ID"></asp:TextBox>
                                    <asp:Button class="btn btn-dark" ID="Button3" runat="server" Text="Go" OnClick="Button3_Click" />
                                    </div>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>Member Name</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"
                                        placeholder="Member Name" ReadOnly="True"></asp:TextBox>                                    
                                    </div>
                                </div>
                            </div>

                             <div class="col-md-6">
                            <label>Book Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"
                                        placeholder="Book Name" ReadOnly="True"></asp:TextBox>
                                </div>
                             </div>
                        </div>

                         <div class="row">
                            <div class="col-md-6">
                                <label>Issue Date</label>
                                <div class="form-group">
                                    <div class="input-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"
                                        placeholder="Start Date" TextMode="Date"></asp:TextBox>                                    
                                    </div>
                                </div>
                            </div>

                             <div class="col-md-6">
                            <label>End Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"
                                        placeholder="End Date" TextMode="Date"></asp:TextBox>
                                </div>
                             </div>
                        </div>

                        <div class="row">
                            <div class="col-6">
                                 <div class="form-group">
                                    <asp:Button class="btn btn-info btn-block btn-lg" ID="Button1" runat="server" Text="Issue" OnClick="Button1_Click" />
                                 </div>                                  
                            </div>


                            <div class="col-6">
                                 <div class="form-group">
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button2" runat="server" Text="Return" OnClick="Button2_Click" />
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
                                    <h4>Issued Book List</h4>                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                         <div class="row">
                             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:elibraryDBConnectionString %>' SelectCommand="SELECT * FROM [book_issue_tbl]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView AlternatingRowStyle-CssClass="table table-striped table-bordered"
                                    ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="member_id" DataSourceID="SqlDataSource1">
<AlternatingRowStyle CssClass="table table-striped table-bordered"></AlternatingRowStyle>
                                    <Columns>
                                        <asp:BoundField DataField="member_id" HeaderText="Member ID" ReadOnly="True" SortExpression="member_id"></asp:BoundField>
                                        <asp:BoundField DataField="member_name" HeaderText="Member name" SortExpression="member_name"></asp:BoundField>
                                        <asp:BoundField DataField="book_id" HeaderText="Book ID" SortExpression="book_id"></asp:BoundField>
                                        <asp:BoundField DataField="book_name" HeaderText="Book name" SortExpression="book_name"></asp:BoundField>
                                        <asp:BoundField DataField="issue_date" HeaderText="Issue date" SortExpression="issue_date"></asp:BoundField>
                                        <asp:BoundField DataField="due_date" HeaderText="Due date" SortExpression="due_date"></asp:BoundField>
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
