Library JclVersionControlExpertDLL;
{
-----------------------------------------------------------------------------
     DO NOT EDIT THIS FILE, IT IS GENERATED BY THE PACKAGE GENERATOR
            ALWAYS EDIT THE RELATED XML FILE (JclVersionControlExpertDLL-L.xml)

     Last generated: 27-03-2011  21:15:08 UTC
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
{$LOCALSYMBOLS ON}
{$LONGSTRINGS ON}
{$OPENSTRINGS ON}
{$OPTIMIZATION ON}
{$OVERFLOWCHECKS OFF}
{$RANGECHECKS OFF}
{$REFERENCEINFO ON}
{$SAFEDIVIDE OFF}
{$STACKFRAMES OFF}
{$TYPEDADDRESS OFF}
{$VARSTRINGCHECKS ON}
{$WRITEABLECONST OFF}
{$MINENUMSIZE 1}
{$IMAGEBASE $58170000}
{$DESCRIPTION 'JCL Integration of version control systems in the IDE'}
{$LIBSUFFIX 'D60'}
{$IMPLICITBUILD OFF}

{$DEFINE WIN32}
{$DEFINE CONDITIONALEXPRESSIONS}
{$DEFINE VER140}
{$DEFINE RELEASE}

uses
  ToolsAPI,
  JclVersionControlImpl in '..\..\experts\versioncontrol\JclVersionControlImpl.pas' ,
  JclVersionCtrlCommonOptions in '..\..\experts\versioncontrol\JclVersionCtrlCommonOptions.pas' {JclVersionCtrlOptionsFrame: TFrame}
  ;

exports
  JCLWizardInit name WizardEntryPoint;

end.
