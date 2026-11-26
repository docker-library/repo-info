## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:5e9c9ba41ba85de700f2b27e8fca05e85c05c68a5412ac7fd790b07fe039262f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:a35dc0ba082450cbb4d372f2decb416eb71676b4788fbebdb10d1cd70fb9edae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.0 MB (134033237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd51adffd0d565cc8000986ae91e31a3bd476b852ad8b92a1f9c8ea4509a438f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:58:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 24 Nov 2026 23:58:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 24 Nov 2026 23:58:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 24 Nov 2026 23:58:31 GMT
ENV DOCKER_VERSION=29.10.1
# Tue, 24 Nov 2026 23:58:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 24 Nov 2026 23:58:31 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Tue, 24 Nov 2026 23:58:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-amd64'; 			sha256='903090816da68f8bc1a2ff5346dd163a5adacfce4548d003c75df42cd47a9bf4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v6'; 			sha256='3675402568ec1a5b96792d6bde9ebdafb9d29e9681b7ff747e97d54c2198a735'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v7'; 			sha256='e6c51234507ef11ea661a8f714412a5eb9abeba586da73dca82ad89410f03b13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm64'; 			sha256='05c88e0f9152825e609a1cdb391faf14d5f94d23d071eaecb87bae69d98da8b8'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-ppc64le'; 			sha256='69713727c669ca87660c2197a5b97389cbad189120ee405f801986e8459ef83b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-riscv64'; 			sha256='b0af9b8cf5e8e244ea4049b4ca897c77a0b8b0d78c1b1cd7b8324d451de71ed8'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-s390x'; 			sha256='f611aa33cd5290ad1e2ca6d5357a06123541643698d729392d05a20d527e526e'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 24 Nov 2026 23:58:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Tue, 24 Nov 2026 23:58:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-x86_64'; 			sha256='b8840f5008c447f41fce0a57ae3adeab42c89b1eb6e6012524bcabbfb4ffbaf6'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv6'; 			sha256='c88658466ae9a4dadae64e6a4ec125202212bd460934537bd482bcd5e313f57b'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv7'; 			sha256='a7a79755648b975b66df08b4bfbe12b29f113d5dd8c7cd5b6b53b69efff2f422'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-aarch64'; 			sha256='1a9c918b2fb49b9c87f0018c64b5abd0d30715155e98dc939779fbaee6c414d3'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-ppc64le'; 			sha256='921437ba1fe9b5f7e3146c74c4d6c56673881741561c71bc23106b1e45886b1d'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-riscv64'; 			sha256='0af052a262dcf3a28214c7c86442046fc5e50b698e838d1904395d7a5333b142'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-s390x'; 			sha256='444af1a82eb51edd4a2aa5b1a209724f2acd19644e488fbd8c1dc8fd7d477f97'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 24 Nov 2026 23:58:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 24 Nov 2026 23:58:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:58:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 24 Nov 2026 23:58:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 24 Nov 2026 23:58:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:58:34 GMT
CMD ["sh"]
# Wed, 25 Nov 2026 00:08:13 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 25 Nov 2026 00:08:14 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 25 Nov 2026 00:08:14 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 25 Nov 2026 00:08:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 25 Nov 2026 00:08:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 25 Nov 2026 00:08:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 25 Nov 2026 00:08:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 00:08:17 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Nov 2026 00:08:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 25 Nov 2026 00:08:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Nov 2026 00:08:17 GMT
CMD []
# Wed, 25 Nov 2026 01:08:21 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 25 Nov 2026 01:08:21 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 25 Nov 2026 01:08:21 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 25 Nov 2026 01:08:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.10.1.tgz'; 			sha256='11eb5fa9a88e5971e71713aa277dbd916b7d368c6625844cacffa1c42b8df60c'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.10.1.tgz'; 			sha256='9b677eb3bb0ce21c4e6aae3e44678309250f1aa6fbc95f66a94de7b88b04e45b'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 25 Nov 2026 01:08:22 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 25 Nov 2026 01:08:22 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 25 Nov 2026 01:08:22 GMT
USER rootless
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfc1f0cdd7f42c5f21073e051b29b9071d64129a87167083764eca4c4c8e7fd6`  
		Last Modified: Tue, 24 Nov 2026 23:58:40 GMT  
		Size: 8.2 MB (8173900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a8352ed419d470cf819e9c2f8a90f941ab7567545771dac0fc81cf3d54d703`  
		Last Modified: Tue, 24 Nov 2026 23:58:40 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c270e2480dbc55f98c9730dd65b6df575be7d51a35a4057e9588f0dff7dd1bd3`  
		Last Modified: Tue, 24 Nov 2026 23:58:40 GMT  
		Size: 11.3 MB (11260752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0930855bc3e189346fc3f88f0a23f0c98b934a63e46cdf3e04f8783dfff2db90`  
		Last Modified: Tue, 24 Nov 2026 23:58:41 GMT  
		Size: 24.1 MB (24051279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe7cd39c64ab1873e0e59ac5ea808ba20656aa7598cb6c79241ee4542563aea`  
		Last Modified: Tue, 24 Nov 2026 23:58:41 GMT  
		Size: 12.0 MB (11977294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b983fa9c9f0de70add4d7b2a0d1667c20739fc7e86c79a20ed46e35bd19914`  
		Last Modified: Tue, 24 Nov 2026 23:58:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f74bdd6b59620a5bd72f8f06ad1c4003106bc2ac509f648644293716923c779`  
		Last Modified: Tue, 24 Nov 2026 23:58:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f692515334909d09a267ac659ffd84732fc9990e75adcca33acde9dcd4da97a3`  
		Last Modified: Tue, 24 Nov 2026 23:58:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf96f73e3681ea3745c88b8f6e26f6fe75e7fd58e60944aca11692386e2d77c`  
		Last Modified: Wed, 25 Nov 2026 00:08:27 GMT  
		Size: 4.1 MB (4080532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5d254628e9e3b59f956b41953dab908bb206a4f15c5e0f4aa81e0f6ef357031`  
		Last Modified: Wed, 25 Nov 2026 00:08:27 GMT  
		Size: 81.1 KB (81075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e31844a8236f9f66f7f424727846f67264901215a8ef788b997e39fd3ea15203`  
		Last Modified: Wed, 25 Nov 2026 00:08:27 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdf62cd757ced966ec0323b1833d18f93a1e6617705d825d43af900dfd662910`  
		Last Modified: Wed, 25 Nov 2026 00:08:28 GMT  
		Size: 54.2 MB (54213201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f6d15792afa1fa17a8ae24fea133929514be58ade0f07e0589d55c54a97f33`  
		Last Modified: Wed, 25 Nov 2026 00:08:28 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5147b33e9fa191a1070cb605766a209d8f91711fde486db6a31c11acb9d5f817`  
		Last Modified: Wed, 25 Nov 2026 00:08:28 GMT  
		Size: 3.4 KB (3370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f42b8593e44dccf108e28b99e4f466f295cc8d9225304e9490dc16c937d28ca`  
		Last Modified: Wed, 25 Nov 2026 01:08:27 GMT  
		Size: 3.6 MB (3632047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9016c5e3689d1f6f9a44e6f1fe532b30cead766097c557b57efdac08995ea6f2`  
		Last Modified: Wed, 25 Nov 2026 01:08:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b94ea85216e29cdbf991fec2ca3b0361b71bedee4495ab3d4ac2d772d3b968b7`  
		Last Modified: Wed, 25 Nov 2026 01:08:27 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ec895213a81724e3d6320b8fde3cae81712c1d6e07749f2aa37f3ad315e79c5`  
		Last Modified: Wed, 25 Nov 2026 01:08:27 GMT  
		Size: 12.7 MB (12699920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca811a0e367392b202edfe75772ad50dc519aa12127b35eda3a5a7c0966d1e7`  
		Last Modified: Wed, 25 Nov 2026 01:08:28 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:357c8b61e2716cae3c3dcc068c1ca44059602df814d2823da07594e43a83f5c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.0 KB (30962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29235d6fa9043b8021bc001671b77723d71b2c977a591313a6244c1b5d84a1ee`

```dockerfile
```

-	Layers:
	-	`sha256:51f8af3fe4fddf1a0f96e7860dcdb9eaaaf5a98847648ce68a7407c42105c998`  
		Last Modified: Wed, 25 Nov 2026 01:08:26 GMT  
		Size: 31.0 KB (30962 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:391b9d295e663ad884bf8e607840492dde6c2b85dedba92feb85beda79d27d76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.5 MB (124529264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a20a7d9179a7351d6e0989370410f64d244c79f903b5d871ff1e374b795addf`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:58:43 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 24 Nov 2026 23:58:44 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 24 Nov 2026 23:58:44 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 24 Nov 2026 23:58:46 GMT
ENV DOCKER_VERSION=29.10.1
# Tue, 24 Nov 2026 23:58:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 24 Nov 2026 23:58:46 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Tue, 24 Nov 2026 23:58:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-amd64'; 			sha256='903090816da68f8bc1a2ff5346dd163a5adacfce4548d003c75df42cd47a9bf4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v6'; 			sha256='3675402568ec1a5b96792d6bde9ebdafb9d29e9681b7ff747e97d54c2198a735'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v7'; 			sha256='e6c51234507ef11ea661a8f714412a5eb9abeba586da73dca82ad89410f03b13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm64'; 			sha256='05c88e0f9152825e609a1cdb391faf14d5f94d23d071eaecb87bae69d98da8b8'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-ppc64le'; 			sha256='69713727c669ca87660c2197a5b97389cbad189120ee405f801986e8459ef83b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-riscv64'; 			sha256='b0af9b8cf5e8e244ea4049b4ca897c77a0b8b0d78c1b1cd7b8324d451de71ed8'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-s390x'; 			sha256='f611aa33cd5290ad1e2ca6d5357a06123541643698d729392d05a20d527e526e'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 24 Nov 2026 23:58:47 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Tue, 24 Nov 2026 23:58:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-x86_64'; 			sha256='b8840f5008c447f41fce0a57ae3adeab42c89b1eb6e6012524bcabbfb4ffbaf6'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv6'; 			sha256='c88658466ae9a4dadae64e6a4ec125202212bd460934537bd482bcd5e313f57b'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv7'; 			sha256='a7a79755648b975b66df08b4bfbe12b29f113d5dd8c7cd5b6b53b69efff2f422'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-aarch64'; 			sha256='1a9c918b2fb49b9c87f0018c64b5abd0d30715155e98dc939779fbaee6c414d3'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-ppc64le'; 			sha256='921437ba1fe9b5f7e3146c74c4d6c56673881741561c71bc23106b1e45886b1d'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-riscv64'; 			sha256='0af052a262dcf3a28214c7c86442046fc5e50b698e838d1904395d7a5333b142'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-s390x'; 			sha256='444af1a82eb51edd4a2aa5b1a209724f2acd19644e488fbd8c1dc8fd7d477f97'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 24 Nov 2026 23:58:48 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 24 Nov 2026 23:58:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:58:48 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 24 Nov 2026 23:58:48 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 24 Nov 2026 23:58:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:58:48 GMT
CMD ["sh"]
# Wed, 25 Nov 2026 00:08:27 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 25 Nov 2026 00:08:27 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 25 Nov 2026 00:08:27 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 25 Nov 2026 00:08:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 25 Nov 2026 00:08:30 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 25 Nov 2026 00:08:30 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 25 Nov 2026 00:08:30 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 00:08:30 GMT
VOLUME [/var/lib/docker]
# Wed, 25 Nov 2026 00:08:30 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 25 Nov 2026 00:08:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 25 Nov 2026 00:08:30 GMT
CMD []
# Wed, 25 Nov 2026 01:08:36 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 25 Nov 2026 01:08:36 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 25 Nov 2026 01:08:36 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 25 Nov 2026 01:08:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.10.1.tgz'; 			sha256='11eb5fa9a88e5971e71713aa277dbd916b7d368c6625844cacffa1c42b8df60c'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.10.1.tgz'; 			sha256='9b677eb3bb0ce21c4e6aae3e44678309250f1aa6fbc95f66a94de7b88b04e45b'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 25 Nov 2026 01:08:37 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 25 Nov 2026 01:08:37 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 25 Nov 2026 01:08:37 GMT
USER rootless
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec81f19c6ac47d76f43a5a740814ae2f73f12847f69f6e11e2c200165efe5415`  
		Last Modified: Tue, 24 Nov 2026 23:58:55 GMT  
		Size: 8.2 MB (8237618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b64995e177a8a29d2f6529cfca8c3f7982a984d6f36693d25631fd62f1fcf1`  
		Last Modified: Tue, 24 Nov 2026 23:58:54 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56b1c9a7f15297b223cc29f051b15eec8d5d2ae53ad268f6842de4524d6832fc`  
		Last Modified: Tue, 24 Nov 2026 23:58:55 GMT  
		Size: 10.2 MB (10170720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd8e4fbc6786475eb21016604ba06c78ecf017c3ab17c7696a8191c7004fbce`  
		Last Modified: Tue, 24 Nov 2026 23:58:55 GMT  
		Size: 21.7 MB (21735591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3829fc25bacbb666df2e429e12adc0b20e39f4b99eacdd1123e23d27e6bcf6b`  
		Last Modified: Tue, 24 Nov 2026 23:58:55 GMT  
		Size: 10.9 MB (10865354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99aaa91128d58a189322eb5a62d5d36b5124297ee6356eb58b6ccc8de092f282`  
		Last Modified: Tue, 24 Nov 2026 23:58:56 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d823f77bc9d22d7b0a886c2795dce4970cec629173901a337063d79ca5e6f61a`  
		Last Modified: Tue, 24 Nov 2026 23:58:56 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f813b43652ba2ae61f4919f8faf1606315df8bc6029d2b0c7edb00e4362035`  
		Last Modified: Tue, 24 Nov 2026 23:58:57 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634166d836adcfc93827057e8c59a1f9350082199c03e6d06de7cacc47f97a78`  
		Last Modified: Wed, 25 Nov 2026 00:08:39 GMT  
		Size: 4.6 MB (4626623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af82514122fc844a7fe6ddfc3fcabe22354989241b37f0e2c3b01fb67c9fc289`  
		Last Modified: Wed, 25 Nov 2026 00:08:39 GMT  
		Size: 90.4 KB (90383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71a90fb7a4c84e50e69963cacff4a3fd55458d1b3630c80d5ebd00577dccf2`  
		Last Modified: Wed, 25 Nov 2026 00:08:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96035b7a4b99c174984bf9be34f78d56022acbdf79f69bbbabf9fea208fded03`  
		Last Modified: Wed, 25 Nov 2026 00:08:41 GMT  
		Size: 49.2 MB (49248825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88819e1f4d2a0c7317d0754e31360b2b694a19c9260392c728c74888734fa5dc`  
		Last Modified: Wed, 25 Nov 2026 00:08:40 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68fc95a73d67c9eb51ab83c77afbe7c353830957ff9b3bcd3b9da944f1c5ee52`  
		Last Modified: Wed, 25 Nov 2026 00:08:40 GMT  
		Size: 3.4 KB (3367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b88313eeb9a9d36c0da0ed357e51ab5a6b4f21514391d7d3653184e537f3d1`  
		Last Modified: Wed, 25 Nov 2026 01:08:42 GMT  
		Size: 3.6 MB (3600360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed82cc1bc0f30e32bce3925f31e0bc134360eaee83b970157ba2188b62a3ba68`  
		Last Modified: Wed, 25 Nov 2026 01:08:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d892b11e0826555ce159b0a21a8c7a209facfe134f446f941d0fb6c23fd65de`  
		Last Modified: Wed, 25 Nov 2026 01:08:42 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc7bb94071469cc0e1a651d197fe45402524e8c7a8d5c8c541c3d475bff9adef`  
		Last Modified: Wed, 25 Nov 2026 01:08:42 GMT  
		Size: 11.8 MB (11753627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6056d2d4ae2083ba44d295fbb985146c5188c16b5174c3b97b4f6bceef1ebf13`  
		Last Modified: Wed, 25 Nov 2026 01:08:43 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:a67fbbeb852b55b0fdf29d1f19e9add092a722b56dccda0eec750deba80ee02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 KB (31125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7978892e266e73b205be038bf396088e3f5196772b81abf7331946ce988e69ed`

```dockerfile
```

-	Layers:
	-	`sha256:e4c24b3c69e74f26caf8a36f98c08460a9f2e7fef860f9eb7d641c7d37ee8c73`  
		Last Modified: Wed, 25 Nov 2026 01:08:41 GMT  
		Size: 31.1 KB (31125 bytes)  
		MIME: application/vnd.in-toto+json
