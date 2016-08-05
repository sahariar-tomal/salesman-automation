<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="introduction.aspx.cs" Inherits="introduction" Debug="true"%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <div id="content">
            
          <!--close content_item-->	
	      <h2>
          hi, 
              <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
          </h2>
		  <div class="sidebar_container">       
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest Product</h2>
                  <p>&nbsp;</p>
			    <h4>Added:Date</h4>
                <p><strong>Description:</strong></p>
                  <p>stock:Quantity: price....</p>
              </div><!--close sidebar_item--> 
            </div><!--close sidebar-->     		
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest Target</h2>
		  	    <h4><b><strong>Date</strong></b><strong> : 14 june, 2012</strong></h4>
                  <p><strong>Target:</strong></p>
                  <p>To achieve the reasonable Profit....and broadcasting it to the representative</p>
              </div><!--close sidebar_item--> 
            </div><!--close sidebar-->  
		    <div class="sidebar">
              <div class="sidebar_item">
                <h2>Latest achievement</h2>
			    <h4>April 2012</h4>
                <p>&nbsp;</p>
              </div>
            </div>
           </div>
           <br style="clear:both;" />
        </div><!--close content-->
</asp:Content>

