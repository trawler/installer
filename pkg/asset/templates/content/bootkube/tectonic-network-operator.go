package bootkube

import (
	"os"
	"path/filepath"

	"github.com/openshift/installer/pkg/asset"
	"github.com/openshift/installer/pkg/asset/templates/content"
)

const (
	tectonicNetworkOperatorFileName = "tectonic-network-operator.yaml.template"
)

var _ asset.WritableAsset = (*TectonicNetworkOperator)(nil)

// TectonicNetworkOperator represents the template variable for tectonic-network-operator.yaml.template file
type TectonicNetworkOperator struct {
	fileName string
	FileList []*asset.File
}

// Dependencies returns all of the dependencies directly needed by the asset
func (t *TectonicNetworkOperator) Dependencies() []asset.Asset {
	return []asset.Asset{}
}

// Name returns the human-friendly name of the asset.
func (t *TectonicNetworkOperator) Name() string {
	return "TectonicNetworkOperator"
}

// Generate generates the actual files by this asset
func (t *TectonicNetworkOperator) Generate(parents asset.Parents) error {
	t.fileName = tectonicNetworkOperatorFileName
	data, err := content.GetBootkubeTemplate(t.fileName)
	if err != nil {
		return err
	}
	t.FileList = []*asset.File{
		{
			Filename: filepath.Join(content.TemplateDir, t.fileName),
			Data:     []byte(data),
		},
	}
	return nil
}

// Files returns the files generated by the asset.
func (t *TectonicNetworkOperator) Files() []*asset.File {
	return t.FileList
}

// Load returns the asset from disk.
func (t *TectonicNetworkOperator) Load(f asset.FileFetcher) (bool, error) {
	file, err := f.FetchByName(filepath.Join(content.TemplateDir, tectonicNetworkOperatorFileName))
	if err != nil {
		if os.IsNotExist(err) {
			return false, nil
		}
		return false, err
	}
	t.FileList = []*asset.File{file}
	return true, nil
}