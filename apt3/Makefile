GPG_KEY_ID=A3B5843ED70529C23162E3687713E6D88ED70D9D

regen:
	docker run -it --rm -v `pwd`:/repo debian:latest \
      bash -c "apt update && apt install -y apt-utils && cd /repo && ./regen.sh"
	gpg --default-key $(GPG_KEY_ID) -abs -o - dists/stable/Release > dists/stable/Release.gpg
	gpg --default-key $(GPG_KEY_ID) --clearsign -o - dists/stable/Release > dists/stable/InRelease