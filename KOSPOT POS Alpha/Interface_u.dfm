object frmInterface: TfrmInterface
  Left = 0
  Top = 0
  Caption = 'InterFace '
  ClientHeight = 622
  ClientWidth = 999
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  Menu = mmNav
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblPurchases: TLabel
    Left = 8
    Top = 159
    Width = 77
    Height = 18
    Caption = 'Purchases'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblExpenses: TLabel
    Left = 8
    Top = 312
    Width = 79
    Height = 18
    Caption = 'Expenses: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFoodPrice: TLabel
    Left = 736
    Top = 344
    Width = 84
    Height = 18
    Caption = 'Food Price:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDrinkPrice: TLabel
    Left = 731
    Top = 388
    Width = 89
    Height = 18
    Caption = 'Drink Price:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSweetPrice: TLabel
    Left = 721
    Top = 436
    Width = 99
    Height = 18
    Caption = 'Sweet Price: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblGrandTotal: TLabel
    Left = 724
    Top = 484
    Width = 96
    Height = 18
    Caption = 'Grand Total: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pnlCustomerData: TPanel
    Left = 8
    Top = 8
    Width = 985
    Height = 145
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object lblCustomer: TLabel
      Left = 16
      Top = 16
      Width = 60
      Height = 16
      Caption = 'Customer:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object lblAdmin: TLabel
      Left = 35
      Top = 56
      Width = 41
      Height = 16
      Caption = 'Admin:'
    end
    object lblCurrency: TLabel
      Left = 20
      Top = 96
      Width = 56
      Height = 16
      Caption = 'Currency:'
    end
    object lblSalesInvoiceNo: TLabel
      Left = 344
      Top = 16
      Width = 99
      Height = 16
      Caption = 'Sales Invoice No:'
    end
    object lblSaleOrderNo: TLabel
      Left = 357
      Top = 56
      Width = 86
      Height = 16
      Caption = 'Sale Order No:'
    end
    object lblDocumentedDat: TLabel
      Left = 337
      Top = 96
      Width = 106
      Height = 16
      Caption = 'Documented Date:'
    end
    object lblFoods: TLabel
      Left = 720
      Top = 16
      Width = 43
      Height = 16
      Caption = 'Foods: '
    end
    object lblDrinks: TLabel
      Left = 723
      Top = 56
      Width = 40
      Height = 16
      Caption = 'Drinks:'
    end
    object lblSweets: TLabel
      Left = 712
      Top = 96
      Width = 51
      Height = 16
      Caption = 'Sweets: '
    end
    object cmbCustomer: TComboBox
      Left = 82
      Top = 13
      Width = 145
      Height = 24
      TabOrder = 0
    end
    object edtAdmin: TEdit
      Left = 82
      Top = 53
      Width = 145
      Height = 24
      TabOrder = 1
    end
    object edtCurrency: TEdit
      Left = 82
      Top = 93
      Width = 79
      Height = 24
      TabOrder = 2
    end
    object edtInvoiceNo: TEdit
      Left = 449
      Top = 13
      Width = 144
      Height = 24
      TabOrder = 3
    end
    object edtSaleNo: TEdit
      Left = 449
      Top = 53
      Width = 144
      Height = 24
      TabOrder = 4
    end
    object edtDocumentDate: TEdit
      Left = 449
      Top = 93
      Width = 144
      Height = 24
      TabOrder = 5
    end
    object cmbFoods: TComboBox
      Left = 769
      Top = 13
      Width = 145
      Height = 24
      TabOrder = 6
      Text = 'cmbFoods'
      Items.Strings = (
        'Toasted Ham/Cheese = R15'
        'Toasted Chic/Mayo = R20'
        'Hotdog = R8'
        'Chips = R10'
        'Hoender Wrap = R25'
        'Hoender Slaai = R20'
        'Hoender Burger = R20'
        'Chips & Nuggets = R20'
        'Mince Pita = R25'
        'Tacos = R25')
    end
    object sedFqty: TSpinEdit
      Left = 920
      Top = 13
      Width = 57
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Value = 0
    end
    object cmbDrinks: TComboBox
      Left = 769
      Top = 53
      Width = 145
      Height = 24
      TabOrder = 8
      Text = 'cmbDrinks'
      Items.Strings = (
        'Koeldrank 330ml = R10'
        'Koeldrank 440ml = R13'
        'Powerade = R15'
        'Ice Tea = R10')
    end
    object sedDqty: TSpinEdit
      Left = 920
      Top = 53
      Width = 57
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 9
      Value = 0
    end
    object cmbSweets: TComboBox
      Left = 769
      Top = 93
      Width = 145
      Height = 24
      TabOrder = 10
      Text = 'cmbSweets'
      Items.Strings = (
        'Sjokolade = R5'
        'Tropika Ysies')
    end
    object sedSqty: TSpinEdit
      Left = 920
      Top = 93
      Width = 57
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 11
      Value = 0
    end
  end
  object dbgrdPurchases: TDBGrid
    Left = 8
    Top = 183
    Width = 657
    Height = 120
    DataSource = dsPurchases
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'Invoice_No'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Food_Product'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Drink_Product'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sweet_Product'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Visible = True
      end>
  end
  object dbgrdExpenses: TDBGrid
    Left = 8
    Top = 336
    Width = 425
    Height = 120
    DataSource = dsSQL
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'Sales_Width'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Customer_Name'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Credits'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Debt'
        Visible = True
      end>
  end
  object edtFoodPrice: TEdit
    Left = 826
    Top = 341
    Width = 132
    Height = 21
    TabOrder = 3
  end
  object edtDrinkPrice: TEdit
    Left = 826
    Top = 389
    Width = 132
    Height = 21
    TabOrder = 4
  end
  object edtSweetPrice: TEdit
    Left = 826
    Top = 437
    Width = 132
    Height = 21
    TabOrder = 5
  end
  object edtGrandTotal: TEdit
    Left = 826
    Top = 485
    Width = 132
    Height = 21
    TabOrder = 6
  end
  object btnSavePurchase: TBitBtn
    Left = 725
    Top = 542
    Width = 95
    Height = 53
    Caption = 'Save '
    DoubleBuffered = True
    Kind = bkYes
    ParentDoubleBuffered = False
    TabOrder = 7
    OnClick = btnSavePurchaseClick
  end
  object btnCancel: TBitBtn
    Left = 826
    Top = 542
    Width = 95
    Height = 53
    DoubleBuffered = True
    Kind = bkCancel
    ParentDoubleBuffered = False
    TabOrder = 8
  end
  object btnReconnect: TBitBtn
    Left = 43
    Top = 471
    Width = 121
    Height = 49
    Caption = 'Reconnect'
    DoubleBuffered = True
    Kind = bkRetry
    ParentDoubleBuffered = False
    TabOrder = 9
    OnClick = btnReconnectClick
  end
  object mmNav: TMainMenu
    Left = 592
    Top = 408
    object File1: TMenuItem
      Caption = 'File'
      object Purchase1: TMenuItem
        Caption = 'Purchase'
      end
      object Sales1: TMenuItem
        Caption = 'Sales'
      end
      object Wallets1: TMenuItem
        Caption = 'Credit Wallets'
      end
      object AddCredits1: TMenuItem
        Caption = 'Add Credits'
      end
    end
  end
  object dsSQL: TDataSource
    DataSet = Clients
    Left = 448
    Top = 336
  end
  object conDBPurchases: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=purchases.mdb;Persi' +
      'st Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 512
    Top = 336
  end
  object Clients: TADOTable
    Active = True
    Connection = conDBPurchases
    CursorType = ctStatic
    TableName = 'Clients'
    Left = 448
    Top = 408
  end
  object Purchases: TADOTable
    Active = True
    Connection = conDBPurchases
    CursorType = ctStatic
    TableName = 'Puchases'
    Left = 520
    Top = 408
  end
  object dsPurchases: TDataSource
    DataSet = Purchases
    Left = 592
    Top = 336
  end
end
