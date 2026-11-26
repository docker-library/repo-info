## `docker:cli`

```console
$ docker pull docker@sha256:4e60c31615e83523afbb59773b25d055c0da9edcd5f80a4c6a6eebad49de1a25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `docker:cli` - linux; amd64

```console
$ docker pull docker@sha256:2e7e18e61525a6ea49792681dfcdcb0676a10c25ce66b876ff0ba47bd44dd102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59319050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd647bb9a4c25f39473e1e56bf2ff2849065776535f5d3a7a03e4a6b106ec23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:e1f280c67de918c3f57003729cd187d5257c8371c570b942b7db10d37f727da0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (40986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b2d3a07cacc30c79928915c08b62b3e8e7518354efb6a59e1972635d462ded`

```dockerfile
```

-	Layers:
	-	`sha256:09984cb5d5e4dae09d45ff166740a1fce70b505f947780150730f335d205aa65`  
		Last Modified: Tue, 24 Nov 2026 23:58:40 GMT  
		Size: 41.0 KB (40986 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:f9edc829c83e377b7aaba23376b845df376e13d79e8fafae6330e50282f5969a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.3 MB (56349709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187cde4777c9192915a9dd460fd3234b637a19dd2e0bf68dfe6b14419b9c52e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:58:42 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 24 Nov 2026 23:58:43 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 24 Nov 2026 23:58:43 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 24 Nov 2026 23:58:46 GMT
ENV DOCKER_VERSION=29.10.1
# Tue, 24 Nov 2026 23:58:46 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 24 Nov 2026 23:58:46 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Tue, 24 Nov 2026 23:58:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-amd64'; 			sha256='903090816da68f8bc1a2ff5346dd163a5adacfce4548d003c75df42cd47a9bf4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v6'; 			sha256='3675402568ec1a5b96792d6bde9ebdafb9d29e9681b7ff747e97d54c2198a735'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v7'; 			sha256='e6c51234507ef11ea661a8f714412a5eb9abeba586da73dca82ad89410f03b13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm64'; 			sha256='05c88e0f9152825e609a1cdb391faf14d5f94d23d071eaecb87bae69d98da8b8'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-ppc64le'; 			sha256='69713727c669ca87660c2197a5b97389cbad189120ee405f801986e8459ef83b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-riscv64'; 			sha256='b0af9b8cf5e8e244ea4049b4ca897c77a0b8b0d78c1b1cd7b8324d451de71ed8'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-s390x'; 			sha256='f611aa33cd5290ad1e2ca6d5357a06123541643698d729392d05a20d527e526e'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 24 Nov 2026 23:58:49 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Tue, 24 Nov 2026 23:58:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-x86_64'; 			sha256='b8840f5008c447f41fce0a57ae3adeab42c89b1eb6e6012524bcabbfb4ffbaf6'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv6'; 			sha256='c88658466ae9a4dadae64e6a4ec125202212bd460934537bd482bcd5e313f57b'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv7'; 			sha256='a7a79755648b975b66df08b4bfbe12b29f113d5dd8c7cd5b6b53b69efff2f422'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-aarch64'; 			sha256='1a9c918b2fb49b9c87f0018c64b5abd0d30715155e98dc939779fbaee6c414d3'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-ppc64le'; 			sha256='921437ba1fe9b5f7e3146c74c4d6c56673881741561c71bc23106b1e45886b1d'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-riscv64'; 			sha256='0af052a262dcf3a28214c7c86442046fc5e50b698e838d1904395d7a5333b142'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-s390x'; 			sha256='444af1a82eb51edd4a2aa5b1a209724f2acd19644e488fbd8c1dc8fd7d477f97'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 24 Nov 2026 23:58:51 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 24 Nov 2026 23:58:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:58:51 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 24 Nov 2026 23:58:51 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 24 Nov 2026 23:58:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:58:51 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532d97415f3b3a317d739f1a0879d5af2d8a52b6512d1ec2d8418b5581b806ad`  
		Last Modified: Tue, 24 Nov 2026 23:58:58 GMT  
		Size: 8.1 MB (8072596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566b786a603012de18d92325d1c497cc6a374b791cc506cbb083c379f5b23bc3`  
		Last Modified: Tue, 24 Nov 2026 23:58:57 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95c800c6eb35c1e5616d15eccbf01202ac38f55e0320d1f5ecaf6c25288611c`  
		Last Modified: Tue, 24 Nov 2026 23:58:58 GMT  
		Size: 10.7 MB (10685001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d6ce83ade5b019482f499c0e0b02209922b02ff4d7a4576eb0f4e8dbfc3daa`  
		Last Modified: Tue, 24 Nov 2026 23:58:58 GMT  
		Size: 22.7 MB (22652643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0d99e50228fa641a5ac65a134348c620799c1191a444f40528aeff649de202`  
		Last Modified: Tue, 24 Nov 2026 23:58:59 GMT  
		Size: 11.4 MB (11378914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132f95c95283bca86f10b474778bfc8532f1ea72c26b8e62fb457b28e2785185`  
		Last Modified: Tue, 24 Nov 2026 23:58:59 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2bf03eeb104b52db416e5e092c6c452e708640bec05dd6857a3e9885c06053`  
		Last Modified: Tue, 24 Nov 2026 23:58:59 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8a272d125a514b57fd798abb3d2cf50b96bcb83315018ee8d6d7b62b7656496`  
		Last Modified: Tue, 24 Nov 2026 23:59:00 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:99368b66dfab51c2d5f3b423ba426f81c20fe0aab094f140d130decbb175fcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eca936906a9197b2f242a1d9421690b58d1a527c43f2cb6eb8f589271d32fa70`

```dockerfile
```

-	Layers:
	-	`sha256:f864080a6997fc4dc4670f497722c1ebf6b25161575c4c571e8c96b03027b6dd`  
		Last Modified: Tue, 24 Nov 2026 23:58:57 GMT  
		Size: 41.2 KB (41152 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:fc9702e7a7a112194866b1af4ab0745638f63f467b8ae02ce38ac2fec9b51029
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55310878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b2cc70b05adab6f8c90e02e30bf400b8683ec3d82b69b8ef10c125f803fcde`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:58:44 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 24 Nov 2026 23:58:44 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 24 Nov 2026 23:58:44 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 24 Nov 2026 23:58:47 GMT
ENV DOCKER_VERSION=29.10.1
# Tue, 24 Nov 2026 23:58:47 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 24 Nov 2026 23:58:47 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Tue, 24 Nov 2026 23:58:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-amd64'; 			sha256='903090816da68f8bc1a2ff5346dd163a5adacfce4548d003c75df42cd47a9bf4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v6'; 			sha256='3675402568ec1a5b96792d6bde9ebdafb9d29e9681b7ff747e97d54c2198a735'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v7'; 			sha256='e6c51234507ef11ea661a8f714412a5eb9abeba586da73dca82ad89410f03b13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm64'; 			sha256='05c88e0f9152825e609a1cdb391faf14d5f94d23d071eaecb87bae69d98da8b8'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-ppc64le'; 			sha256='69713727c669ca87660c2197a5b97389cbad189120ee405f801986e8459ef83b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-riscv64'; 			sha256='b0af9b8cf5e8e244ea4049b4ca897c77a0b8b0d78c1b1cd7b8324d451de71ed8'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-s390x'; 			sha256='f611aa33cd5290ad1e2ca6d5357a06123541643698d729392d05a20d527e526e'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 24 Nov 2026 23:58:50 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Tue, 24 Nov 2026 23:58:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-x86_64'; 			sha256='b8840f5008c447f41fce0a57ae3adeab42c89b1eb6e6012524bcabbfb4ffbaf6'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv6'; 			sha256='c88658466ae9a4dadae64e6a4ec125202212bd460934537bd482bcd5e313f57b'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv7'; 			sha256='a7a79755648b975b66df08b4bfbe12b29f113d5dd8c7cd5b6b53b69efff2f422'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-aarch64'; 			sha256='1a9c918b2fb49b9c87f0018c64b5abd0d30715155e98dc939779fbaee6c414d3'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-ppc64le'; 			sha256='921437ba1fe9b5f7e3146c74c4d6c56673881741561c71bc23106b1e45886b1d'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-riscv64'; 			sha256='0af052a262dcf3a28214c7c86442046fc5e50b698e838d1904395d7a5333b142'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-s390x'; 			sha256='444af1a82eb51edd4a2aa5b1a209724f2acd19644e488fbd8c1dc8fd7d477f97'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 24 Nov 2026 23:58:56 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 24 Nov 2026 23:58:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:58:56 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 24 Nov 2026 23:58:56 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 24 Nov 2026 23:58:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:58:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078924cbc8285846697e0f1b52ac6fae8624fa51b14589eaece07cf900946f46`  
		Last Modified: Tue, 24 Nov 2026 23:59:03 GMT  
		Size: 7.4 MB (7374920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b64995e177a8a29d2f6529cfca8c3f7982a984d6f36693d25631fd62f1fcf1`  
		Last Modified: Tue, 24 Nov 2026 23:58:54 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ec5024757e234545b606e030289e99ee13fe17e85ab80348b22a79293702c9d`  
		Last Modified: Tue, 24 Nov 2026 23:59:03 GMT  
		Size: 10.7 MB (10673838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71c927f15abcb7bc680615070c0f0154184ab4df7cc8c797901eff27cb43182`  
		Last Modified: Tue, 24 Nov 2026 23:59:03 GMT  
		Size: 22.6 MB (22631744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08df47371fcfc924149ddcf30453bd7a3f4d4242d8c52e9dfe318f75ef2dff59`  
		Last Modified: Tue, 24 Nov 2026 23:59:04 GMT  
		Size: 11.4 MB (11360491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a41c5ed2e3777bde1c0c2d72c085db65b4845351136236c5c6d6d1a3fb03265`  
		Last Modified: Tue, 24 Nov 2026 23:59:04 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdae8684192013c4d626efc873aa996d4dd2d248c066ed3c985828d8841c201`  
		Last Modified: Tue, 24 Nov 2026 23:59:04 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9fddb7ab63d7b0d782ab7e5b53f35721ac489ff9f03ff4c91feb33e387e08e`  
		Last Modified: Tue, 24 Nov 2026 23:59:05 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:c45da184a59814e1cfc54185c517772c7a0663044a4d26e0550b9437b33d0e22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:719cedef435642bb075d50a3930d30aff19fa8b83e24878d8f73286a8076a2ec`

```dockerfile
```

-	Layers:
	-	`sha256:a31aec790a8c7c2d5acdb14c19d1bb44e9fb0153d18520016f460e1eb115f196`  
		Last Modified: Tue, 24 Nov 2026 23:59:03 GMT  
		Size: 41.2 KB (41151 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:b78a25fa65ae16d99fcb692b29d34fe73a229af7b41e2383befda4af7ec51af4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55202034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e5bd216819001df41da18d4c04211f28d75aae9d2a821ee3c62c249dfb6b66d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

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

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:1128d51d3d71ae2f558bf3d6792c0b2f035bfe60f3431987f54cbb144cde8bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.2 KB (41192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfa719f4c7009d1f42659c5e2765e070d39214de45aa9bce6b69d64dc4c1909a`

```dockerfile
```

-	Layers:
	-	`sha256:8840f8c7801a3093d8d350ed8d14949fb935278b1d4e9ef8094ad39e07d16d16`  
		Last Modified: Tue, 24 Nov 2026 23:58:54 GMT  
		Size: 41.2 KB (41192 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; ppc64le

```console
$ docker pull docker@sha256:05d85132ed1f449ab53a8ba2d23bce8103d6a700cbb2ddd927612b4b5b79871e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.3 MB (55338199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c739893004fb731c4257fd49309235f43628070b1e9a18db4c5685056d05d9b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Wed, 25 Nov 2026 04:05:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 25 Nov 2026 04:05:02 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 25 Nov 2026 04:05:03 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 25 Nov 2026 04:05:09 GMT
ENV DOCKER_VERSION=29.10.1
# Wed, 25 Nov 2026 04:05:09 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 25 Nov 2026 04:05:09 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Wed, 25 Nov 2026 04:05:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-amd64'; 			sha256='903090816da68f8bc1a2ff5346dd163a5adacfce4548d003c75df42cd47a9bf4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v6'; 			sha256='3675402568ec1a5b96792d6bde9ebdafb9d29e9681b7ff747e97d54c2198a735'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v7'; 			sha256='e6c51234507ef11ea661a8f714412a5eb9abeba586da73dca82ad89410f03b13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm64'; 			sha256='05c88e0f9152825e609a1cdb391faf14d5f94d23d071eaecb87bae69d98da8b8'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-ppc64le'; 			sha256='69713727c669ca87660c2197a5b97389cbad189120ee405f801986e8459ef83b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-riscv64'; 			sha256='b0af9b8cf5e8e244ea4049b4ca897c77a0b8b0d78c1b1cd7b8324d451de71ed8'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-s390x'; 			sha256='f611aa33cd5290ad1e2ca6d5357a06123541643698d729392d05a20d527e526e'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 25 Nov 2026 04:05:13 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Wed, 25 Nov 2026 04:05:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-x86_64'; 			sha256='b8840f5008c447f41fce0a57ae3adeab42c89b1eb6e6012524bcabbfb4ffbaf6'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv6'; 			sha256='c88658466ae9a4dadae64e6a4ec125202212bd460934537bd482bcd5e313f57b'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv7'; 			sha256='a7a79755648b975b66df08b4bfbe12b29f113d5dd8c7cd5b6b53b69efff2f422'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-aarch64'; 			sha256='1a9c918b2fb49b9c87f0018c64b5abd0d30715155e98dc939779fbaee6c414d3'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-ppc64le'; 			sha256='921437ba1fe9b5f7e3146c74c4d6c56673881741561c71bc23106b1e45886b1d'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-riscv64'; 			sha256='0af052a262dcf3a28214c7c86442046fc5e50b698e838d1904395d7a5333b142'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-s390x'; 			sha256='444af1a82eb51edd4a2aa5b1a209724f2acd19644e488fbd8c1dc8fd7d477f97'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 25 Nov 2026 04:05:16 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 25 Nov 2026 04:05:17 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 04:05:17 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 25 Nov 2026 04:05:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 25 Nov 2026 04:05:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Nov 2026 04:05:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688a55ee5f72663d7eb2ea07749925efbb3d5ecc94fbedd9527880e8042c5f92`  
		Last Modified: Wed, 25 Nov 2026 04:05:29 GMT  
		Size: 8.6 MB (8614142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3364914313c7b8269fb487a257b9393e96ce3abe936b74962a1db61e7e9dadb`  
		Last Modified: Wed, 25 Nov 2026 04:05:28 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6bcf3753cacc0f47211304b213e55673f5e3e4376b5c7adba28d5ba4799621`  
		Last Modified: Wed, 25 Nov 2026 04:05:29 GMT  
		Size: 10.2 MB (10202497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c55fb9967af19f7a4b17fab6839d4bf9c9357a16e5711889e0404adf0097b74`  
		Last Modified: Wed, 25 Nov 2026 04:05:29 GMT  
		Size: 21.8 MB (21776166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a024e9c85c8d63c85e859fecfe90831a89b1f4cace6b608ee7a8c3d3893bee5f`  
		Last Modified: Wed, 25 Nov 2026 04:05:30 GMT  
		Size: 10.9 MB (10921320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6b6c3716a0cd5edca056328c33d79bbc66b290d99010c771bc5822031e0a2e2`  
		Last Modified: Wed, 25 Nov 2026 04:05:30 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca83466a3016ce9bf370c1781881d88aa7c132ef3c6e3557ab2b2e8ee9a198d2`  
		Last Modified: Wed, 25 Nov 2026 04:05:30 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a40fe3c8d1d4979e9a18f2ffcc2d61fcaf9430a5f88495722f2b6a084b2466a`  
		Last Modified: Wed, 25 Nov 2026 04:05:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:7760421301ac77858dd357962cc78a650e7e5c450c999a10c3257d28846b7f4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (41048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1f57fd0a2731d7f07c951ff2b906dff3b5d9e3ee14cbe1fe806178c45bc8356`

```dockerfile
```

-	Layers:
	-	`sha256:95dcb88f677f8dc02b4e383d20646c33dff4f7be324b6e695a204fd4b6fe2619`  
		Last Modified: Wed, 25 Nov 2026 04:05:28 GMT  
		Size: 41.0 KB (41048 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; riscv64

```console
$ docker pull docker@sha256:2a8e3ed74e3e4e2b2a06190c007fbae842388636343d1c8a56bd54f7016110a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56740107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2510b85f58857afadd6f52e0c46a9de993b03070c2218720462ab58b8ae127fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Wed, 25 Nov 2026 17:38:36 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 25 Nov 2026 17:38:36 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 25 Nov 2026 17:38:37 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 25 Nov 2026 17:39:06 GMT
ENV DOCKER_VERSION=29.10.1
# Wed, 25 Nov 2026 17:39:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 25 Nov 2026 17:39:06 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Wed, 25 Nov 2026 17:39:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-amd64'; 			sha256='903090816da68f8bc1a2ff5346dd163a5adacfce4548d003c75df42cd47a9bf4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v6'; 			sha256='3675402568ec1a5b96792d6bde9ebdafb9d29e9681b7ff747e97d54c2198a735'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v7'; 			sha256='e6c51234507ef11ea661a8f714412a5eb9abeba586da73dca82ad89410f03b13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm64'; 			sha256='05c88e0f9152825e609a1cdb391faf14d5f94d23d071eaecb87bae69d98da8b8'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-ppc64le'; 			sha256='69713727c669ca87660c2197a5b97389cbad189120ee405f801986e8459ef83b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-riscv64'; 			sha256='b0af9b8cf5e8e244ea4049b4ca897c77a0b8b0d78c1b1cd7b8324d451de71ed8'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-s390x'; 			sha256='f611aa33cd5290ad1e2ca6d5357a06123541643698d729392d05a20d527e526e'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 25 Nov 2026 17:39:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Wed, 25 Nov 2026 17:39:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-x86_64'; 			sha256='b8840f5008c447f41fce0a57ae3adeab42c89b1eb6e6012524bcabbfb4ffbaf6'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv6'; 			sha256='c88658466ae9a4dadae64e6a4ec125202212bd460934537bd482bcd5e313f57b'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv7'; 			sha256='a7a79755648b975b66df08b4bfbe12b29f113d5dd8c7cd5b6b53b69efff2f422'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-aarch64'; 			sha256='1a9c918b2fb49b9c87f0018c64b5abd0d30715155e98dc939779fbaee6c414d3'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-ppc64le'; 			sha256='921437ba1fe9b5f7e3146c74c4d6c56673881741561c71bc23106b1e45886b1d'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-riscv64'; 			sha256='0af052a262dcf3a28214c7c86442046fc5e50b698e838d1904395d7a5333b142'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-s390x'; 			sha256='444af1a82eb51edd4a2aa5b1a209724f2acd19644e488fbd8c1dc8fd7d477f97'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 25 Nov 2026 17:39:25 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 25 Nov 2026 17:39:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 17:39:25 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 25 Nov 2026 17:39:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 25 Nov 2026 17:39:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 25 Nov 2026 17:39:26 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:824aa8606c2dcb8fe44adf52ae8de8ff5beb1b97ad196fe16d27dfd2f95c8633`  
		Last Modified: Wed, 25 Nov 2026 17:40:29 GMT  
		Size: 8.3 MB (8315718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:638fccbc80020e795b02162b6f8bf89f4c4afea48cd062fee04c2857a913beab`  
		Last Modified: Wed, 25 Nov 2026 17:40:25 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f37dd586ac0847a2c562986dd79813379af80ed6f41d6c477e3c5c8dbc25a89d`  
		Last Modified: Wed, 25 Nov 2026 17:40:30 GMT  
		Size: 10.7 MB (10696503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1d6bbc6b55b54a413a060ea12e25a7a375bc463ec66cca98428d719e20ca66`  
		Last Modified: Wed, 25 Nov 2026 17:40:34 GMT  
		Size: 22.7 MB (22734452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2854e760f8f6a1fb6526086b1e4171d32694a31491e3f72daba13bceaad81bba`  
		Last Modified: Wed, 25 Nov 2026 17:40:33 GMT  
		Size: 11.4 MB (11410666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7718fa7dc265b293cc0c97a296aa0ad3070ab009de2e4ea18a09b04fe13a3d76`  
		Last Modified: Wed, 25 Nov 2026 17:40:31 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea6242815d7d79ac73e2fce06048c08dfad72169bbe1e1ed62c73e7743e1f60c`  
		Last Modified: Wed, 25 Nov 2026 17:40:32 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278c21aa53908b0cb33379a3fded867a94d19f0325ed9b9067d703cb6c2c9da8`  
		Last Modified: Wed, 25 Nov 2026 17:40:33 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:9798c14b2892e4d2793f5909acb83c5933e1ab8e626baa73e646163923896c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (41045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f163bd7bb966dee9ddb6f5f0487e199906d377a75b6b2d587656f3b305614d49`

```dockerfile
```

-	Layers:
	-	`sha256:96a2a393b8678ffc01f0fcb7e07541a002fa0d9567193dc397a6d63eda5d8fcd`  
		Last Modified: Wed, 25 Nov 2026 17:40:25 GMT  
		Size: 41.0 KB (41045 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; s390x

```console
$ docker pull docker@sha256:a712917f0f863f325f395b84d604a43cc79013c7ab3faeae23780e04e96cfb8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57833291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bc81bc81dbc6ca79baf3c102094d4fd30c4374dfbbd122c45b68f3a209e7d7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Tue, 24 Nov 2026 23:57:46 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Tue, 24 Nov 2026 23:57:46 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Tue, 24 Nov 2026 23:57:46 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Tue, 24 Nov 2026 23:57:50 GMT
ENV DOCKER_VERSION=29.10.1
# Tue, 24 Nov 2026 23:57:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.1.tgz'; 			sha256='061642059fa7f2ed9b2f04a327a951cff4249585cf04b2661c2a6539197c9962'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.1.tgz'; 			sha256='0a5d05059d3d82099a35ec7326120f4789f43b1b238ecc318242b178b986f09c'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.1.tgz'; 			sha256='64e904668b30def335d933d5318b6310927a90a68570073d81741af78e71b1fd'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.1.tgz'; 			sha256='a38c8a9ef6d17bce07499bfd3a3688542274769dc3b4f75c06ea2705fe65053e'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.1.tgz'; 			sha256='431f36bea426544239e95019e85a1d491b1b4817fd393fc5258fb2f000577791'; 			;; 		'riscv64') 			url='https://download.docker.com/linux/static/stable/riscv64/docker-29.10.1.tgz'; 			sha256='f30e9d9f642feaf4bc175d8c114f4b0bd4fa0032f2352ffbc1d3269592b9c6bf'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.1.tgz'; 			sha256='c161754580a9e74a8af85a78b9ee7c79a5971676c28113b88f117cafd8036728'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Tue, 24 Nov 2026 23:57:50 GMT
ENV DOCKER_BUILDX_VERSION=0.39.1
# Tue, 24 Nov 2026 23:57:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-amd64'; 			sha256='903090816da68f8bc1a2ff5346dd163a5adacfce4548d003c75df42cd47a9bf4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v6'; 			sha256='3675402568ec1a5b96792d6bde9ebdafb9d29e9681b7ff747e97d54c2198a735'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm-v7'; 			sha256='e6c51234507ef11ea661a8f714412a5eb9abeba586da73dca82ad89410f03b13'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-arm64'; 			sha256='05c88e0f9152825e609a1cdb391faf14d5f94d23d071eaecb87bae69d98da8b8'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-ppc64le'; 			sha256='69713727c669ca87660c2197a5b97389cbad189120ee405f801986e8459ef83b'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-riscv64'; 			sha256='b0af9b8cf5e8e244ea4049b4ca897c77a0b8b0d78c1b1cd7b8324d451de71ed8'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.1/buildx-v0.39.1.linux-s390x'; 			sha256='f611aa33cd5290ad1e2ca6d5357a06123541643698d729392d05a20d527e526e'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Tue, 24 Nov 2026 23:57:52 GMT
ENV DOCKER_COMPOSE_VERSION=5.8.0
# Tue, 24 Nov 2026 23:57:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-x86_64'; 			sha256='b8840f5008c447f41fce0a57ae3adeab42c89b1eb6e6012524bcabbfb4ffbaf6'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv6'; 			sha256='c88658466ae9a4dadae64e6a4ec125202212bd460934537bd482bcd5e313f57b'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-armv7'; 			sha256='a7a79755648b975b66df08b4bfbe12b29f113d5dd8c7cd5b6b53b69efff2f422'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-aarch64'; 			sha256='1a9c918b2fb49b9c87f0018c64b5abd0d30715155e98dc939779fbaee6c414d3'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-ppc64le'; 			sha256='921437ba1fe9b5f7e3146c74c4d6c56673881741561c71bc23106b1e45886b1d'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-riscv64'; 			sha256='0af052a262dcf3a28214c7c86442046fc5e50b698e838d1904395d7a5333b142'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.8.0/docker-compose-linux-s390x'; 			sha256='444af1a82eb51edd4a2aa5b1a209724f2acd19644e488fbd8c1dc8fd7d477f97'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Tue, 24 Nov 2026 23:57:53 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Tue, 24 Nov 2026 23:57:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:57:53 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Tue, 24 Nov 2026 23:57:53 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Tue, 24 Nov 2026 23:57:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:57:53 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97839fba112bbb77ab32a2d02e813dd49bef239f8e407b9efa0d925511cf735e`  
		Last Modified: Tue, 24 Nov 2026 23:58:04 GMT  
		Size: 8.5 MB (8471221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1f557b8f4831c5011350bf5f76e85b8cb77459a53aa0bb009cd4f028a73f48`  
		Last Modified: Tue, 24 Nov 2026 23:58:04 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e4da15d3f5e23f91668ee8673543ec5c81cce7d04f5f40c14b66f62aa4dec90`  
		Last Modified: Tue, 24 Nov 2026 23:58:04 GMT  
		Size: 10.9 MB (10878824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:606de4f547d00772b68599736b52a6c6a1750f3ba670e8bc12eaa9345385c1b6`  
		Last Modified: Tue, 24 Nov 2026 23:58:04 GMT  
		Size: 23.2 MB (23166808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ad56b7a1fcaf43b9ad0d10ff3f1278428c5ca7a5815e8fa262088087d19c99d`  
		Last Modified: Tue, 24 Nov 2026 23:58:05 GMT  
		Size: 11.6 MB (11593615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4766a1caa31d64ce7713c8b8d5bbb68f8e017ab7f781f0923b16b9d0b9bd764`  
		Last Modified: Tue, 24 Nov 2026 23:58:05 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0f507e5870bd5d32635810862b6c2597270f9c8ecc1f2087cc9f58d94abcac`  
		Last Modified: Tue, 24 Nov 2026 23:58:05 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08942a9045451de2b11f14684818c73bcd6b6621437265920aeb90b5a2ca1df7`  
		Last Modified: Tue, 24 Nov 2026 23:58:06 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:0e41e13fd1cdb0108ab708d8226dcad2ad502c242292ca164ced72f58134ab8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.0 KB (40986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd9023ada1311b1065c3d5ea52fd304df7c71a6c49eb67a80318a833498820f`

```dockerfile
```

-	Layers:
	-	`sha256:cd16ca09f9b700e398fb3dca7d9aeb37776577dabcabf77960eba6cb20fe6651`  
		Last Modified: Tue, 24 Nov 2026 23:58:04 GMT  
		Size: 41.0 KB (40986 bytes)  
		MIME: application/vnd.in-toto+json
