program RefactoringByBalaban_A_A;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils;

var
  parametr: array [1 .. 4, 1 .. 3] of integer;
  TheResultOfLogicalSumOfParametresThetEqualTo0: array [1 .. 4] of boolean;
  I: integer;
  ResultOfCycleWhereNeedToXOR: boolean;
  ResultOfCycleWhereNeedToAND: boolean;
  TheConditionForCaseOperator: boolean;

begin
  TheResultOfLogicalSumOfParametresThetEqualTo0[4] :=
    ((parametr[4, 1] = 0) and (parametr[4, 2] = 0) and (parametr[4, 3] = 0));

  ResultOfCycleWhereNeedToAND := false;

  for I := 1 to 2 do
    if I = 1 then
      ResultOfCycleWhereNeedToAND := ResultOfCycleWhereNeedToAND and
        ((parametr[3, I] - parametr[1, 0 + I]) / parametr[4,
        2] = (parametr[3, 1 + I] - parametr[1, 1 + I]) / parametr[4, 1 + I])
    else
      ResultOfCycleWhereNeedToAND :=
        ((parametr[3, I] - parametr[1, 0 + I]) / parametr[4,
        2] = (parametr[3, 1 + I] - parametr[1, 1 + I]) / parametr[4, 1 + I]);

  ResultOfCycleWhereNeedToXOR := false;

  for I := 1 to 3 do
    if I = 1 then
      ResultOfCycleWhereNeedToXOR :=
        ((parametr[4, I] = 0) and (parametr[1, I] = parametr[2, I]) and
        (parametr[2, I] = parametr[3, I]) and ((parametr[3, 2] - parametr[1, 2])
        / parametr[4, 2] = (parametr[3, 3] - parametr[1, 3]) / parametr[4, 3]))
    else
      ResultOfCycleWhereNeedToXOR := ResultOfCycleWhereNeedToXOR xor
        ((parametr[4, I] = 0) and (parametr[1, I] = parametr[2, I]) and
        (parametr[2, I] = parametr[3, I]) and ((parametr[3, 1] - parametr[1, 1])
        / parametr[4, 1] = (parametr[3, 5 - I] - parametr[1, 5 - I]) /
        parametr[4, 5 - I]));

  TheConditionForCaseOperator := ResultOfCycleWhereNeedToAND xor
    ResultOfCycleWhereNeedToXOR;

  for I := 1 to 2 do
    TheConditionForCaseOperator := TheConditionForCaseOperator xor
      ((parametr[4, 4 - I] <> 0) and (parametr[4, 1] = 0) and
      (parametr[4, 1 + I] = 0) and (parametr[3, 1] = parametr[2, 1]) and
      (parametr[3, 1 + I] = parametr[2, 1 + I]));

  TheConditionForCaseOperator := TheConditionForCaseOperator xor
    ((TheResultOfLogicalSumOfParametresThetEqualTo0 and
    (parametr[3, 2] = parametr[2, 2]) and (parametr[3, 3] = parametr[2, 3]))
    xor TheResultOfLogicalSumOfParametresThetEqualTo0);

  case (TheConditionForCaseOperator) of
    true:
      writeln('Все точки лежат на одной прямой. Такой треугольник не существует.');
  end;

end.
