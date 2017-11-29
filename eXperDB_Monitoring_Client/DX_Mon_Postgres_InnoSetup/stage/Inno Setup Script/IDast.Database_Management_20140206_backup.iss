; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "iDAST Database Management"
#define MyAppVersion "1.0"
#define MyAppPublisher "Webcash"
#define MyAppURL "http://www.webcash.co.kr"
#define MyAppExeName "iDAST.exe"
#define MyPgName "iDAST"
#define FilePath "C:\Work\S-Idast"
#define License ""

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{29508B21-0803-4878-A26C-2E268E082C57}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyPgName}
DefaultGroupName={#MyPgName}
LicenseFile=Korean_License.rtf
OutputDir=C:\Temp
OutputBaseFilename=iDAST Database Management
SetupIconFile=C:\Program Files (x86)\Inno Setup 5\Examples\Setup.ico
Compression=lzma2
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
PrivilegesRequired=admin

ChangesEnvironment=true   

[Languages]
Name: "korean"; MessagesFile: "compiler:Languages\Korean.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Types]
Name: full; Description: "전체 설치";
Name: win32; Description: "Windows x86(32bit)";
;Name: win64; Description: "Windows x64(64bit)"; 
Name: custom; Description: "사용자 정의 설치"; Flags: iscustom

[Components]
;Name: prg; Description: "프로그램 파일"; Types: full win32  custom; Flags: fixed 
Name: odp; Description: "Oracle Data Provider"; Types: full win32 custom; Flags: fixed
;Name: odp; Description: "Oracle Data Provider"; Types: full win32  custom; Flags: fixed
;Name: postgre; Description: "PostgreSQL"; Types: full 
;Name: postgre\win32; Description: "ODBC for x86(32bit)"; Types: full win32
;Name: postgre\win64; Description: "ODBC for x64(64bit)"; Types: full win64
;Name: tibero; Description: "Tibero"; Types: full
;Name: tibero\win32; Description: "ODBC for x86(32bit)"; Types: full win32 
;Name: tibero\win64; Description: "ODBC for x64(64bit)"; Types: full win64

[Files]
; IDast Program File
Source: "C:\Work\idast\iDast.Main\bin\Debug\License.rtf"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Work\S-Idast\iDast.Main\bin\Debug\License.rtf"; DestDir: "{app}"; Flags: ignoreversion

Source: "C:\Work\idast\DefCtl\IDAST_Main\bin\Debug\iDAST.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Work\S-Idast\iDast.Main\bin\Debug\iDast.Main.exe"; DestDir: "{app}"; Flags: ignoreversion

Source: "C:\Work\idast\iDast.MonTibero\bin\Debug\iDast.MonTibero.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Work\S-Idast\iDast.Main\bin\Debug\iDast.Migration.exe"; DestDir: "{app}"; Flags: ignoreversion

Source: "C:\Work\idast\DefCtl\IDAST_setting\bin\Debug\Setting.exe"; DestDir: "{app}"; Flags: ignoreversion
;Source: "C:\Work\S-Idast\iDast.Main\bin\Debug\Setting.exe"; DestDir: "{app}"; Flags: ignoreversion

;Source: "C:\Work\idast\IDAST\bin\Debug\iDastPkg.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Work\idast\iDast.Meta\bin\Debug\iDast.Meta.exe"; DestDir: "{app}"; Flags: ignoreversion

Source: "C:\Work\idast\IDAST\bin\Debug\Install_ODBC_32Bit.bat"; DestDir: "{app}"; Flags: ignoreversion



; Configuration Files
Source: "C:\Work\idast\Setups\App.Asbl.xml"; DestDir: "{app}"; Flags: ignoreversion uninsneveruninstall; AfterInstall: SaveAppAsbl()  
;Source: "C:\Work\S-Idast\Setups\App.Asbl.xml"; DestDir: "{app}"; Flags: ignoreversion uninsneveruninstall; AfterInstall: SaveAppAsbl()      
                  
Source: "C:\Work\idast\Setups\Configure.xml"; DestDir: "{app}"; Flags: ignoreversion uninsneveruninstall; AfterInstall: SaveConfiguration()
;Source: "C:\Work\S-Idast\Setups\Configure.xml"; DestDir: "{app}"; Flags: ignoreversion uninsneveruninstall; AfterInstall: SaveConfiguration()


; iDast DLL File
Source: "C:\Work\idast\DefCtl\IDAST_Main\bin\Debug\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Work\idast\iDast.MonTibero\bin\Debug\*.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\*.dll"; DestDir: "{app}"; Flags: ignoreversion




;Source: "C:\Work\S-Idast\iDast.Main\bin\Debug\*.dll"; DestDir: "{app}"; Flags: ignoreversion

; iDast Configuration Files
;Source: "C:\Work\idast\iDast.MonTibero\bin\Debug\Shared\Cfg\*"; DestDir: "{app}\Shared\Cfg\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\Cfg\*"; DestDir: "{app}\Shared\Cfg\"; Flags: ignoreversion
;Source: "C:\Work\idast\iDast.MonTibero\bin\Debug\Shared\Img\*"; DestDir: "{app}\Shared\Img\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\Img\*"; DestDir: "{app}\Shared\Img\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\iDB\*"; DestDir: "{app}\Shared\iDB\"; Flags: ignoreversion

;Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\*"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion

Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\DataGridViewPercentageColumn.dll"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\orannzsbb11.dll"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\oraocci11.dll"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\orasql11.dll"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\sqora32.dll"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\sqoras32.dll"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\sqresus.dll"; DestDir: "{app}\Shared\lib\"; Flags: ignoreversion


Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\oci.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\ociw32.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\oraociei11.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Work\idast\IDAST\bin\Debug\Shared\lib\OraOps11w.dll"; DestDir: "{app}"; Flags: ignoreversion

                         
                         
                         
                         
;Source: "C:\Work\S-Idast\iDast.Main\bin\Debug\Shared\Cfg\*"; DestDir: "{app}\Shared\Cfg\"; Flags: ignoreversion

; ODBC Driver Postgres
;Source: "C:\Work\S-Idast\Setups\Postgres_ODBC\win32\*"; DestDir: "{app}\Shared\Lib\Postgres\win32\"; Flags: ignoreversion; Components: postgre\win32
;Source: "C:\Work\S-Idast\Setups\Postgres_ODBC\win64\*"; DestDir: "{app}\Shared\Lib\Postgres\win64\"; Flags: ignoreversion; Components: postgre\win64

; ODBC Driver Tibero
Source: "C:\Work\idast\Setups\TIBERO_ODBC\win32\*"; DestDir: "{app}\Shared\Lib\Tibero\win32\"; Flags: ignoreversion 
;Source: "C:\Work\S-Idast\Setups\TIBERO_ODBC\win32\*"; DestDir: "{app}\Shared\Lib\Tibero\win32\"; Flags: ignoreversion; Components: tibero\win32

;Source: "C:\Work\idast\Setups\TIBERO_ODBC\win64\*"; DestDir: "{app}\Shared\Lib\Tibero\win64\"; Flags: ignoreversion; Components: tibero\win64
;Source: "C:\Work\S-Idast\Setups\TIBERO_ODBC\win64\*"; DestDir: "{app}\Shared\Lib\Tibero\win64\"; Flags: ignoreversion; Components: tibero\win64



; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyPgName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\Setting"; Filename: "{app}\Setting.exe"
Name: "{group}\uninstall"; Filename: "{uninstallexe}"
 
Name: "{commondesktop}\{#MyPgName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon


[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent
;Postgres ODBC Install 
;Filename: "{app}\Shared\Lib\Postgres\win32\ODBCRun.bat"; Components: postgre\win32; Flags: runhidden;
;Filename: "{app}\Shared\Lib\Postgres\win64\ODBCRun.bat"; Components: postgre\win64; Flags: runhidden;
;Tibero ODBC Install 
Filename: "{app}\Shared\Lib\Tibero\win32\ODBCRun.bat";  Flags: runhidden;
;Filename: "{app}\Shared\Lib\Tibero\win64\ODBCRun.bat"; Components: tibero\win64; Flags: runhidden;

Filename: "{app}\Install_ODBC_32Bit.bat";  Flags: runhidden;


[Registry]
Root: "HKCU"; Subkey: "Environment"; ValueType: string; ValueName: "NLS_LANG"; ValueData: "AMERICAN_AMERICA.KO16MSWIN949"; Flags: createvalueifdoesntexist 


[CODE]
var
  CustomEdit: TEdit;   // 텍스트박스 License 코드 받기위함
  CustomPageID: Integer; // License 입력 받는 페이지 번호
  LicenseCode: string;  // 입력 받은 License 파일
  
// XML Load Script 
function LoadValueFromXML(const AFileName, APath: string): string;
var
  XMLNode: Variant;
  XMLDocument: Variant;  
begin
  Result := '';
  XMLDocument := CreateOleObject('Msxml2.DOMDocument.6.0');
  try
    XMLDocument.async := False;
    XMLDocument.load(AFileName);
    if (XMLDocument.parseError.errorCode <> 0) then
      MsgBox('The XML file could not be parsed. ' + 
        XMLDocument.parseError.reason, mbError, MB_OK)
    else
    begin
      XMLDocument.setProperty('SelectionLanguage', 'XPath');
      XMLNode := XMLDocument.selectSingleNode(APath);
      Result := XMLNode.text;
    end;
  except
    MsgBox('An error occured!' + #13#10 + GetExceptionMessage, mbError, MB_OK);
  end;
end;
// XML Save Script
procedure SaveValueToXML(const AFileName, APath, AValue: string);
var
  XMLNode: Variant;
  XMLDocument: Variant;  
begin
  XMLDocument := CreateOleObject('Msxml2.DOMDocument.6.0');
  try
    XMLDocument.async := False;
    XMLDocument.load(AFileName);
    if (XMLDocument.parseError.errorCode <> 0) then
      MsgBox('The XML file could not be parsed. ' + 
        XMLDocument.parseError.reason, mbError, MB_OK)
    else
    begin
      XMLDocument.setProperty('SelectionLanguage', 'XPath');
      XMLNode := XMLDocument.selectSingleNode(APath);
      XMLNode.text := AValue;
      XMLDocument.save(AFileName);
    end;
  except
    MsgBox('An error occured!' + #13#10 + GetExceptionMessage, mbError, MB_OK);
  end;
end;
// InnoSetup Define 된 셋업파일 초기화 부분 
procedure InitializeWizard;
var  
  CustomPage: TWizardPage; // 페지지를 만든다. 
begin
  // 페이지 정보 입력 wpLicense 는 원래 라이센스 입력 받는 페이지 부분 대신에 사용되게 됨.
  // wpLicense 및 기타 다른 정보 들이 있으므로 메뉴얼 참고 
  CustomPage := CreateCustomPage(wpLicense, '라이센스 입력', 
    '라이센스 번호를 입력합니다.');
    // 현재 페이지 ID 
  CustomPageID := CustomPage.ID;
  // 텍스트 박스를 생성한다. 
  CustomEdit := TEdit.Create(WizardForm);
  // 텍스트 박스 정보 
  with CustomEdit do
  begin
    Parent := CustomPage.Surface;
    width := 400;
  end;
 end;

// Innosetup Define 된 페이지 넘어갈때 이벤트 
procedure CurPageChanged(CurPageID: Integer);
begin
  // 페이지 번호가 사용자 페이지부분과 맞다면 
  if CurPageID = CustomPageID then
    begin 
      // 암호를 초기화 한다. 추후에 기존에 설치된 파일이 있으면 자동으로 불러오도록
      // 현재로서는 기존에 파일이 남아 있는지 알 방법이 없음 (만약 레지스트리에 설치 관련 폴더를 넣는다면 가능함)
      LicenseCode := '';
      // 선언해둔 텍스트 박스에 라이센스 코드를 넣는다. 
      CustomEdit.Text := LicenseCode
    end;
   
  
end;
// InnoSetup Define 된 "다음" 버튼 클릭 이벤트 
function NextButtonClick(CurPageID: Integer): Boolean;
begin
  Result := True;
  if CurPageID = CustomPageID then
    begin
      // 입력 받은 코드를 변수에 넣는다. 
      LicenseCode := CustomEdit.Text;
      // 라이센스 번호 체크를 넣고자 하면 본 부분에 
      // 라이센스 번호 체크를 위해서는 라이센스 관련 모듈을 불러와서 해당 함수를 호출하여 체크하여 결과를 받아서 
      // 진행 여부 판단해야함. 추후 라이센스 체크 부분이 완료 된뒤에 해당 부분을 완료 해야함. 
    end;
    //SaveValueToXML('C:\Temp\Configure.xml', '//configuration/public/appender[@name="cfgAppender"]/Certification/@value', CustomEdit.Text);
end;


//App.Asbl.xml    
procedure SaveAppAsbl();
var AppPath: string;
begin
  AppPath := ExpandConstant('{app}');
  SaveValueToXML( AppPath + '\App.Asbl.xml','//configuration/log4net/appender[@name="iDastApp"]/file/@value', AppPath + '\iDastApp.log');
end;
//Configure.xml
procedure SaveConfiguration();
var AppPath: String;
begin
  AppPath := ExpandConstant('{app}');
  SaveValueToXML(AppPath + '\Configure.xml', '//configuration/public/appender[@name="cfgAppender"]/TempPath/@value', AppPath + '\Tmp');
  SaveValueToXML(AppPath + '\Configure.xml', '//configuration/public/appender[@name="cfgAppender"]/UserPath/@value', AppPath + '\User');
  SaveValueToXML(AppPath + '\Configure.xml', '//configuration/public/appender[@name="cfgAppender"]/LogPath/@value', AppPath + '\Log');
  SaveValueToXML(AppPath + '\Configure.xml', '//configuration/public/appender[@name="cfgAppender"]/Certification/@value', LicenseCode);


end;
