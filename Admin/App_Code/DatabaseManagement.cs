  


using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
//using Oracle.DataAccess.Client;
//using Oracle.DataAccess.Types;
using System.Diagnostics;
using System.Text;
using System.IO;
using System.Data.OracleClient;



/// <summary>
/// Summary description for DatabaseConn
/// </summary>
public class DatabaseManagement
{
    // public OracleConnection connection;

    public OracleConnection dbaseConn()
    {

    /*    string XE = "Data Source=(DESCRIPTION=(ADDRESS_LIST="
             + "(ADDRESS=(PROTOCOL=TCP)(HOST=HBK-PC)(PORT=1521)))"
             + "(CONNECT_DATA=(SERVER=DEDICATED)(SERVICE_NAME=XE)));"
             + "User Id=hbk;Password=hbk;";*/
        string XE = "Data Source=xe;Persist Security Info=True;User ID=test;Password=test;Unicode=True";

        OracleConnection connection = new OracleConnection(XE);

        return connection;
    }
    public void connOpen(OracleConnection connection)
    {
        connection.Open();

    }
    public void connClose(OracleConnection connection)
    {
        connection.Close();
    }
    public Boolean InsertRow(string queryString, OracleConnection connection)
    {

        OracleCommand command = new OracleCommand();
        command.Connection = connection;
        command.CommandType = CommandType.Text;
        command.CommandText = queryString;
        try
        {
            command.ExecuteNonQuery();
            command.Dispose();
            return true;
        }
        catch (Exception ex)
        {
            Console.WriteLine(ex.Message);
            return false;
        }


    }
    public OracleDataReader ReadRow(string queryString, OracleConnection connection)
    {
        OracleCommand command = new OracleCommand();
        command.Connection = connection;
        command.CommandType = CommandType.Text;
        command.CommandText = queryString;

        OracleDataReader dr = command.ExecuteReader();

        dr.Read();
        return dr;

        // dr.Dispose();
        command.Dispose();
    }

    public Boolean ImageInsert(System.Drawing.Image img, string qString)
    {
        // System.Drawing.Image imag = System.Drawing.Image.FromStream(FU.PostedFile.InputStream);

        byte[] ImageData = ConvertImageToByteArray(img, System.Drawing.Imaging.ImageFormat.Jpeg);


        OracleConnection connection = dbaseConn();
        connection.Open();

        OracleCommand cmnd = new OracleCommand();
        cmnd.CommandText = qString;
        cmnd.Connection = connection;
        cmnd.CommandType = CommandType.Text;

        OracleParameter blobParameter = new OracleParameter();
        // blobParameter.OracleDbType = OracleDbType.Blob;
        blobParameter.OracleType = OracleType.Blob;
        blobParameter.ParameterName = "BlobParameter";
        blobParameter.Value = ImageData;
        cmnd.Parameters.Add(blobParameter);
        int queryResult = cmnd.ExecuteNonQuery();
        cmnd.Dispose();
        connection.Close();

        if (queryResult == 1)
            return true;
        else
            return false;


    }


    private byte[] ConvertImageToByteArray(System.Drawing.Image imageToConvert,
                                       System.Drawing.Imaging.ImageFormat formatOfImage)
    {
        byte[] Ret;
        try
        {
            using (MemoryStream ms = new MemoryStream())
            {
                imageToConvert.Save(ms, formatOfImage);
                Ret = ms.ToArray();

            }
        }
        catch (Exception) { throw; }
        return Ret;
    }

}
