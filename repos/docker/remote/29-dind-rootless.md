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
