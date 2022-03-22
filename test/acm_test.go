package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformAcmExample(t *testing.T) {
	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../examples/acm",
		Vars: map[string]interface{}{
			"domain_name": "test.domain.com",
			"Client": "test",
		},
	})

	terraform.InitAndApply(t, terraformOptions)

	defer terraform.Destroy(t, terraformOptions)

	output := terraform.Output(t, terraformOptions, "domain_name")
	assert.Equal(t, "test.domain.com", output)
}