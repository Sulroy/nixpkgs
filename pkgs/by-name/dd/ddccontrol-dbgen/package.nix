{
  lib,
  fetchFromGitHub,
  rustPlatform,
}:

rustPlatform.buildRustPackage (finalAttrs: {
  pname = "ddccontrol-dbgen";
  version = "0.1.0";
  __structuredAttrs = true;

  src = fetchFromGitHub {
    owner = "ddccontrol";
    repo = "ddccontrol";
    tag = "3.4.0";
    hash = "sha256-1rCO99n89N2dbUU5vfTFyCrLC18iBF3ShcCjVjTz2to=";
  };

  cargoHash = "sha256-eLRK1fNl/vCs7pR78BglN87/axh8G/gYvZv0dQzzy8c=";

  cargoBuildFlags = [
    "--package"
    "ddccontrol-dbgen"
  ];

  meta = {
    description = "Deterministic offline XML to CBOR producer for ddccontrol-db";
    homepage = "https://github.com/ddccontrol/ddccontrol/tree/master/crates/ddccontrol-dbgen";
    mainProgram = "ddccontrol-dbgen";
    license = lib.licenses.gpl2Plus;
    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [
      pakhfn
      doronbehar
    ];
  };
})
