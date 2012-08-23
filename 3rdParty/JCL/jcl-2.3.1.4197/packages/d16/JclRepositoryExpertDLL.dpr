Library JclRepositoryExpertDLL;
{
-----------------------------------------------------------------------------
     DO NOT EDIT THIS FILE, IT IS GENERATED BY THE PACKAGE GENERATOR
            ALWAYS EDIT THE RELATED XML FILE (JclRepositoryExpertDLL-L.xml)

     Last generated: 04-03-2011  00:08:42 UTC
-----------------------------------------------------------------------------
}

{$R *.res}
{$ALIGN 8}
{$ASSERTIONS ON}
{$BOOLEVAL OFF}
{$DEBUGINFO OFF}
{$EXTENDEDSYNTAX ON}
{$IMPORTEDDATA ON}
{$IOCHECKS ON}
{$LOCALSYMBOLS OFF}
{$LONGSTRINGS ON}
{$OPENSTRINGS ON}
{$OPTIMIZATION ON}
{$OVERFLOWCHECKS OFF}
{$RANGECHECKS OFF}
{$REFERENCEINFO OFF}
{$SAFEDIVIDE OFF}
{$STACKFRAMES OFF}
{$TYPEDADDRESS OFF}
{$VARSTRINGCHECKS ON}
{$WRITEABLECONST ON}
{$MINENUMSIZE 1}
{$IMAGEBASE $58100000}
{$DESCRIPTION 'JCL Package containing repository wizards'}
{$LIBSUFFIX '160'}
{$IMPLICITBUILD OFF}

{$DEFINE BCB}
{$DEFINE WIN32}
{$DEFINE CONDITIONALEXPRESSIONS}
{$DEFINE RELEASE}

uses
  ToolsAPI,
  JclOtaRepositoryUtils in '..\..\experts\repository\JclOtaRepositoryUtils.pas' ,
  JclOtaRepositoryReg in '..\..\experts\repository\JclOtaRepositoryReg.pas' ,
  JclOtaExcDlgRepository in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgRepository.pas' ,
  JclOtaExcDlgWizard in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgWizard.pas' {JclOtaExcDlgForm},
  JclOtaExcDlgFileFrame in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgFileFrame.pas' {JclOtaExcDlgFilePage: TFrame},
  JclOtaExcDlgFormFrame in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgFormFrame.pas' {JclOtaExcDlgFormPage: TFrame},
  JclOtaExcDlgSystemFrame in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgSystemFrame.pas' {JclOtaExcDlgSystemPage: TFrame},
  JclOtaExcDlgLogFrame in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgLogFrame.pas' {JclOtaExcDlgLogPage: TFrame},
  JclOtaExcDlgTraceFrame in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgTraceFrame.pas' {JclOtaExcDlgTracePage: TFrame},
  JclOtaExcDlgThreadFrame in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgThreadFrame.pas' {JclOtaExcDlgThreadPage: TFrame},
  JclOtaExcDlgIgnoreFrame in '..\..\experts\repository\ExceptionDialog\JclOtaExcDlgIgnoreFrame.pas' {JclOtaExcDlgIgnorePage: TFrame}
  ;

exports
  JCLWizardInit name WizardEntryPoint;

end.
