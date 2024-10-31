$ErrorActionPreference = 'Stop';
$ProgressPreference = 'SilentlyContinue';

$esc = "$([char]27)";

{{- range .Commands }}
Write-Host "$esc[38;5;250m> {{.EscapedCommand}}$esc[0m";
{{.Command}};
{{end}}

Write-Host "$esc[38;5;250m> {{.EscapedFinalCommand}}$esc[0m";
{{.FinalCommand}}