inherited ConsultaPaises: TConsultaPaises
  Caption = 'Consulta  Paises'
  ExplicitTop = -96
  PixelsPerInch = 96
  TextHeight = 13
  inherited chave: TEdit
    MaxLength = 10
  end
  inherited btn_Excluir: TButton
    OnExit = edtChaveExit
  end
  inherited DBGrid1: TDBGrid
    Left = 32
    Width = 657
    Columns = <
      item
        Expanded = False
        FieldName = 'CodPais'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Pais'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDI'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Sigla'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataCad'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataUltAlt'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Moeda'
        Visible = True
      end>
  end
end
