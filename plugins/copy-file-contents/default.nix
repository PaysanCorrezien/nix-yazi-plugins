{
  lib,
  stdenv,
  fetchFromGitHub,
}:

stdenv.mkDerivation {
  pname = "yaziPlugins-copy-file-contents";
  version = "unstable-2024-12-20";

  src = fetchFromGitHub {
    owner = "AnirudhG07";
    repo = "plugins-yazi";
    rev = "11167e1860b10f885814ced0f04785ffa931d6c5";
    hash = "sha256-djE0of7Y+IYP6/euAG4uxvZ/ch5aU/PsYBX6MN/km5s=";
  };

  buildPhase = ''
    mkdir $out
    cp $src/copy-file-contents.yazi/* $out
  '';

  meta = with lib; {
    description = "Add a full border to Yazi to make it look fancier.";
    homepage = "https://github.com/AnirudhG07/plugins-yazi/tree/main/copy-file-contents.yazi";
    license = licenses.mit;
    maintainers = [ ];
    platforms = platforms.all;
  };
}
