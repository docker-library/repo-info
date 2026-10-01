<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.8`](#docker298)
-	[`docker:29.8-cli`](#docker298-cli)
-	[`docker:29.8-dind`](#docker298-dind)
-	[`docker:29.8-dind-rootless`](#docker298-dind-rootless)
-	[`docker:29.8-windowsservercore`](#docker298-windowsservercore)
-	[`docker:29.8-windowsservercore-ltsc2022`](#docker298-windowsservercore-ltsc2022)
-	[`docker:29.8-windowsservercore-ltsc2025`](#docker298-windowsservercore-ltsc2025)
-	[`docker:29.8.2`](#docker2982)
-	[`docker:29.8.2-alpine3.24`](#docker2982-alpine324)
-	[`docker:29.8.2-cli`](#docker2982-cli)
-	[`docker:29.8.2-cli-alpine3.24`](#docker2982-cli-alpine324)
-	[`docker:29.8.2-dind`](#docker2982-dind)
-	[`docker:29.8.2-dind-alpine3.24`](#docker2982-dind-alpine324)
-	[`docker:29.8.2-dind-rootless`](#docker2982-dind-rootless)
-	[`docker:29.8.2-windowsservercore`](#docker2982-windowsservercore)
-	[`docker:29.8.2-windowsservercore-ltsc2022`](#docker2982-windowsservercore-ltsc2022)
-	[`docker:29.8.2-windowsservercore-ltsc2025`](#docker2982-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-cli` - linux; amd64

```console
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:3acba49741f1aedb28125ffb2307faaec8e870ebb9343de41c21ac549bd6abf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:a8c74d29d1cc5fa424f2e56d8d56a0e1a75e4105a58d879c72d1c11d1141597f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153077389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5534af3018b5d4f793eda678a2e97ff766e2cffea35ff1be2bca190caac122`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
# Thu, 01 Oct 2026 01:09:51 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:09:52 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99bdb42ee1604c00b2d6ea465df75b5c385b54fa91ca4382bf45b8ca5c05306`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 3.6 MB (3626076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d0ae52ddc3d5db3780b99116d1a7494c8414fa2017a5b7af9d08cc3b3aab2e`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1288d448688a164080b142c2e0b7628aa61973129ac0b08fb6b1e96daa19cd3d`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276d7d83c3889e5e83b7dfce78bea427c9bc8606f9ac97177e1fb5eea791f68a`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 12.1 MB (12122062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86befe49608c5f9f010b11c6a74c1921642ecde8a1b769abeb13f890bc6b6845`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:30e38c5fcb2186aa46fa9f3acec3b525e1c52d7e291ffdbffc05b69cb11c478a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5cb7f5521a663309d6a94a082c3561c07962f5d4db337d7a9e6f9535ba9c56`

```dockerfile
```

-	Layers:
	-	`sha256:27a61cc13c0ccdcc7bf3dd564eb28558dc2c219f953c3e529b7f2b3813c57aa2`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:40648b0a47452510f92719c2491cfdfac980c9d1fceb918565defd31df5fab47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142134410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a79b6804eb2213a1e8f60f33e805b55e26ccdce6c59b603711dabbf2f5a2c9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
# Thu, 01 Oct 2026 01:10:05 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:10:05 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4611e8d269006548f2bfad41645b6728ad5de768338a3a842f8af3e109a42c85`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 3.6 MB (3611166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90328094cecde07d4e59077a7febb50d3ce7b5471d29a56f50b4611206a965fe`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02174c9afa2f4265de3372a2c8e1cdfa49b1db9cb2ab06932d5a190381671d46`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565169ee6cc17f01c244359768e76febfb51b7e6f43d71d753c98983b3f60e79`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 11.3 MB (11250651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0296f063f45ac825db30c67052e0413694b8a61714f72e01738a731406a3c4fb`  
		Last Modified: Thu, 01 Oct 2026 01:10:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d35963b81437eea42ca9d5c1545641dc4194e0aa8de77d0ce0064b204071d187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdf46b8136018da4f6c76da6427c2c792aa4d2324369708dbb6940e9ac3d91a`

```dockerfile
```

-	Layers:
	-	`sha256:d12a9f6240ba65ae1bda55893b70b975dcfb27c7daab9b8abf94e2dea5f9289b`  
		Last Modified: Thu, 01 Oct 2026 01:10:10 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:283bab44d0174c5722d31089d83af991d1421228fffda132488bfd9216d0b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:eb86318afd7cfb4b9aceeb815f3072ac49d520c70efbfe01a6ce835399464d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8-cli` - linux; amd64

```console
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-dind`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8-dind` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-dind-rootless`

