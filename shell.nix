{pkgs ? import <nixpkgs> {}}:

pkgs.mkShell {
	buildInputs = with pkgs; [
		gcc
		gdb
	];

	shellHook = ''
		[ -x ~/.bashrc ] && source ~/.bashrc
		echo "Nix shell entered"
	'';
}
