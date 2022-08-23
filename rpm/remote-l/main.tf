terraform {
  required_providers {
    artifactory = {
      source  = "registry.terraform.io/jfrog/artifactory"
      version = "6.12.0"
    }
  }
}

# Configure the Artifactory provider
provider "artifactory" {
  url           = "${var.artifactory_url}/artifactory"
  access_token  = var.artifactory_access_token
  check_license = false
}

resource "artifactory_local_rpm_repository" "terraform-local-test-rpm-repo-basic" {
  key                        = "terraform-local-test-rpm-repo-basic"
  yum_root_depth             = 5
  calculate_yum_metadata     = true
  enable_file_lists_indexing = true
  yum_group_file_names       = "file-1.xml,file-2.xml"
  primary_keypair_ref        = artifactory_keypair.some-keypairGPG1.pair_name
  secondary_keypair_ref      = artifactory_keypair.some-keypairGPG2.pair_name
  depends_on = [
    artifactory_keypair.some-keypair-gpg-1,
    artifactory_keypair.some-keypair-gpg-2
  ]
}

resource "artifactory_keypair" "some-keypair-gpg-1" {
  pair_name   = "some-keypair${random_id.randid.id}"
  pair_type   = "GPG"
  alias       = "foo-alias1"
  private_key = file("samples/gpg.priv")
  public_key  = file("samples/gpg.pub")
  lifecycle {
    ignore_changes = [
      private_key,
      passphrase,
    ]
  }
}

resource "artifactory_keypair" "some-keypair-gpg-2" {
  pair_name   = "some-keypair${random_id.randid.id}"
  pair_type   = "GPG"
  alias       = "foo-alias2"
  private_key = file("samples/gpg.priv")
  public_key  = file("samples/gpg.pub")
  lifecycle {
    ignore_changes = [
      private_key,
      passphrase,
    ]
  }
}
