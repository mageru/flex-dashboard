package utilities
{
  import mx.controls.dataGridClasses.DataGridColumn;
  import mx.formatters.CurrencyFormatter;
  import mx.formatters.DateFormatter;
  
  public class FormatUtilities
  {
    public function FormatUtilities()
    {
    }
    
    public static function dateFormat(value:Object):String
    {
      var df:DateFormatter = new DateFormatter();
      df.formatString = "EEEE, MMMM D, YYYY";
      return df.format(value)
    }

    public static function currencyFormat(data:Object, column:DataGridColumn):String
    {
      var cf:CurrencyFormatter = new CurrencyFormatter();
      cf.precision=2;
      return cf.format(data[column.dataField])
    }

  }
}