```console
$ docker pull docker@sha256:3acba49741f1aedb28125ffb2307faaec8e870ebb9343de41c21ac549bd6abf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:a8c74d29d1cc5fa424f2e56d8d56a0e1a75e4105a58d879c72d1c11d1141597f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153077389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5534af3018b5d4f793eda678a2e97ff766e2cffea35ff1be2bca190caac122`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
# Thu, 01 Oct 2026 01:09:51 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:09:52 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99bdb42ee1604c00b2d6ea465df75b5c385b54fa91ca4382bf45b8ca5c05306`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 3.6 MB (3626076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d0ae52ddc3d5db3780b99116d1a7494c8414fa2017a5b7af9d08cc3b3aab2e`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1288d448688a164080b142c2e0b7628aa61973129ac0b08fb6b1e96daa19cd3d`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276d7d83c3889e5e83b7dfce78bea427c9bc8606f9ac97177e1fb5eea791f68a`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 12.1 MB (12122062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86befe49608c5f9f010b11c6a74c1921642ecde8a1b769abeb13f890bc6b6845`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:30e38c5fcb2186aa46fa9f3acec3b525e1c52d7e291ffdbffc05b69cb11c478a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5cb7f5521a663309d6a94a082c3561c07962f5d4db337d7a9e6f9535ba9c56`

```dockerfile
```

-	Layers:
	-	`sha256:27a61cc13c0ccdcc7bf3dd564eb28558dc2c219f953c3e529b7f2b3813c57aa2`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:40648b0a47452510f92719c2491cfdfac980c9d1fceb918565defd31df5fab47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142134410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a79b6804eb2213a1e8f60f33e805b55e26ccdce6c59b603711dabbf2f5a2c9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
# Thu, 01 Oct 2026 01:10:05 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:10:05 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4611e8d269006548f2bfad41645b6728ad5de768338a3a842f8af3e109a42c85`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 3.6 MB (3611166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90328094cecde07d4e59077a7febb50d3ce7b5471d29a56f50b4611206a965fe`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02174c9afa2f4265de3372a2c8e1cdfa49b1db9cb2ab06932d5a190381671d46`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565169ee6cc17f01c244359768e76febfb51b7e6f43d71d753c98983b3f60e79`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 11.3 MB (11250651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0296f063f45ac825db30c67052e0413694b8a61714f72e01738a731406a3c4fb`  
		Last Modified: Thu, 01 Oct 2026 01:10:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d35963b81437eea42ca9d5c1545641dc4194e0aa8de77d0ce0064b204071d187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdf46b8136018da4f6c76da6427c2c792aa4d2324369708dbb6940e9ac3d91a`

```dockerfile
```

-	Layers:
	-	`sha256:d12a9f6240ba65ae1bda55893b70b975dcfb27c7daab9b8abf94e2dea5f9289b`  
		Last Modified: Thu, 01 Oct 2026 01:10:10 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8-windowsservercore`

