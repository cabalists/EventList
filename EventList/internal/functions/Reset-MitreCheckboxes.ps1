﻿function Reset-MitreCheckboxes {

<#
    .SYNOPSIS
    Unchecks all checked MITRE ATT&CK technique & area checkboxes.

    .DESCRIPTION
    Unchecks all checked MITRE ATT&CK technique & area checkboxes. Also resets the baseline combobox selection.

	.PARAMETER Confirm
	Prompts you for confirmation before executing the command.

	.PARAMETER WhatIf
	Displays a message that describes the effect of the command, instead of executing the command.

    .EXAMPLE
    Reset-MitreCheckboxes

	Unchecks all checked MITRE ATT&CK technique & area checkboxes.

#>

	[Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseSingularNouns", "")]
	[Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseDeclaredVarsMoreThanAssignments", "")]
	[CmdletBinding(SupportsShouldProcess)]
	param ()

    foreach ($key in $CheckBox.keys) {
        for ($i=0; $i -lt $CheckBox[$key].Items.count; $i++) {
            $CheckBox[$key].SetItemChecked($i, $false)
        }
    }

    foreach ($key in $CheckBoxArea.keys) {
        $($CheckBoxArea[$key]).checked = $false
    }

    $ComboBox1Value = ""
    $ComboBox1.text = "Select Baseline"
}