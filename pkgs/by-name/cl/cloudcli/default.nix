{
  lib,
  fetchFromGitHub,
  buildGoModule,
  ...
}:
buildGoModule rec {

  name = "cloudcli";
  version = "1.2.2";
  src = fetchFromGitHub {
    owner = "cloudwm";
    repo = "cloudcli";
    rev = "v${version}";
    hash = "sha256-P2FAZT9VpRxhm3fl8eB//IbR8nW90VlH8Yn3eRkQiBA=";
  };

  vendorHash = "sha256-s726zte4DFQh8n6c69PWUmVCFI8POKWq0NosZpbINgc= ";
  meta = with lib; {
    description = "Terminal-based CLI interface for server and infrastructure management using supported APIs";
    homepage = "https://github.com/cloudwm/cloudcli";
    license = licenses.mit;
    maintainers = with maintainers; [ kalbasit ];
  };
}
