inherited ConsultaCidades: TConsultaCidades
  Caption = 'Consulta Cidades'
  Color = clMoneyGreen
  PixelsPerInch = 96
  TextHeight = 13
  inherited btn_Excluir: TButton
    OnExit = edtChaveExit
  end
  inherited btn_Sair: TButton
    OnExit = edtChaveExit
  end
  inherited DBGrid1: TDBGrid
    Left = 33
    Top = 73
    DataSource = DM.DSCidades
    Columns = <
      item
        Expanded = False
        FieldName = 'CODCIDADE'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DDD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODESTADO'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATCAD'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATULTALT'
        Visible = True
      end>
  end
end
