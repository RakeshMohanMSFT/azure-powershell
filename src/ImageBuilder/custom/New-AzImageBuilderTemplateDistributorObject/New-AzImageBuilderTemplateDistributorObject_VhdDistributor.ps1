
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for ImageTemplateDistributor.
.Description
Create an in-memory object for ImageTemplateDistributor.

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateVhdDistributor
.Link
https://learn.microsoft.com/powershell/module/az.ImageBuilder/new-azimagebuildertemplatedistributorobject
#>
function New-AzImageBuilderTemplateDistributorObject_VhdDistributor {
    [OutputType('Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateVhdDistributor')]
    [CmdletBinding(PositionalBinding=$false)]
    Param(

        [Parameter(HelpMessage="Tags that will be applied to the artifact once it has been created/updated by the distributor.")]
        [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplateDistributorArtifactTags]
        $ArtifactTag,
        [Parameter(Mandatory, HelpMessage="The name to be used for the associated RunOutput.")]
        [string]
        $RunOutputName,
        # Change it to switch parameter
        # [Parameter(Mandatory, HelpMessage="Type of distribution.")]
        # [string]
        # $Type
        [Parameter(Mandatory, HelpMessage="Distribute via VHD in a storage account.")]
        [Switch]
        $VhdDistributor
    )

    process {
        $Object = [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateVhdDistributor]::New()

        if ($PSBoundParameters.ContainsKey('ArtifactTag')) {
            $Object.ArtifactTag = $ArtifactTag
        }
        if ($PSBoundParameters.ContainsKey('RunOutputName')) {
            $Object.RunOutputName = $RunOutputName
        }
        if ($VhdDistributor.IsPresent) {
            $Object.Type = "VHD"
        }
        return $Object
    }
}