```console
$ docker pull docker@sha256:283bab44d0174c5722d31089d83af991d1421228fffda132488bfd9216d0b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.8-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:eb86318afd7cfb4b9aceeb815f3072ac49d520c70efbfe01a6ce835399464d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:29.8-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.2`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8.2` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-alpine3.24`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8.2-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8.2-cli` - linux; amd64

```console
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-cli-alpine3.24`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8.2-cli-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-cli-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-cli-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-dind`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8.2-dind` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-dind-alpine3.24`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8.2-dind-alpine3.24` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-dind-alpine3.24` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-dind-alpine3.24` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-dind-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind-alpine3.24` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-dind-rootless`

```console
$ docker pull docker@sha256:3acba49741f1aedb28125ffb2307faaec8e870ebb9343de41c21ac549bd6abf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29.8.2-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:a8c74d29d1cc5fa424f2e56d8d56a0e1a75e4105a58d879c72d1c11d1141597f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153077389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5534af3018b5d4f793eda678a2e97ff766e2cffea35ff1be2bca190caac122`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
# Thu, 01 Oct 2026 01:09:51 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:09:52 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99bdb42ee1604c00b2d6ea465df75b5c385b54fa91ca4382bf45b8ca5c05306`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 3.6 MB (3626076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d0ae52ddc3d5db3780b99116d1a7494c8414fa2017a5b7af9d08cc3b3aab2e`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1288d448688a164080b142c2e0b7628aa61973129ac0b08fb6b1e96daa19cd3d`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276d7d83c3889e5e83b7dfce78bea427c9bc8606f9ac97177e1fb5eea791f68a`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 12.1 MB (12122062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86befe49608c5f9f010b11c6a74c1921642ecde8a1b769abeb13f890bc6b6845`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:30e38c5fcb2186aa46fa9f3acec3b525e1c52d7e291ffdbffc05b69cb11c478a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5cb7f5521a663309d6a94a082c3561c07962f5d4db337d7a9e6f9535ba9c56`

```dockerfile
```

-	Layers:
	-	`sha256:27a61cc13c0ccdcc7bf3dd564eb28558dc2c219f953c3e529b7f2b3813c57aa2`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29.8.2-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:40648b0a47452510f92719c2491cfdfac980c9d1fceb918565defd31df5fab47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142134410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a79b6804eb2213a1e8f60f33e805b55e26ccdce6c59b603711dabbf2f5a2c9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
# Thu, 01 Oct 2026 01:10:05 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:10:05 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4611e8d269006548f2bfad41645b6728ad5de768338a3a842f8af3e109a42c85`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 3.6 MB (3611166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90328094cecde07d4e59077a7febb50d3ce7b5471d29a56f50b4611206a965fe`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02174c9afa2f4265de3372a2c8e1cdfa49b1db9cb2ab06932d5a190381671d46`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565169ee6cc17f01c244359768e76febfb51b7e6f43d71d753c98983b3f60e79`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 11.3 MB (11250651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0296f063f45ac825db30c67052e0413694b8a61714f72e01738a731406a3c4fb`  
		Last Modified: Thu, 01 Oct 2026 01:10:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29.8.2-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d35963b81437eea42ca9d5c1545641dc4194e0aa8de77d0ce0064b204071d187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdf46b8136018da4f6c76da6427c2c792aa4d2324369708dbb6940e9ac3d91a`

```dockerfile
```

-	Layers:
	-	`sha256:d12a9f6240ba65ae1bda55893b70b975dcfb27c7daab9b8abf94e2dea5f9289b`  
		Last Modified: Thu, 01 Oct 2026 01:10:10 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29.8.2-windowsservercore`

```console
$ docker pull docker@sha256:283bab44d0174c5722d31089d83af991d1421228fffda132488bfd9216d0b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8.2-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29.8.2-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.2-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29.8.2-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.8.2-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:eb86318afd7cfb4b9aceeb815f3072ac49d520c70efbfe01a6ce835399464d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:29.8.2-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:cli`

```console
$ docker pull docker@sha256:b1805116a6a86cc591b5d5f60a910a0715cdcc9d18d866ad68b1457ead25c35c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:cli` - linux; amd64

```console
$ docker pull docker@sha256:b0dfb3beea69612ccf1f9cfd8f74179b9c497d6b0c9e1294664dffe9bc1c070a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66557971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdaa3f3a154c168f5ca7ac7c0d648a20efccd22630909c0d22f9bcee0027fb35`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:1a5c66d47feae8ebb71062b55bffc5950eb71597bc046f1809709043849e17c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5af8147b6b869a726125fb98063c2c82f701368868a1ebe5a37f87d0c67820b`

```dockerfile
```

-	Layers:
	-	`sha256:368b67071c6d2040d898daeaac2498ad4238d8d3405dffadcb210f33ff7cc56f`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:75b7b2e40669d00e39233752a3116e33483c62cb0c084800884a7daa8f516fb4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62745580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f44291c4db03d6fbf1ce5749b21b91f2e7747021461c539c83262631c616721`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:8ab8edcf6b6f0d5f385db00d9e8248c56e7d9c9e1d8cb0d1cb18645c45c1670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da5c2aedc00bf54d7284c69f821ef8dc5723e0791a8a4e87ec5a2b7db790005c`

```dockerfile
```

-	Layers:
	-	`sha256:566c9ede71628a1abb1aec82d81b2ce9740c2a22b34b5fd0f2555aff2316a4f0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:3ea47db3e5920c09124fcf9eb1fc55f0db6cb64f1726032664adb17ea024d1b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.7 MB (61710248 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb4472bfee54c71fb24f2268b0c798b0c135d0fb9e2e1cdb18bcc212c5a6e05e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:17cc9bcfa886da0e208667c96d7a4456bc076d24dba6219cddefdea6add4fce1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4291fef6ebb9c305b8999de869bf6bd3baf4bc5a1b3857bd2896bea67fdd6117`

```dockerfile
```

-	Layers:
	-	`sha256:67a1cb73e677c3f732c5a2ea8394ea530cebc988733dac998b42d4c8a88a592d`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:cf2cb65d40085fc4049e8c9c12791d2fb2862d73eca486f91240534011a8a14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62154962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a15b0dbecfd136ac63a8f2500a6c6f12fa174f0df8d1b2be7628f45ecbc0770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:d710b7a13bc0c46e114a5ccf633bd703a1b5a3f8ada9b2348a3846f9013f34c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3468f01894b7b33b046e315e00ecfa7eaf154511606c3015c47d6b7113b8bd`

```dockerfile
```

-	Layers:
	-	`sha256:999f70b9552803da1891a45f597af7093ecf0ee82cb9689215f8330a585d3ba0`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:3acba49741f1aedb28125ffb2307faaec8e870ebb9343de41c21ac549bd6abf0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:a8c74d29d1cc5fa424f2e56d8d56a0e1a75e4105a58d879c72d1c11d1141597f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153077389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5534af3018b5d4f793eda678a2e97ff766e2cffea35ff1be2bca190caac122`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
# Thu, 01 Oct 2026 01:09:51 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:09:51 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:09:52 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:09:52 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99bdb42ee1604c00b2d6ea465df75b5c385b54fa91ca4382bf45b8ca5c05306`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 3.6 MB (3626076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d0ae52ddc3d5db3780b99116d1a7494c8414fa2017a5b7af9d08cc3b3aab2e`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1288d448688a164080b142c2e0b7628aa61973129ac0b08fb6b1e96daa19cd3d`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:276d7d83c3889e5e83b7dfce78bea427c9bc8606f9ac97177e1fb5eea791f68a`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 12.1 MB (12122062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86befe49608c5f9f010b11c6a74c1921642ecde8a1b769abeb13f890bc6b6845`  
		Last Modified: Thu, 01 Oct 2026 01:09:58 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:30e38c5fcb2186aa46fa9f3acec3b525e1c52d7e291ffdbffc05b69cb11c478a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f5cb7f5521a663309d6a94a082c3561c07962f5d4db337d7a9e6f9535ba9c56`

```dockerfile
```

-	Layers:
	-	`sha256:27a61cc13c0ccdcc7bf3dd564eb28558dc2c219f953c3e529b7f2b3813c57aa2`  
		Last Modified: Thu, 01 Oct 2026 01:09:57 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:40648b0a47452510f92719c2491cfdfac980c9d1fceb918565defd31df5fab47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142134410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a79b6804eb2213a1e8f60f33e805b55e26ccdce6c59b603711dabbf2f5a2c9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
# Thu, 01 Oct 2026 01:10:05 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 01 Oct 2026 01:10:05 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 01 Oct 2026 01:10:05 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4611e8d269006548f2bfad41645b6728ad5de768338a3a842f8af3e109a42c85`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 3.6 MB (3611166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90328094cecde07d4e59077a7febb50d3ce7b5471d29a56f50b4611206a965fe`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02174c9afa2f4265de3372a2c8e1cdfa49b1db9cb2ab06932d5a190381671d46`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565169ee6cc17f01c244359768e76febfb51b7e6f43d71d753c98983b3f60e79`  
		Last Modified: Thu, 01 Oct 2026 01:10:11 GMT  
		Size: 11.3 MB (11250651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0296f063f45ac825db30c67052e0413694b8a61714f72e01738a731406a3c4fb`  
		Last Modified: Thu, 01 Oct 2026 01:10:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d35963b81437eea42ca9d5c1545641dc4194e0aa8de77d0ce0064b204071d187
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bdf46b8136018da4f6c76da6427c2c792aa4d2324369708dbb6940e9ac3d91a`

```dockerfile
```

-	Layers:
	-	`sha256:d12a9f6240ba65ae1bda55893b70b975dcfb27c7daab9b8abf94e2dea5f9289b`  
		Last Modified: Thu, 01 Oct 2026 01:10:10 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:7dcdfc4a20246236f558175182ccace1eb15a41bd3eb119dd2284f393498b7c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:dcac6f16dc25ddec91e2d467605775b95a035ab884b94cb4c2cc7cbef6fd726d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.3 MB (137327910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a32a1e3b62afa34576d728f5b65075e89e468ebabc56696df28fa256e8ac0b5d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:49:33 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:49:33 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:49:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:49:36 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:49:37 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:49:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:49:38 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:49:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:49:38 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:02 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:03 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:06 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:06 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:06 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:06 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:06 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc72bda2346da6b95e681b76d50a1fda8166adc074da1f09c1474f161e125ab`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 8.2 MB (8199527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39072b6860d9d91740c22e96b4c95aa0281cbdcf2b9d5c8eca500a765980b17d`  
		Last Modified: Wed, 30 Sep 2026 23:49:44 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9d9afb546de0b5580821ed103cba0e0d08380eb7fda3836262cd3092f455ad`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 20.2 MB (20247357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2080e81834789b8673f771fc2bb5ecd81836fb1c61496550eefda61ac1d1209`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 23.1 MB (23059629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b2f2c0a1a49f997f29455ed665351eeece64ca9cdf340cee2d8a24d57c5dbc9`  
		Last Modified: Wed, 30 Sep 2026 23:49:45 GMT  
		Size: 11.2 MB (11199570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4113b1eed173323ed530e9cc45881ce6511e1dc273ebb4975f54090595811f`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726104e3829717a962db28469ab553b47bfca490eef6899b8971f03e8a5f1a7c`  
		Last Modified: Wed, 30 Sep 2026 23:49:46 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:575ee58fd309181559dbf1a09075e99aa00ffd2cc27bc94d07be6565a7eec637`  
		Last Modified: Wed, 30 Sep 2026 23:49:47 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febdc1ea78be61cd978e1f6dc571f381694c68ad037380f8e3d9487952657dd5`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 4.1 MB (4080928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10c79548425b6dfd0ac148368008a46c5e896afcf9386828798be9d9124c290`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 81.2 KB (81150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ec225414d0c5c3fab638278096182c06a8119ab317e67b94688bb457b6455f`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e121e30e82ed3124d7fb796d3df5585cb29109a791ce6f20857ae3bca5f142c2`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 66.6 MB (66601861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b57868bebc223f5faf67b73012a8160cd7d0b4061bf730b6fd15a10ef9d97dc`  
		Last Modified: Thu, 01 Oct 2026 00:10:16 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecd9c7cad66e1bccffbc9a15d9cd341a27da53e0c7f16df06da533698efcc9a`  
		Last Modified: Thu, 01 Oct 2026 00:10:17 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:0a758e572529b910f3bdc65fca3869953f592401553b0d941cd1d33aff1a8f39
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:177eefc2f206fb12b59c366e0276985cdb3269f413dfcb1ba75d2c94488450ae`

```dockerfile
```

-	Layers:
	-	`sha256:2bccc2df77b3430a8daed04e3f2a122029082039e9c0e2a7c137395c025ed89b`  
		Last Modified: Thu, 01 Oct 2026 00:10:15 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:02f2850fc1d79b5e94773d7fc5f37203e5b8b912bdb7b4c7f00b37f0594f1ffe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128609738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365dae479e531a258c263d77b1e1672809c077d54011def4c6676d6cd4d9bec9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:25 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:26 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:30 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:08:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:08:50 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:08:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:08:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:08:50 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedb4389e82bd31ed3d8e2b583cee4a19d8a212ea059e17fdfc0e69354664b6`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.1 MB (8098137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95093154de9c0c4534594a56118585d5a29f506aad947b6c2e09aaf31408737a`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5337ffe7065fd9230daddea8e2045abd2a40dfda276ad742d5a7a079a2b5c13c`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.8 MB (18793215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1759cfdcf1bbe1651751e70c25346182388a6cbc2199a3e1d852925ab2c2e731`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 21.7 MB (21674169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0573e2ee482a66f1d40fd5cce694e24c3b39baaeed6bf66b320740e26b1b621a`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.6 MB (10622793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6684d162f2a5ac116fbb0a092fe652714cd111f106925cf7e02e28014fdaa0ac`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7865893b7bfca8eb1324d7e0b482eab4787ff026934ca15bd314e0af5a32e3c8`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5969087fb92cdbe020281dd6a961da745bed7f7c5b186d075044309eb91d5cef`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 3.7 MB (3717160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e109c3af18612766922a7164bda613f7e35581d6d1e5e70576cdd5db345bc72a`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d536a288e5ae98e8750ddc5bb54725d82aaece2f74309900b7bda3983eb539dd`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feec55389b5082494587bd3d6dc9a36b3bfda2c81d6d47e6f093c82d45abfc9f`  
		Last Modified: Thu, 01 Oct 2026 00:09:02 GMT  
		Size: 62.1 MB (62061147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db337118cadb8ad29720ca581d1fd7c32961c0572a594f66f50500556c8f8e0`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613317141677010bb0acd8dfa377e88a4d7322e9570a2adc4636070072881be3`  
		Last Modified: Thu, 01 Oct 2026 00:09:01 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:55af86e27752d352439204502582eba436c238608e5a12fdb504c5829f04cc77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:777a3e2989813671980d72664215d65301c43ccc218a529048fa8fcd2b12c9e4`

```dockerfile
```

-	Layers:
	-	`sha256:24de013e3270394ad108f5881f8d5beeb41ad5c16fc01245b84119556cf9ff05`  
		Last Modified: Thu, 01 Oct 2026 00:09:00 GMT  
		Size: 34.4 KB (34358 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:7e55412807ae215d88296abf713c37cfeef3f7c7d91e7b3c571bad75acde1588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127118448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e003ee61f20d9b6f6203486d59a54a36eb5e1d5234d4ec460d0b12e12d4560fa`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:28 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:28 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:34 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:36 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:36 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:36 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:10:12 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:10:13 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:10:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:10:17 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:10:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:10:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:10:17 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b353aceb5defcaef8ceeac3dd9f11817f3eab1fdcdae30c8e8c6b4a117a5983b`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 7.4 MB (7394864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3122852e9d76fbcb6e9e1cde89607125ad519c59669a582209c3d17f22568a09`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4aa4af7c5334d30452b40a60be89073490b7ac0d8b67b2e4cfc20600d04152e`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 18.8 MB (18778743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db744abd4be020c77c69a14f54c5654631ccbd890ce8b4c1f33cb145957f4f8`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 21.7 MB (21658855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eeeaa066cc42bc174cca3a5d5aebe171337ae3dd39776cd53cd1e6006c0ba42`  
		Last Modified: Wed, 30 Sep 2026 23:50:43 GMT  
		Size: 10.6 MB (10610429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c12e9674fc2ac15b8d4554e2dbdfbfc78553a89e52c83de4a8f47cdc45ec2c`  
		Last Modified: Wed, 30 Sep 2026 23:50:44 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab65f89a5d2feae7f70084986611e7073c91939251142007c05ab6baf1a1dda`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87ae0be7d3b3dcb5627a95829d13daa58fe8731447d7fa590a849a46e2c4bb51`  
		Last Modified: Wed, 30 Sep 2026 23:50:45 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e833a0baacfabd327418abfef1b5e104690ce4b1318225c878f2bcfd7dac9a47`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 3.4 MB (3439036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8b1e6a0117513372e98b4800d5481b10d680e5031366c053df796c239f37688`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 76.2 KB (76212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96334cd72929e31896ab22cc7d8f05ccd121cc80643ad7e8c121b34b080000e`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 1.0 KB (1008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3e8bc49eb81a36c1ab5d3a7a0e8b499a6e4eceb724675506a5e3a62aa586728`  
		Last Modified: Thu, 01 Oct 2026 00:10:29 GMT  
		Size: 61.9 MB (61886951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a243c81d48a9717856fc09036d2bc431af19456b7ee49d7db60bd65a4015a519`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1310fb47029feb44ffe326717a55caf12193236d49e0e041b6f84df52976d3e1`  
		Last Modified: Thu, 01 Oct 2026 00:10:28 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:a051cadcf229264f2537b78198cdb2b141a1809f24d35952046b0b5f4d179d45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdcabce81aa87e65fd0961c8681a1472cdc94e13bcbcff1293460c5304266a7f`

```dockerfile
```

-	Layers:
	-	`sha256:e7b0040660c64c6c0fe7cc50c9ae3dfd9821f0b0167ba4699907a62a85e4db29`  
		Last Modified: Thu, 01 Oct 2026 00:10:27 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0d1389bb980f47049b30a17b22b2123ca5e2136dc273c3acc1ed143bf8c6fea9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.3 MB (127271253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bc44111059788911330f7db68d2ecfdcd4b2de7ee3b5f854d6fe1190f22926d`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 30 Sep 2026 23:50:29 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 30 Sep 2026 23:50:29 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 30 Sep 2026 23:50:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:50:33 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-x86_64'; 			sha256='db1889184726840f75c4f9c001048430d4f25b3be3cb084d3ddd762bc0aed576'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv6'; 			sha256='421ff5910b09cb30842bff39e920091f3cec8da662e449d3935eb2f9593f6d12'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-armv7'; 			sha256='32e8e0182e7a94570ef60542e25346d465eaf5e2ca766d54bf9d64573ddaa52e'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-aarch64'; 			sha256='732e3a84c1a0f67256ce80bc2598a24546b10ca05f9faa97efceb1171ece2ef7'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-ppc64le'; 			sha256='1f49f2a3bbcf68260378486877be23e53ac6ca5dc4c03087b675e63de6dfedfc'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-riscv64'; 			sha256='d7a2af7fa8d9396cc62bfedb73496f3008cc2f2a0d3c20b67e956f89d9477366'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-linux-s390x'; 			sha256='58c1395585a2a93ebf0b471c39cab597f46f4ce68884804a6d724431c85e82b9'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 30 Sep 2026 23:50:33 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 30 Sep 2026 23:50:34 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 30 Sep 2026 23:50:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:50:34 GMT
CMD ["sh"]
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 01 Oct 2026 00:09:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 01 Oct 2026 00:09:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 00:09:51 GMT
VOLUME [/var/lib/docker]
# Thu, 01 Oct 2026 00:09:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 01 Oct 2026 00:09:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 01 Oct 2026 00:09:51 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc63e98c462c74ea2829c8b600b5399f2c2f179780a32a925173cc35bb514f`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 8.3 MB (8261557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ff9f4bd4a8698fef244b2041023a0694f8f2f2dfad1752b94a793d5c30592d6`  
		Last Modified: Wed, 30 Sep 2026 23:50:39 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:facd60a75b4ba210ceaa028b9f99ae3933590f0381d2b28b32cc0c9d46b5ba71`  
		Last Modified: Wed, 30 Sep 2026 23:50:40 GMT  
		Size: 18.6 MB (18635428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3c197d659cd451cb96151e7ea32c4bfd594911624034a3be8f3d2fbc7483e1`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 20.9 MB (20885946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b44d8ef88a1064be22a283a9e1d0d52ff27132c90c249567ed6a9352311cf0`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 10.2 MB (10182222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3df188d6c2c04d306329984a2910dcb3e261a9d3dbf6f641f2a98ae34322bb72`  
		Last Modified: Wed, 30 Sep 2026 23:50:41 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa012bc7fc543dc3a8bf6dfc8c31daf3a606ee6c79d1906e0cd79057c4f45280`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89540b37efcf2ef451c13053bbc473be0ba202e558dda98bb5d1a72645afc3d0`  
		Last Modified: Wed, 30 Sep 2026 23:50:42 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ee43ae5b786dbe3c5e7ffcf750aa88687c8d03220d4c0b5b60a0ebc7d99cb4`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 4.6 MB (4628370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:064a1afc2b42c79e91eb9aa0f9956f991016f47dfcd847da1f40b9db07a56ab0`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 90.5 KB (90471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd60c5a8b58c3a7431652952d570559169f913489c3aba1170d77d4358198ea`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8085f2191b568eb226a93c1f3eb8af10964f70e178886c36f821d8e0d6802e97`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 60.4 MB (60391449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76de6102a54c7bd62853f23383be7d98b2928be2757fbdb39cd281b4b06474`  
		Last Modified: Thu, 01 Oct 2026 00:10:01 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3872cd1fc92a3fca96228b06576e9536755f5fe3dd4e6e8a21bae816835578c3`  
		Last Modified: Thu, 01 Oct 2026 00:10:02 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:8351c1c540d3206995294bd28ee29c6fe33c77558f555a992a9008b6076a5787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34415 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e28f3a6cf804c99b95aa3468951ba12228419b88d8df86221c8f86b7379fc3a2`

```dockerfile
```

-	Layers:
	-	`sha256:c63a8823d370225b22a4eacfde9afa818495833494f7cdd2e7b2b44ee199f6da`  
		Last Modified: Thu, 01 Oct 2026 00:10:00 GMT  
		Size: 34.4 KB (34415 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:283bab44d0174c5722d31089d83af991d1421228fffda132488bfd9216d0b4c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:fc7bbfbc9ed59f050488ddaf02ff318516e11c65bcbcb8149dd37cd0db938052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:9a88b25af276c5bdb6e265170522a45aeb3a7ca48686fa1aaf47fba7c076b7ac
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276600875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af40171b1ac2e433385e7bf5dd810fc343bf677f65f58de82397ccdaa2f17357`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Wed, 30 Sep 2026 23:49:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:50:38 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:50:38 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:50:40 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:51:03 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:05 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:51:06 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:51:07 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:51:21 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:51:24 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:51:31 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d376efb66693bc0605ae3ca420d208b08f3b10423c0bbebe3ae6da74d955a68`  
		Last Modified: Wed, 30 Sep 2026 23:51:40 GMT  
		Size: 1.4 KB (1360 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1261e632e31509a560bab0aedbb080d7ce73e601a8f37e2bad52894ab99deb`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 360.5 KB (360526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717c9e04a3cd2a1096c3743d90f935d03ea74b462415aca62f6cf00d34d5620d`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c4dd6bf758133ec1ff07ca70eddec05bbdc208279f2310de8bc557623eee25`  
		Last Modified: Wed, 30 Sep 2026 23:51:39 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1aa7ecd860fb99fdcc08e05fcafee8c5b1c64bc409d79eed94433e114414cfd`  
		Last Modified: Wed, 30 Sep 2026 23:51:41 GMT  
		Size: 20.9 MB (20895655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f912c38a0a7ffee8a1e50c2ec4c11cb8318b348828513a149f640b856c4707c0`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab54591c69981b70b61c739c9ef7794272d6ea56655836c2d0202e7b8fa4143a`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a1441fb6880b3ded5bc2ea01fecb6bbf26f6e9cd5f51f4669c12d352cc8cd8`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 1.3 KB (1318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8819d35f6ca539de6f5be008865848d7cd401d27d94af05641fb8846b8c28d69`  
		Last Modified: Wed, 30 Sep 2026 23:51:50 GMT  
		Size: 24.0 MB (23990945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81339343c8c71f9c890bc278ac382fe385c41c926c853af45ce1a19ed17c4902`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78dbfa57067fc7d63a8e0782fa58da8137ba7556feeaa27e290c2fa884d9d6fa`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b3fb4f95d4b7ce05947881b652dc5935f3de7df0fda8f327cb603e1910aa20f`  
		Last Modified: Wed, 30 Sep 2026 23:51:36 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea585d7242433225ff4a79b163bf2acfa8e22b8d5bbbae5aa67611d9ce214688`  
		Last Modified: Wed, 30 Sep 2026 23:51:37 GMT  
		Size: 11.9 MB (11853243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:eb86318afd7cfb4b9aceeb815f3072ac49d520c70efbfe01a6ce835399464d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:84b6eb9a608c79aaf2b6131a5adef05a4a6e6c91fa54a0ad1021d5e65b34fc2e
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514858562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9960da09f5288c114c679bdebe5ac02316584f9f9200140c6fd6cbc92e7963e7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Wed, 30 Sep 2026 23:53:30 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 30 Sep 2026 23:54:27 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Wed, 30 Sep 2026 23:54:27 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 30 Sep 2026 23:54:28 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Wed, 30 Sep 2026 23:54:43 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 30 Sep 2026 23:54:44 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Wed, 30 Sep 2026 23:54:45 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Wed, 30 Sep 2026 23:54:54 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Wed, 30 Sep 2026 23:54:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.5.1
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.5.1/docker-compose-windows-x86_64.exe
# Wed, 30 Sep 2026 23:54:55 GMT
ENV DOCKER_COMPOSE_SHA256=a3c0c73033eaede90210345d0cc2233edf4fab8fe0282a91dad8fd8436809d2f
# Wed, 30 Sep 2026 23:55:03 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-compose.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_COMPOSE_URL); 	Invoke-WebRequest -Uri $env:DOCKER_COMPOSE_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_COMPOSE_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_COMPOSE_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker compose version") ...'; 	docker compose version; 		$link = ('{0}\docker\docker-compose.exe' -f $env:ProgramFiles); 	Write-Host ('Linking {0} to {1} ...' -f $plugin, $link); 	New-Item -ItemType SymbolicLink -Path $link -Target $plugin; 		Write-Host 'Verifying install ("docker-compose --version") ...'; 	docker-compose --version; 		Write-Host 'Complete.';
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e3816336b24226827dbe9562f044494b62759ad438ccbdbd1dc4acd9b571bd`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 1.3 KB (1328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18c990a4e8e01886b609924d4129e56a6c2687eb9509971dced0c1934e9b5f1`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 387.0 KB (387045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01b5674d2376105ee0ceabfcaa34fca19c546908bc38e5c0ca2ba3bbd93a1b1`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:444d232161a1da5d0d293876290051d66a1a572f9c49f73d99b185da502fd527`  
		Last Modified: Wed, 30 Sep 2026 23:55:10 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5142064a4980e33038673c1341eddca749ca081933e1f61c6a7e266ab07c3f33`  
		Last Modified: Wed, 30 Sep 2026 23:55:12 GMT  
		Size: 20.9 MB (20929307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40f94911c2bd420ffb7551f9a1e1c54d73987953a470ef49ae9b452b1f82dd52`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea02895277a119a4140775584f36b1e57a2acf105e61458f896e4e6689c7a0a5`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2797a2be7405fc03c7eef86e081bd12e5d7162be5121d8add5b24f2ebb64fad`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 1.3 KB (1292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:340645a8922a75929d9970e17c85d28ce660f789a227e0cec06bc3203083bb9a`  
		Last Modified: Wed, 30 Sep 2026 23:55:11 GMT  
		Size: 24.0 MB (24016530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9436e95d799ccef8cd227b2a293143491e9e22a18fc9ea30842afb5faeaf9ee7`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6580b9c7702ca26773153d6a0107cc7173b26a39149aaeedd38a3240920192f`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb2f482e274f58db2da007cabf11f8fee46a588d25805699b8bd6efa7f23e45`  
		Last Modified: Wed, 30 Sep 2026 23:55:07 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a27a9f78ce337104a1e755789eb6059420840ffe5c7975e01c992a9d8c89a5b6`  
		Last Modified: Wed, 30 Sep 2026 23:55:09 GMT  
		Size: 11.9 MB (11884416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
