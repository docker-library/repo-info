<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `docker`

-	[`docker:29`](#docker29)
-	[`docker:29-cli`](#docker29-cli)
-	[`docker:29-dind`](#docker29-dind)
-	[`docker:29-dind-rootless`](#docker29-dind-rootless)
-	[`docker:29-windowsservercore`](#docker29-windowsservercore)
-	[`docker:29-windowsservercore-ltsc2022`](#docker29-windowsservercore-ltsc2022)
-	[`docker:29-windowsservercore-ltsc2025`](#docker29-windowsservercore-ltsc2025)
-	[`docker:29.9`](#docker299)
-	[`docker:29.9-cli`](#docker299-cli)
-	[`docker:29.9-dind`](#docker299-dind)
-	[`docker:29.9-dind-rootless`](#docker299-dind-rootless)
-	[`docker:29.9-windowsservercore`](#docker299-windowsservercore)
-	[`docker:29.9-windowsservercore-ltsc2022`](#docker299-windowsservercore-ltsc2022)
-	[`docker:29.9-windowsservercore-ltsc2025`](#docker299-windowsservercore-ltsc2025)
-	[`docker:29.9.0`](#docker2990)
-	[`docker:29.9.0-alpine3.24`](#docker2990-alpine324)
-	[`docker:29.9.0-cli`](#docker2990-cli)
-	[`docker:29.9.0-cli-alpine3.24`](#docker2990-cli-alpine324)
-	[`docker:29.9.0-dind`](#docker2990-dind)
-	[`docker:29.9.0-dind-alpine3.24`](#docker2990-dind-alpine324)
-	[`docker:29.9.0-dind-rootless`](#docker2990-dind-rootless)
-	[`docker:29.9.0-windowsservercore`](#docker2990-windowsservercore)
-	[`docker:29.9.0-windowsservercore-ltsc2022`](#docker2990-windowsservercore-ltsc2022)
-	[`docker:29.9.0-windowsservercore-ltsc2025`](#docker2990-windowsservercore-ltsc2025)
-	[`docker:cli`](#dockercli)
-	[`docker:dind`](#dockerdind)
-	[`docker:dind-rootless`](#dockerdind-rootless)
-	[`docker:latest`](#dockerlatest)
-	[`docker:windowsservercore`](#dockerwindowsservercore)
-	[`docker:windowsservercore-ltsc2022`](#dockerwindowsservercore-ltsc2022)
-	[`docker:windowsservercore-ltsc2025`](#dockerwindowsservercore-ltsc2025)

## `docker:29`

```console
$ docker pull docker@sha256:1e08cdb63405ca788aea94ef35b792d1e299607c667d33d7bcbcae1fd2611ced
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
$ docker pull docker@sha256:6316d612722fd7fb2bd7edf9fcbb4439d08915cfb2e0e0b28bf16675fc9f3314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137431776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98175203ef6f7a6147c3edbff4f2606d2707b413a61b45fed021004ddbf0ebd1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:24 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11aa40b3b5d8112c881923b7a97ac98708278377092c682b5bcc77852b7596a7`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 4.1 MB (4080930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22afb0d3d1ae7cf804c5e1ca7ed4844691f93e42bc9221a1106755c528e087ed`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 81.1 KB (81147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c02d0754fc39d744e45d5a85e9396988c3eda46ac1b05e3ffadc4107d6e12f8`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5a66fd8265a3109d61875a3e83ff125f8cb064f4af950ec6c411cdb060fe29`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 66.6 MB (66601862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf3c753153387f6cdf3ad7cc9a223a1aa1b51f4abba81164e2ab022038f7a69`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f238d6c1fc8afc4275b47820b68a4fdf8ec800fad62a0be5f47011e976b048`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:5f1915157de5e0318845bf5b4d380d2dc6651a68674ff5d4a9c138978699c8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86863bb72da1643264a2dd980ddbc926325184c9029709b32a8e815a66da9914`

```dockerfile
```

-	Layers:
	-	`sha256:27c9d74814840666a5171b8a7d3f80fd90a361ba241b3c7608c31214ebe8caa0`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v6

```console
$ docker pull docker@sha256:766d44483d9540f5317b2e86829f430d907d093f2c2d5f23788afc7d4015f2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128708373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e630428d6b3a5c83723f0d4b5fbb696dd03d5a13fef9d6bdd918e2b29098b4a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567bb24565a44f7712ea535ce6f1ce7a031881a4ba20ff7c217441b98d472de8`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 8.1 MB (8100292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f426d022437ae616a9ceb4ad409b79030b6c9d267ca183b8f9569aecc70cfb`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0a320520e262c71939f8ae9b006ebe85362843d084af59b3190c15d5e092b5`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18793228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7030f7debe7cdc4169e7f0965126405fb717850a67ecc527f8cbc0935166ff84`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21674143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0648f611ea8b805fa01021de6e0567896d629d198f6c78fd5d113b535f507c`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10719269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8294d545d1d8a33b66664720c4deb95422f89aaa030c9fd494763b16e27f762a`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a2b5e65bcdcc83be0295ec16c854b52afa3df7b0f9177c9b9fc982db3a9406`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0397c4bfcaae69ab632858a1b2143354c8e7c02baa96ca826df0217e65c7e1d4`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.7 MB (3717178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da95b3a9671c64c72002c68721c6f7f9b489487163c0e4ce0ea5eb5436c461`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e195bd4580b1f84b5b945624e43323884de00076da642774ab9930d14c80eb`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3df6343c2b502389fdebc03458466231b08c5e3485e8300f67201f8e4ab3db`  
		Last Modified: Thu, 08 Oct 2026 00:10:39 GMT  
		Size: 62.1 MB (62061148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781d91d88ff31f6c35f76f391343776a4ff5cf24546b373ce33aeb6bc2b2b27`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640cf773cd5446cac6f17b22f403318cba29d8ca2479779eab31b1fe24a27d47`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:0c64e6b9437c9a2baf3a0bfa155d03b69d5f41acdc48ec01eeb6e9f8949623a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c01870ac267bc6cf841765485ae1275370487fb4946fd9adfa44f1b2c9ac628`

```dockerfile
```

-	Layers:
	-	`sha256:59af9d562b7f7495bc777a3ecdfee8fb6bc828b2011f4b9c7643c72a5e981350`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm variant v7

```console
$ docker pull docker@sha256:e5f0f7818cf10fe8a32976aea71540d5be1a601478d3bfc2ecdd088318c605b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127216732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d778fb63418843cb72dada68c6b854c327a0df72f2e6bacc354fba9ce0e553`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:00 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:00 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785e994a0adcd6eb7448d5e292b45efabdb19b77e71a641e1aa141ae563bc94f`  
		Last Modified: Wed, 07 Oct 2026 23:51:04 GMT  
		Size: 7.4 MB (7395025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85689d40bd088c81a3d2fcee6cadd174ae6931b7e7bb7103398124985ed3a7d`  
		Last Modified: Wed, 07 Oct 2026 23:51:03 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8920b65d5cdd2ccb1f6f54741919e8a3f784d549e1c9624bdd04e61b7f730c08`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18778763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c637a383eea7f4d32d144b13bddb677c70c35f7f3be14514740fc7326e0c01b9`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21658842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7ff54b8c98c1b395fa3870f4d7d231bdf196cc5c6bbd916d1897da3151640e`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10708475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac35ac233324a4de60824522db9f43265d4d0ebac66fb73741ccfb5deab6a463`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5957d645f5577057dbb046cce5f4530b6f6aa3951db0475c1dd102de937579ba`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b715289a62213a0ab9db2e8de61a52f3214f46f7e49532a006abfbd7e7e2e6f4`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 3.4 MB (3439082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af83f355de665b2512ca64c75081c1507fe2b8bdbbac5637fa25d71423870c06`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 76.2 KB (76211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd2c8e9e62c273bdfd26f90981c1b216f3c18aa5ceba4935f2c531f667a2c52`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59ac8c8984e02ec5c033ac2fc0ebe4287b2e0e8debbf5761c4c3ed8b81efd56`  
		Last Modified: Thu, 08 Oct 2026 00:10:12 GMT  
		Size: 61.9 MB (61886980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3a1b83df4d6f6246368296fea4d43816faeb1f546ff8c22511119cd279852d`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1609614a561eb8f517e4ffc141d56464ab43eb83fa4c44c7b805dc9b3e40754c`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:a11522cb8455692cbb60b15f2dd1dd3a7271863e587461aee8779d28d06a6511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf83dc9e21fa25596051fc3eecdfd32b8d22f4df1f79ca3b1d353d5ba9ad4b5`

```dockerfile
```

-	Layers:
	-	`sha256:991e553f46b4c38f0d924fa5f2f92bf86529ac9beda0da241ab263c5c2cb51ec`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0cfe34780472229470f56736bbf85165a0f15e2da84a4798af89bed607f3ffc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127363785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43605ebce5e9211a263e139255be18a354dd8ee7bc71d8ef1b8d965b974f944e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:28 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:32 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8140ed9c5388813f68344530eea245c04bf64ed0c7ed80bf178767fcdaf8a58d`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 4.6 MB (4628449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474aeb4f33fa66df451c52bfd3e08928160b02963fa5f193a96a1162165f608`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 90.5 KB (90464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aeab074aa1f42901d40786488f73e56d3fd4421db31ae857a96faecf73127b`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6aa44afe2454a8f36bb753124219e2908fa9c6c4c7d6351f2a43ea52491824e`  
		Last Modified: Thu, 08 Oct 2026 00:10:43 GMT  
		Size: 60.4 MB (60391454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678b0a2a083451962834880870a383ea6afb89e68db986eddf95ba71baccbc09`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6f753006c44ba65231946638343a865abb3788bf28fe8f7d05098651d3c7e1`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 3.3 KB (3297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29` - unknown; unknown

```console
$ docker pull docker@sha256:b6f6b5af3e509a8759f1c108bd0da2c5393a366c7c78a05de5940364c483c1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e254c8a3a438564f94841e0d5b79f8d54bc47892333c8e28f51cfc3419661f2`

```dockerfile
```

-	Layers:
	-	`sha256:1ce82d1ad4d2a66d22640f7415fb4f74f45e2d80ca76b3b15bfd1f6cf12e9797`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-cli`

```console
$ docker pull docker@sha256:35cfcf893c20f2931f4909151b5407aaaeab711277de7ce8b8f521f095d54c32
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
$ docker pull docker@sha256:d329fa64f42e03248f9a6cb2e21b6d4aa4d76f5a80aa2ad7946d81fbf1860602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66661839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573523b645933b0de300a1a5cafc236173dd8463df56a59a76dcc382feeaf7dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:7c318b489d6b6316242b42a659bb65d8fae8bcbbe8b2036feae74d83528f264b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870b126e87e1b9365a2180c8fd1912a287908825b1abd8cd8c22fcaee44d5ecd`

```dockerfile
```

-	Layers:
	-	`sha256:77ed4577eff3dffe57051fbbedc50408212753e6235c8d47eda95025f498b631`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:21294b678eb6c1d484ffdf458dd3653c16651f830925bd831fa93a24b16526eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62844196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b67d0e461d209d7d636166cb772866f5c87800f04547f9d7a50be324b80bdad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567bb24565a44f7712ea535ce6f1ce7a031881a4ba20ff7c217441b98d472de8`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 8.1 MB (8100292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f426d022437ae616a9ceb4ad409b79030b6c9d267ca183b8f9569aecc70cfb`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0a320520e262c71939f8ae9b006ebe85362843d084af59b3190c15d5e092b5`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18793228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7030f7debe7cdc4169e7f0965126405fb717850a67ecc527f8cbc0935166ff84`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21674143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0648f611ea8b805fa01021de6e0567896d629d198f6c78fd5d113b535f507c`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10719269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8294d545d1d8a33b66664720c4deb95422f89aaa030c9fd494763b16e27f762a`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a2b5e65bcdcc83be0295ec16c854b52afa3df7b0f9177c9b9fc982db3a9406`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:2786597548b9981de33e7c90b2fb1c6a8e0f4d54a12bca1d81020afa2c26dc65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae054f7c08704295f8e85216cba4c62eb620a032615be68868e5f9f6eadf8bc1`

```dockerfile
```

-	Layers:
	-	`sha256:00b62bffffed70b85679def07ae4c2ef93db2b1fe9e65ee9294030dec73e2992`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:e8894788914b75e1db73c016c7abab8d4bd8377d7aa3abe69d26c76438a0e8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61808458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52afcbc0fff136101a51929261c88dee337f1ceab0e5855913075baaf825a1e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785e994a0adcd6eb7448d5e292b45efabdb19b77e71a641e1aa141ae563bc94f`  
		Last Modified: Wed, 07 Oct 2026 23:51:04 GMT  
		Size: 7.4 MB (7395025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85689d40bd088c81a3d2fcee6cadd174ae6931b7e7bb7103398124985ed3a7d`  
		Last Modified: Wed, 07 Oct 2026 23:51:03 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8920b65d5cdd2ccb1f6f54741919e8a3f784d549e1c9624bdd04e61b7f730c08`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18778763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c637a383eea7f4d32d144b13bddb677c70c35f7f3be14514740fc7326e0c01b9`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21658842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7ff54b8c98c1b395fa3870f4d7d231bdf196cc5c6bbd916d1897da3151640e`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10708475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac35ac233324a4de60824522db9f43265d4d0ebac66fb73741ccfb5deab6a463`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5957d645f5577057dbb046cce5f4530b6f6aa3951db0475c1dd102de937579ba`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:250cc26d4b652b330e467032dfe33da906ed21f5c0ef18eaf72ead2cef5173fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309bc34f4c41b0b2cfb5e531d0e8020ecce2fbc2df09aed2055b6f47d41aa56c`

```dockerfile
```

-	Layers:
	-	`sha256:6aaaa2b3148b063b848d595fe01833688d6f8d4fc5d51a5f89148ca7a4c05589`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ee4829f05142f283e277908a1cee1023e88163b596120566eb7c98f28fecb93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62247423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cd41dcfec97e64fe6d666f1c561f1af42981562f3f875c56638fab541d4491`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-cli` - unknown; unknown

```console
$ docker pull docker@sha256:5b046ee746eb0d9a3e146cf6f4ca9d8e52904ca356f5c714ddc3bba119c6e336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2a78ffab4af967b2852e19d328b20339a9d40b2b9faa74786e017176455896`

```dockerfile
```

-	Layers:
	-	`sha256:1d11207ad1567ef0970e936100ef5b67a320a0e1cbc5a52cfe2e97163cb0da42`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind`

```console
$ docker pull docker@sha256:1e08cdb63405ca788aea94ef35b792d1e299607c667d33d7bcbcae1fd2611ced
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
$ docker pull docker@sha256:6316d612722fd7fb2bd7edf9fcbb4439d08915cfb2e0e0b28bf16675fc9f3314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137431776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98175203ef6f7a6147c3edbff4f2606d2707b413a61b45fed021004ddbf0ebd1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:24 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11aa40b3b5d8112c881923b7a97ac98708278377092c682b5bcc77852b7596a7`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 4.1 MB (4080930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22afb0d3d1ae7cf804c5e1ca7ed4844691f93e42bc9221a1106755c528e087ed`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 81.1 KB (81147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c02d0754fc39d744e45d5a85e9396988c3eda46ac1b05e3ffadc4107d6e12f8`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5a66fd8265a3109d61875a3e83ff125f8cb064f4af950ec6c411cdb060fe29`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 66.6 MB (66601862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf3c753153387f6cdf3ad7cc9a223a1aa1b51f4abba81164e2ab022038f7a69`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f238d6c1fc8afc4275b47820b68a4fdf8ec800fad62a0be5f47011e976b048`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:5f1915157de5e0318845bf5b4d380d2dc6651a68674ff5d4a9c138978699c8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86863bb72da1643264a2dd980ddbc926325184c9029709b32a8e815a66da9914`

```dockerfile
```

-	Layers:
	-	`sha256:27c9d74814840666a5171b8a7d3f80fd90a361ba241b3c7608c31214ebe8caa0`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:766d44483d9540f5317b2e86829f430d907d093f2c2d5f23788afc7d4015f2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128708373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e630428d6b3a5c83723f0d4b5fbb696dd03d5a13fef9d6bdd918e2b29098b4a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567bb24565a44f7712ea535ce6f1ce7a031881a4ba20ff7c217441b98d472de8`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 8.1 MB (8100292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f426d022437ae616a9ceb4ad409b79030b6c9d267ca183b8f9569aecc70cfb`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0a320520e262c71939f8ae9b006ebe85362843d084af59b3190c15d5e092b5`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18793228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7030f7debe7cdc4169e7f0965126405fb717850a67ecc527f8cbc0935166ff84`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21674143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0648f611ea8b805fa01021de6e0567896d629d198f6c78fd5d113b535f507c`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10719269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8294d545d1d8a33b66664720c4deb95422f89aaa030c9fd494763b16e27f762a`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a2b5e65bcdcc83be0295ec16c854b52afa3df7b0f9177c9b9fc982db3a9406`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0397c4bfcaae69ab632858a1b2143354c8e7c02baa96ca826df0217e65c7e1d4`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.7 MB (3717178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da95b3a9671c64c72002c68721c6f7f9b489487163c0e4ce0ea5eb5436c461`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e195bd4580b1f84b5b945624e43323884de00076da642774ab9930d14c80eb`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3df6343c2b502389fdebc03458466231b08c5e3485e8300f67201f8e4ab3db`  
		Last Modified: Thu, 08 Oct 2026 00:10:39 GMT  
		Size: 62.1 MB (62061148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781d91d88ff31f6c35f76f391343776a4ff5cf24546b373ce33aeb6bc2b2b27`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640cf773cd5446cac6f17b22f403318cba29d8ca2479779eab31b1fe24a27d47`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:0c64e6b9437c9a2baf3a0bfa155d03b69d5f41acdc48ec01eeb6e9f8949623a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c01870ac267bc6cf841765485ae1275370487fb4946fd9adfa44f1b2c9ac628`

```dockerfile
```

-	Layers:
	-	`sha256:59af9d562b7f7495bc777a3ecdfee8fb6bc828b2011f4b9c7643c72a5e981350`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:e5f0f7818cf10fe8a32976aea71540d5be1a601478d3bfc2ecdd088318c605b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127216732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d778fb63418843cb72dada68c6b854c327a0df72f2e6bacc354fba9ce0e553`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:00 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:00 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785e994a0adcd6eb7448d5e292b45efabdb19b77e71a641e1aa141ae563bc94f`  
		Last Modified: Wed, 07 Oct 2026 23:51:04 GMT  
		Size: 7.4 MB (7395025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85689d40bd088c81a3d2fcee6cadd174ae6931b7e7bb7103398124985ed3a7d`  
		Last Modified: Wed, 07 Oct 2026 23:51:03 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8920b65d5cdd2ccb1f6f54741919e8a3f784d549e1c9624bdd04e61b7f730c08`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18778763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c637a383eea7f4d32d144b13bddb677c70c35f7f3be14514740fc7326e0c01b9`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21658842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7ff54b8c98c1b395fa3870f4d7d231bdf196cc5c6bbd916d1897da3151640e`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10708475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac35ac233324a4de60824522db9f43265d4d0ebac66fb73741ccfb5deab6a463`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5957d645f5577057dbb046cce5f4530b6f6aa3951db0475c1dd102de937579ba`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b715289a62213a0ab9db2e8de61a52f3214f46f7e49532a006abfbd7e7e2e6f4`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 3.4 MB (3439082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af83f355de665b2512ca64c75081c1507fe2b8bdbbac5637fa25d71423870c06`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 76.2 KB (76211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd2c8e9e62c273bdfd26f90981c1b216f3c18aa5ceba4935f2c531f667a2c52`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59ac8c8984e02ec5c033ac2fc0ebe4287b2e0e8debbf5761c4c3ed8b81efd56`  
		Last Modified: Thu, 08 Oct 2026 00:10:12 GMT  
		Size: 61.9 MB (61886980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3a1b83df4d6f6246368296fea4d43816faeb1f546ff8c22511119cd279852d`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1609614a561eb8f517e4ffc141d56464ab43eb83fa4c44c7b805dc9b3e40754c`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:a11522cb8455692cbb60b15f2dd1dd3a7271863e587461aee8779d28d06a6511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf83dc9e21fa25596051fc3eecdfd32b8d22f4df1f79ca3b1d353d5ba9ad4b5`

```dockerfile
```

-	Layers:
	-	`sha256:991e553f46b4c38f0d924fa5f2f92bf86529ac9beda0da241ab263c5c2cb51ec`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0cfe34780472229470f56736bbf85165a0f15e2da84a4798af89bed607f3ffc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127363785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43605ebce5e9211a263e139255be18a354dd8ee7bc71d8ef1b8d965b974f944e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:28 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:32 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8140ed9c5388813f68344530eea245c04bf64ed0c7ed80bf178767fcdaf8a58d`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 4.6 MB (4628449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474aeb4f33fa66df451c52bfd3e08928160b02963fa5f193a96a1162165f608`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 90.5 KB (90464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aeab074aa1f42901d40786488f73e56d3fd4421db31ae857a96faecf73127b`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6aa44afe2454a8f36bb753124219e2908fa9c6c4c7d6351f2a43ea52491824e`  
		Last Modified: Thu, 08 Oct 2026 00:10:43 GMT  
		Size: 60.4 MB (60391454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678b0a2a083451962834880870a383ea6afb89e68db986eddf95ba71baccbc09`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6f753006c44ba65231946638343a865abb3788bf28fe8f7d05098651d3c7e1`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 3.3 KB (3297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind` - unknown; unknown

```console
$ docker pull docker@sha256:b6f6b5af3e509a8759f1c108bd0da2c5393a366c7c78a05de5940364c483c1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e254c8a3a438564f94841e0d5b79f8d54bc47892333c8e28f51cfc3419661f2`

```dockerfile
```

-	Layers:
	-	`sha256:1ce82d1ad4d2a66d22640f7415fb4f74f45e2d80ca76b3b15bfd1f6cf12e9797`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:c652fa9cebdaa3d655c33c6389c3c409f9a0fea6449c7d7c56c486fe71af0591
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:da8b9fda07238561f4a102912dbac6a32d0991cacf5e12bef74e670327903900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153181514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70dd8f2105a8bbe17be1ed3d11a075dc82ec3c850375a8c75b7c0b195a693aa7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:24 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:24 GMT
CMD []
# Thu, 08 Oct 2026 01:10:23 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 08 Oct 2026 01:10:23 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 08 Oct 2026 01:10:23 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 01:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 08 Oct 2026 01:10:24 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 08 Oct 2026 01:10:24 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 08 Oct 2026 01:10:24 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11aa40b3b5d8112c881923b7a97ac98708278377092c682b5bcc77852b7596a7`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 4.1 MB (4080930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22afb0d3d1ae7cf804c5e1ca7ed4844691f93e42bc9221a1106755c528e087ed`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 81.1 KB (81147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c02d0754fc39d744e45d5a85e9396988c3eda46ac1b05e3ffadc4107d6e12f8`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5a66fd8265a3109d61875a3e83ff125f8cb064f4af950ec6c411cdb060fe29`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 66.6 MB (66601862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf3c753153387f6cdf3ad7cc9a223a1aa1b51f4abba81164e2ab022038f7a69`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f238d6c1fc8afc4275b47820b68a4fdf8ec800fad62a0be5f47011e976b048`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a820a7fd87036234ee3e488b0123030572c62bc32518c1188529b6d88916908e`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 3.6 MB (3626331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1659b57fa420d0eeb2352ce0f486b24a622e90ee3eb59f5a47c04a8057263e68`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514f8d7c485f28a289a51bdded8d3201e4864b15a8b839cd8f10e26bf7e97d8a`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a6e888148e972945f98e2a63db8c3a1ea508708222dfadaf55249a1b159c24`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 12.1 MB (12122061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e487703814668b7ba2dc256f779b4b101e209d2caecb9d59de0727aae6ca10a1`  
		Last Modified: Thu, 08 Oct 2026 01:10:30 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:91c804b5c982c8b982df88afc5f7c3904cdfc5eaeb5c6fc0e1436200110cb1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27aaaddfad7590e4b1abf487977fabc94d1bd1074dcd5b7609aa947e7f7d40a7`

```dockerfile
```

-	Layers:
	-	`sha256:a649c955999f43b4f7727d06da0e2c10c987eb999fca853005ce527ae1329c0d`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a65e0b8f235c1ab549fa8d25ae82d7d480ce1a7d1364d17145c0c0f6b591a8d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142227139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9d9af8c755f62ec164606f6243310d8c251780d9cb45c81b9865261ee6ee88`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:28 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:32 GMT
CMD []
# Thu, 08 Oct 2026 01:10:02 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 08 Oct 2026 01:10:02 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 08 Oct 2026 01:10:02 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 01:10:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 08 Oct 2026 01:10:03 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 08 Oct 2026 01:10:03 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 08 Oct 2026 01:10:03 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8140ed9c5388813f68344530eea245c04bf64ed0c7ed80bf178767fcdaf8a58d`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 4.6 MB (4628449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474aeb4f33fa66df451c52bfd3e08928160b02963fa5f193a96a1162165f608`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 90.5 KB (90464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aeab074aa1f42901d40786488f73e56d3fd4421db31ae857a96faecf73127b`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6aa44afe2454a8f36bb753124219e2908fa9c6c4c7d6351f2a43ea52491824e`  
		Last Modified: Thu, 08 Oct 2026 00:10:43 GMT  
		Size: 60.4 MB (60391454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678b0a2a083451962834880870a383ea6afb89e68db986eddf95ba71baccbc09`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6f753006c44ba65231946638343a865abb3788bf28fe8f7d05098651d3c7e1`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 3.3 KB (3297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:198ca2693652797dd3ac10d569cf0dfcee3e0ee7e062eb6ccf91415823d30e2e`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 3.6 MB (3611359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64bd69f137cf55b6c42f9218b9b873dd805e73574571dbefe7a787ac00905c8d`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64599dd0d71da4ca85c2111376cff8f6d22a1357bb00a336860f20c21bd72376`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807de65801116330aeb7dbc9d7f457d830a24c442f5e190789dd209197a6b173`  
		Last Modified: Thu, 08 Oct 2026 01:10:09 GMT  
		Size: 11.3 MB (11250655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65d99b0058be78d962767a02c1d5931f7e9e1fd22df220385cfaa09ce987be4`  
		Last Modified: Thu, 08 Oct 2026 01:10:09 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:52dd24753403ce771b90e3efeddf3f30c94eecde6d56fa6d6bf73d5d98ce5739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2376f1fce11f479266293a9625f564a82d8d92a4b2c913f900dd3514611d7a`

```dockerfile
```

-	Layers:
	-	`sha256:e05b4e265f30abf18c85d9445e9c09cfb052a10a75436cf09109502a42dd44f7`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:29-windowsservercore`

```console
$ docker pull docker@sha256:0fe086f6c6c94a58be9dad25feb42f911402dec62003ca6211b58deb8ccdaee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:e6252807c88c86bf539f4c1f6cd1dca9c6052af8f343a61d302dda28717722c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514958736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47a41567b4d43e219b577ba31fd51462d81442d82b452aa2ef62c17ddba4400`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 08 Oct 2026 00:08:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:09:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:09:18 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:09:20 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:09:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:09:33 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:09:41 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:09:50 GMT
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
	-	`sha256:7ea074ce10f89d837633416b3fcd99d9f1f649c6d59053c076a25b29a75abce2`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e95fa198cac6127677990bcfb04deb7c297a67943b2fd5ac86c9d86d45fb7`  
		Last Modified: Thu, 08 Oct 2026 00:09:58 GMT  
		Size: 386.3 KB (386349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea32217cb4134ec95a2b7d40d27451c9d408694d3ee56bb2e9e70633a541da54`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25d9041cfaabae20117ca86734d989a258af47ae8d4f27ba2318d7b4e7df3e9`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18be9a2c8236540539a6e434e0dc55fba0400c359c1821c644b6530b0493d0f6`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 20.9 MB (20929080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be060c58ab6d6737d1391b7623999e0312b5d83b4144e41616828dcdfd3d92`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88ac84b8d590e5d4ee80b7efd9945ce6619b2160436a8325a7d1a3fe850c88`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854f2217a052cf1531ae2d1d3433dd31b7c24f50b2759fbcf774078bf762d891`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a7676377ef81e53707d3cd10ea896d0fbec35bce1befc9a0e95d642a5ecac6`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 24.0 MB (24015314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68420612d1d3e893f30cf2ebdf30a317a630e67a231c9799698c992536df891b`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1221bf9d671520af2d94c6d183627bb6c22aa61962916db592817d6c841bdd`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f866ec8cfa08a40728af85991d6d4df898a698815650105c7629877801f7111d`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1411b01afa76166a705758cf99347a3c28abb56e9de2a7fb68c7f22464a0dc2`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 12.0 MB (11986785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:29-windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:f93673a23ae0960c0629e56fe3f54a9600eb05698917ffcc1960e386a19f4ba8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276690993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f7de2b96ba81b2fab0780fe3b31343334c84d99bd9cd2ac6a8ae1be5dbd125`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 00:30:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:31:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:31:42 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:31:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:32:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:32:17 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:32:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:32:55 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:33:17 GMT
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
	-	`sha256:216c16e7c5d894e77c76b09a10fa6e12cd5897d30b50cb61c9d04703fb352482`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d473d38daa3682aa2f1191f9ed8cfa71eede6ce835cba3dfb45bae10161dc4`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 360.0 KB (359979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25712663edd6488c0894471c2690d834b0332403809adce59cbb7904721167`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ace942363216506b8934ab036dc53dcac50079d47ad0635cc2004c3edc8ccd`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91852aef93e452065c5e3e3c207bef3496df64b69fd464abe1b78c060528fdc8`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 20.9 MB (20895779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411d61c19315ed1b557dfad6f8e52740c8d40f12efdc26fab38ac46bc56a2ccf`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f9f4fadda4becde747e6bd83fb3752e60fd27e612e18accf0eceaa82b17a2`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baec00c41bf0adb3b562e14a173217a58fd55b4442d13ca70d0267ab21723ceb`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6412ff4e349147d8398e25c0625ba89fe51f1343b4e14993b2dd04ce40e502`  
		Last Modified: Thu, 08 Oct 2026 00:33:41 GMT  
		Size: 24.0 MB (23991442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f0fd35a78791c35a3c1ff82804b86178496d9287a1ffd1919bba20b7431d`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fe36ba2be2ed7911344b98cf7211cedc22dc8eb17b8c06d1381db230cb2011`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd8f6bc5e2db1d533326538d8cb076026630e3be94cc9e8533c31967ffa23e2`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da688fdba56363b171aad5aff401e147b48c8ed0915cadb21aefe9d96dda2f`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 11.9 MB (11943282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:b4117fdd1bc2bbeb8b63da81403486512a8154125c6981baaf91ffd931381e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:29-windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:f93673a23ae0960c0629e56fe3f54a9600eb05698917ffcc1960e386a19f4ba8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276690993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f7de2b96ba81b2fab0780fe3b31343334c84d99bd9cd2ac6a8ae1be5dbd125`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 00:30:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:31:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:31:42 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:31:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:32:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:32:17 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:32:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:32:55 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:33:17 GMT
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
	-	`sha256:216c16e7c5d894e77c76b09a10fa6e12cd5897d30b50cb61c9d04703fb352482`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d473d38daa3682aa2f1191f9ed8cfa71eede6ce835cba3dfb45bae10161dc4`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 360.0 KB (359979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25712663edd6488c0894471c2690d834b0332403809adce59cbb7904721167`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ace942363216506b8934ab036dc53dcac50079d47ad0635cc2004c3edc8ccd`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91852aef93e452065c5e3e3c207bef3496df64b69fd464abe1b78c060528fdc8`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 20.9 MB (20895779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411d61c19315ed1b557dfad6f8e52740c8d40f12efdc26fab38ac46bc56a2ccf`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f9f4fadda4becde747e6bd83fb3752e60fd27e612e18accf0eceaa82b17a2`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baec00c41bf0adb3b562e14a173217a58fd55b4442d13ca70d0267ab21723ceb`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6412ff4e349147d8398e25c0625ba89fe51f1343b4e14993b2dd04ce40e502`  
		Last Modified: Thu, 08 Oct 2026 00:33:41 GMT  
		Size: 24.0 MB (23991442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f0fd35a78791c35a3c1ff82804b86178496d9287a1ffd1919bba20b7431d`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fe36ba2be2ed7911344b98cf7211cedc22dc8eb17b8c06d1381db230cb2011`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd8f6bc5e2db1d533326538d8cb076026630e3be94cc9e8533c31967ffa23e2`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da688fdba56363b171aad5aff401e147b48c8ed0915cadb21aefe9d96dda2f`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 11.9 MB (11943282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29-windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:b48155300d0aa775974107d5697c929c93f4ae9c2ed875744bc91a2b1e6a5fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:29-windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:e6252807c88c86bf539f4c1f6cd1dca9c6052af8f343a61d302dda28717722c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514958736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47a41567b4d43e219b577ba31fd51462d81442d82b452aa2ef62c17ddba4400`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 08 Oct 2026 00:08:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:09:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:09:18 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:09:20 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:09:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:09:33 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:09:41 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:09:50 GMT
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
	-	`sha256:7ea074ce10f89d837633416b3fcd99d9f1f649c6d59053c076a25b29a75abce2`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e95fa198cac6127677990bcfb04deb7c297a67943b2fd5ac86c9d86d45fb7`  
		Last Modified: Thu, 08 Oct 2026 00:09:58 GMT  
		Size: 386.3 KB (386349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea32217cb4134ec95a2b7d40d27451c9d408694d3ee56bb2e9e70633a541da54`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25d9041cfaabae20117ca86734d989a258af47ae8d4f27ba2318d7b4e7df3e9`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18be9a2c8236540539a6e434e0dc55fba0400c359c1821c644b6530b0493d0f6`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 20.9 MB (20929080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be060c58ab6d6737d1391b7623999e0312b5d83b4144e41616828dcdfd3d92`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88ac84b8d590e5d4ee80b7efd9945ce6619b2160436a8325a7d1a3fe850c88`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854f2217a052cf1531ae2d1d3433dd31b7c24f50b2759fbcf774078bf762d891`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a7676377ef81e53707d3cd10ea896d0fbec35bce1befc9a0e95d642a5ecac6`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 24.0 MB (24015314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68420612d1d3e893f30cf2ebdf30a317a630e67a231c9799698c992536df891b`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1221bf9d671520af2d94c6d183627bb6c22aa61962916db592817d6c841bdd`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f866ec8cfa08a40728af85991d6d4df898a698815650105c7629877801f7111d`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1411b01afa76166a705758cf99347a3c28abb56e9de2a7fb68c7f22464a0dc2`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 12.0 MB (11986785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:29.9`

**does not exist** (yet?)

## `docker:29.9-cli`

**does not exist** (yet?)

## `docker:29.9-dind`

**does not exist** (yet?)

## `docker:29.9-dind-rootless`

**does not exist** (yet?)

## `docker:29.9-windowsservercore`

**does not exist** (yet?)

## `docker:29.9-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `docker:29.9-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `docker:29.9.0`

**does not exist** (yet?)

## `docker:29.9.0-alpine3.24`

**does not exist** (yet?)

## `docker:29.9.0-cli`

**does not exist** (yet?)

## `docker:29.9.0-cli-alpine3.24`

**does not exist** (yet?)

## `docker:29.9.0-dind`

**does not exist** (yet?)

## `docker:29.9.0-dind-alpine3.24`

**does not exist** (yet?)

## `docker:29.9.0-dind-rootless`

**does not exist** (yet?)

## `docker:29.9.0-windowsservercore`

**does not exist** (yet?)

## `docker:29.9.0-windowsservercore-ltsc2022`

**does not exist** (yet?)

## `docker:29.9.0-windowsservercore-ltsc2025`

**does not exist** (yet?)

## `docker:cli`

```console
$ docker pull docker@sha256:35cfcf893c20f2931f4909151b5407aaaeab711277de7ce8b8f521f095d54c32
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
$ docker pull docker@sha256:d329fa64f42e03248f9a6cb2e21b6d4aa4d76f5a80aa2ad7946d81fbf1860602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66661839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:573523b645933b0de300a1a5cafc236173dd8463df56a59a76dcc382feeaf7dd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:7c318b489d6b6316242b42a659bb65d8fae8bcbbe8b2036feae74d83528f264b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.1 KB (38056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870b126e87e1b9365a2180c8fd1912a287908825b1abd8cd8c22fcaee44d5ecd`

```dockerfile
```

-	Layers:
	-	`sha256:77ed4577eff3dffe57051fbbedc50408212753e6235c8d47eda95025f498b631`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 38.1 KB (38056 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v6

```console
$ docker pull docker@sha256:21294b678eb6c1d484ffdf458dd3653c16651f830925bd831fa93a24b16526eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62844196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b67d0e461d209d7d636166cb772866f5c87800f04547f9d7a50be324b80bdad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567bb24565a44f7712ea535ce6f1ce7a031881a4ba20ff7c217441b98d472de8`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 8.1 MB (8100292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f426d022437ae616a9ceb4ad409b79030b6c9d267ca183b8f9569aecc70cfb`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0a320520e262c71939f8ae9b006ebe85362843d084af59b3190c15d5e092b5`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18793228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7030f7debe7cdc4169e7f0965126405fb717850a67ecc527f8cbc0935166ff84`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21674143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0648f611ea8b805fa01021de6e0567896d629d198f6c78fd5d113b535f507c`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10719269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8294d545d1d8a33b66664720c4deb95422f89aaa030c9fd494763b16e27f762a`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a2b5e65bcdcc83be0295ec16c854b52afa3df7b0f9177c9b9fc982db3a9406`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:2786597548b9981de33e7c90b2fb1c6a8e0f4d54a12bca1d81020afa2c26dc65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae054f7c08704295f8e85216cba4c62eb620a032615be68868e5f9f6eadf8bc1`

```dockerfile
```

-	Layers:
	-	`sha256:00b62bffffed70b85679def07ae4c2ef93db2b1fe9e65ee9294030dec73e2992`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 38.2 KB (38222 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm variant v7

```console
$ docker pull docker@sha256:e8894788914b75e1db73c016c7abab8d4bd8377d7aa3abe69d26c76438a0e8d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61808458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52afcbc0fff136101a51929261c88dee337f1ceab0e5855913075baaf825a1e8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785e994a0adcd6eb7448d5e292b45efabdb19b77e71a641e1aa141ae563bc94f`  
		Last Modified: Wed, 07 Oct 2026 23:51:04 GMT  
		Size: 7.4 MB (7395025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85689d40bd088c81a3d2fcee6cadd174ae6931b7e7bb7103398124985ed3a7d`  
		Last Modified: Wed, 07 Oct 2026 23:51:03 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8920b65d5cdd2ccb1f6f54741919e8a3f784d549e1c9624bdd04e61b7f730c08`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18778763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c637a383eea7f4d32d144b13bddb677c70c35f7f3be14514740fc7326e0c01b9`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21658842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7ff54b8c98c1b395fa3870f4d7d231bdf196cc5c6bbd916d1897da3151640e`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10708475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac35ac233324a4de60824522db9f43265d4d0ebac66fb73741ccfb5deab6a463`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5957d645f5577057dbb046cce5f4530b6f6aa3951db0475c1dd102de937579ba`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:250cc26d4b652b330e467032dfe33da906ed21f5c0ef18eaf72ead2cef5173fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.2 KB (38221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309bc34f4c41b0b2cfb5e531d0e8020ecce2fbc2df09aed2055b6f47d41aa56c`

```dockerfile
```

-	Layers:
	-	`sha256:6aaaa2b3148b063b848d595fe01833688d6f8d4fc5d51a5f89148ca7a4c05589`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 38.2 KB (38221 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:cli` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ee4829f05142f283e277908a1cee1023e88163b596120566eb7c98f28fecb93d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.2 MB (62247423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2cd41dcfec97e64fe6d666f1c561f1af42981562f3f875c56638fab541d4491`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:cli` - unknown; unknown

```console
$ docker pull docker@sha256:5b046ee746eb0d9a3e146cf6f4ca9d8e52904ca356f5c714ddc3bba119c6e336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 KB (38262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d2a78ffab4af967b2852e19d328b20339a9d40b2b9faa74786e017176455896`

```dockerfile
```

-	Layers:
	-	`sha256:1d11207ad1567ef0970e936100ef5b67a320a0e1cbc5a52cfe2e97163cb0da42`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 38.3 KB (38262 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind`

```console
$ docker pull docker@sha256:1e08cdb63405ca788aea94ef35b792d1e299607c667d33d7bcbcae1fd2611ced
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
$ docker pull docker@sha256:6316d612722fd7fb2bd7edf9fcbb4439d08915cfb2e0e0b28bf16675fc9f3314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137431776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98175203ef6f7a6147c3edbff4f2606d2707b413a61b45fed021004ddbf0ebd1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:24 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11aa40b3b5d8112c881923b7a97ac98708278377092c682b5bcc77852b7596a7`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 4.1 MB (4080930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22afb0d3d1ae7cf804c5e1ca7ed4844691f93e42bc9221a1106755c528e087ed`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 81.1 KB (81147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c02d0754fc39d744e45d5a85e9396988c3eda46ac1b05e3ffadc4107d6e12f8`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5a66fd8265a3109d61875a3e83ff125f8cb064f4af950ec6c411cdb060fe29`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 66.6 MB (66601862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf3c753153387f6cdf3ad7cc9a223a1aa1b51f4abba81164e2ab022038f7a69`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f238d6c1fc8afc4275b47820b68a4fdf8ec800fad62a0be5f47011e976b048`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:5f1915157de5e0318845bf5b4d380d2dc6651a68674ff5d4a9c138978699c8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86863bb72da1643264a2dd980ddbc926325184c9029709b32a8e815a66da9914`

```dockerfile
```

-	Layers:
	-	`sha256:27c9d74814840666a5171b8a7d3f80fd90a361ba241b3c7608c31214ebe8caa0`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:766d44483d9540f5317b2e86829f430d907d093f2c2d5f23788afc7d4015f2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128708373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e630428d6b3a5c83723f0d4b5fbb696dd03d5a13fef9d6bdd918e2b29098b4a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567bb24565a44f7712ea535ce6f1ce7a031881a4ba20ff7c217441b98d472de8`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 8.1 MB (8100292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f426d022437ae616a9ceb4ad409b79030b6c9d267ca183b8f9569aecc70cfb`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0a320520e262c71939f8ae9b006ebe85362843d084af59b3190c15d5e092b5`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18793228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7030f7debe7cdc4169e7f0965126405fb717850a67ecc527f8cbc0935166ff84`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21674143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0648f611ea8b805fa01021de6e0567896d629d198f6c78fd5d113b535f507c`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10719269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8294d545d1d8a33b66664720c4deb95422f89aaa030c9fd494763b16e27f762a`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a2b5e65bcdcc83be0295ec16c854b52afa3df7b0f9177c9b9fc982db3a9406`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0397c4bfcaae69ab632858a1b2143354c8e7c02baa96ca826df0217e65c7e1d4`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.7 MB (3717178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da95b3a9671c64c72002c68721c6f7f9b489487163c0e4ce0ea5eb5436c461`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e195bd4580b1f84b5b945624e43323884de00076da642774ab9930d14c80eb`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3df6343c2b502389fdebc03458466231b08c5e3485e8300f67201f8e4ab3db`  
		Last Modified: Thu, 08 Oct 2026 00:10:39 GMT  
		Size: 62.1 MB (62061148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781d91d88ff31f6c35f76f391343776a4ff5cf24546b373ce33aeb6bc2b2b27`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640cf773cd5446cac6f17b22f403318cba29d8ca2479779eab31b1fe24a27d47`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:0c64e6b9437c9a2baf3a0bfa155d03b69d5f41acdc48ec01eeb6e9f8949623a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c01870ac267bc6cf841765485ae1275370487fb4946fd9adfa44f1b2c9ac628`

```dockerfile
```

-	Layers:
	-	`sha256:59af9d562b7f7495bc777a3ecdfee8fb6bc828b2011f4b9c7643c72a5e981350`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:e5f0f7818cf10fe8a32976aea71540d5be1a601478d3bfc2ecdd088318c605b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127216732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d778fb63418843cb72dada68c6b854c327a0df72f2e6bacc354fba9ce0e553`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:00 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:00 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785e994a0adcd6eb7448d5e292b45efabdb19b77e71a641e1aa141ae563bc94f`  
		Last Modified: Wed, 07 Oct 2026 23:51:04 GMT  
		Size: 7.4 MB (7395025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85689d40bd088c81a3d2fcee6cadd174ae6931b7e7bb7103398124985ed3a7d`  
		Last Modified: Wed, 07 Oct 2026 23:51:03 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8920b65d5cdd2ccb1f6f54741919e8a3f784d549e1c9624bdd04e61b7f730c08`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18778763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c637a383eea7f4d32d144b13bddb677c70c35f7f3be14514740fc7326e0c01b9`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21658842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7ff54b8c98c1b395fa3870f4d7d231bdf196cc5c6bbd916d1897da3151640e`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10708475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac35ac233324a4de60824522db9f43265d4d0ebac66fb73741ccfb5deab6a463`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5957d645f5577057dbb046cce5f4530b6f6aa3951db0475c1dd102de937579ba`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b715289a62213a0ab9db2e8de61a52f3214f46f7e49532a006abfbd7e7e2e6f4`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 3.4 MB (3439082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af83f355de665b2512ca64c75081c1507fe2b8bdbbac5637fa25d71423870c06`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 76.2 KB (76211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd2c8e9e62c273bdfd26f90981c1b216f3c18aa5ceba4935f2c531f667a2c52`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59ac8c8984e02ec5c033ac2fc0ebe4287b2e0e8debbf5761c4c3ed8b81efd56`  
		Last Modified: Thu, 08 Oct 2026 00:10:12 GMT  
		Size: 61.9 MB (61886980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3a1b83df4d6f6246368296fea4d43816faeb1f546ff8c22511119cd279852d`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1609614a561eb8f517e4ffc141d56464ab43eb83fa4c44c7b805dc9b3e40754c`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:a11522cb8455692cbb60b15f2dd1dd3a7271863e587461aee8779d28d06a6511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf83dc9e21fa25596051fc3eecdfd32b8d22f4df1f79ca3b1d353d5ba9ad4b5`

```dockerfile
```

-	Layers:
	-	`sha256:991e553f46b4c38f0d924fa5f2f92bf86529ac9beda0da241ab263c5c2cb51ec`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0cfe34780472229470f56736bbf85165a0f15e2da84a4798af89bed607f3ffc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127363785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43605ebce5e9211a263e139255be18a354dd8ee7bc71d8ef1b8d965b974f944e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:28 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:32 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8140ed9c5388813f68344530eea245c04bf64ed0c7ed80bf178767fcdaf8a58d`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 4.6 MB (4628449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474aeb4f33fa66df451c52bfd3e08928160b02963fa5f193a96a1162165f608`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 90.5 KB (90464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aeab074aa1f42901d40786488f73e56d3fd4421db31ae857a96faecf73127b`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6aa44afe2454a8f36bb753124219e2908fa9c6c4c7d6351f2a43ea52491824e`  
		Last Modified: Thu, 08 Oct 2026 00:10:43 GMT  
		Size: 60.4 MB (60391454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678b0a2a083451962834880870a383ea6afb89e68db986eddf95ba71baccbc09`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6f753006c44ba65231946638343a865abb3788bf28fe8f7d05098651d3c7e1`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 3.3 KB (3297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind` - unknown; unknown

```console
$ docker pull docker@sha256:b6f6b5af3e509a8759f1c108bd0da2c5393a366c7c78a05de5940364c483c1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e254c8a3a438564f94841e0d5b79f8d54bc47892333c8e28f51cfc3419661f2`

```dockerfile
```

-	Layers:
	-	`sha256:1ce82d1ad4d2a66d22640f7415fb4f74f45e2d80ca76b3b15bfd1f6cf12e9797`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:dind-rootless`

```console
$ docker pull docker@sha256:c652fa9cebdaa3d655c33c6389c3c409f9a0fea6449c7d7c56c486fe71af0591
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:da8b9fda07238561f4a102912dbac6a32d0991cacf5e12bef74e670327903900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.2 MB (153181514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70dd8f2105a8bbe17be1ed3d11a075dc82ec3c850375a8c75b7c0b195a693aa7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:24 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:24 GMT
CMD []
# Thu, 08 Oct 2026 01:10:23 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 08 Oct 2026 01:10:23 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 08 Oct 2026 01:10:23 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 01:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 08 Oct 2026 01:10:24 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 08 Oct 2026 01:10:24 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 08 Oct 2026 01:10:24 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11aa40b3b5d8112c881923b7a97ac98708278377092c682b5bcc77852b7596a7`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 4.1 MB (4080930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22afb0d3d1ae7cf804c5e1ca7ed4844691f93e42bc9221a1106755c528e087ed`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 81.1 KB (81147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c02d0754fc39d744e45d5a85e9396988c3eda46ac1b05e3ffadc4107d6e12f8`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5a66fd8265a3109d61875a3e83ff125f8cb064f4af950ec6c411cdb060fe29`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 66.6 MB (66601862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf3c753153387f6cdf3ad7cc9a223a1aa1b51f4abba81164e2ab022038f7a69`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f238d6c1fc8afc4275b47820b68a4fdf8ec800fad62a0be5f47011e976b048`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a820a7fd87036234ee3e488b0123030572c62bc32518c1188529b6d88916908e`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 3.6 MB (3626331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1659b57fa420d0eeb2352ce0f486b24a622e90ee3eb59f5a47c04a8057263e68`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514f8d7c485f28a289a51bdded8d3201e4864b15a8b839cd8f10e26bf7e97d8a`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13a6e888148e972945f98e2a63db8c3a1ea508708222dfadaf55249a1b159c24`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 12.1 MB (12122061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e487703814668b7ba2dc256f779b4b101e209d2caecb9d59de0727aae6ca10a1`  
		Last Modified: Thu, 08 Oct 2026 01:10:30 GMT  
		Size: 190.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:91c804b5c982c8b982df88afc5f7c3904cdfc5eaeb5c6fc0e1436200110cb1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27aaaddfad7590e4b1abf487977fabc94d1bd1074dcd5b7609aa947e7f7d40a7`

```dockerfile
```

-	Layers:
	-	`sha256:a649c955999f43b4f7727d06da0e2c10c987eb999fca853005ce527ae1329c0d`  
		Last Modified: Thu, 08 Oct 2026 01:10:29 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:a65e0b8f235c1ab549fa8d25ae82d7d480ce1a7d1364d17145c0c0f6b591a8d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.2 MB (142227139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc9d9af8c755f62ec164606f6243310d8c251780d9cb45c81b9865261ee6ee88`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:28 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:32 GMT
CMD []
# Thu, 08 Oct 2026 01:10:02 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 08 Oct 2026 01:10:02 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 08 Oct 2026 01:10:02 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 01:10:03 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 08 Oct 2026 01:10:03 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 08 Oct 2026 01:10:03 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 08 Oct 2026 01:10:03 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8140ed9c5388813f68344530eea245c04bf64ed0c7ed80bf178767fcdaf8a58d`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 4.6 MB (4628449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474aeb4f33fa66df451c52bfd3e08928160b02963fa5f193a96a1162165f608`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 90.5 KB (90464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aeab074aa1f42901d40786488f73e56d3fd4421db31ae857a96faecf73127b`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6aa44afe2454a8f36bb753124219e2908fa9c6c4c7d6351f2a43ea52491824e`  
		Last Modified: Thu, 08 Oct 2026 00:10:43 GMT  
		Size: 60.4 MB (60391454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678b0a2a083451962834880870a383ea6afb89e68db986eddf95ba71baccbc09`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6f753006c44ba65231946638343a865abb3788bf28fe8f7d05098651d3c7e1`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 3.3 KB (3297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:198ca2693652797dd3ac10d569cf0dfcee3e0ee7e062eb6ccf91415823d30e2e`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 3.6 MB (3611359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64bd69f137cf55b6c42f9218b9b873dd805e73574571dbefe7a787ac00905c8d`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64599dd0d71da4ca85c2111376cff8f6d22a1357bb00a336860f20c21bd72376`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807de65801116330aeb7dbc9d7f457d830a24c442f5e190789dd209197a6b173`  
		Last Modified: Thu, 08 Oct 2026 01:10:09 GMT  
		Size: 11.3 MB (11250655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65d99b0058be78d962767a02c1d5931f7e9e1fd22df220385cfaa09ce987be4`  
		Last Modified: Thu, 08 Oct 2026 01:10:09 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:52dd24753403ce771b90e3efeddf3f30c94eecde6d56fa6d6bf73d5d98ce5739
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2376f1fce11f479266293a9625f564a82d8d92a4b2c913f900dd3514611d7a`

```dockerfile
```

-	Layers:
	-	`sha256:e05b4e265f30abf18c85d9445e9c09cfb052a10a75436cf09109502a42dd44f7`  
		Last Modified: Thu, 08 Oct 2026 01:10:08 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:latest`

```console
$ docker pull docker@sha256:1e08cdb63405ca788aea94ef35b792d1e299607c667d33d7bcbcae1fd2611ced
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
$ docker pull docker@sha256:6316d612722fd7fb2bd7edf9fcbb4439d08915cfb2e0e0b28bf16675fc9f3314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.4 MB (137431776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98175203ef6f7a6147c3edbff4f2606d2707b413a61b45fed021004ddbf0ebd1`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:50:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:50:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:50:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:50:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:50:19 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:50:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:50:19 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:21 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:24 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:24 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:24 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:24 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:24 GMT
CMD []
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25fa25ef9a214ec7c068faeff6e74a8d572dab20f5cadf9efa21239321d54a1`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 8.2 MB (8200457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc71e2ca4ea68133cbbaebd2cdaac23f8c255a7865519093d6532aa08aec54b`  
		Last Modified: Wed, 07 Oct 2026 23:50:25 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:767eb4f3c372983a060900db5e6a519bb6de321c046702c7fc6402fc14fa9b8f`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 20.2 MB (20247346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78509240c435b5884abb9525fcaee0d65711c606ccae3b258689d15f0ce028e3`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 23.1 MB (23059610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59d7c6fb28167c05a2b19e1ccd51ca2090db2f1f1da956173a861bd1a94d25d`  
		Last Modified: Wed, 07 Oct 2026 23:50:26 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded769ae42b9aad0059792d98649461881b11e1443c00dc138c7c79c02c2ed7a`  
		Last Modified: Wed, 07 Oct 2026 23:50:27 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c27b8fbb76b144ee9c8da258dbfc2e010ceb161a212273dabe1913b8904ce11f`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 1.0 KB (1007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a121f30e5d65e283f987a88a2e46a75afbb76b792481cdbe7d5959d87b5a140`  
		Last Modified: Wed, 07 Oct 2026 23:50:28 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11aa40b3b5d8112c881923b7a97ac98708278377092c682b5bcc77852b7596a7`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 4.1 MB (4080930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22afb0d3d1ae7cf804c5e1ca7ed4844691f93e42bc9221a1106755c528e087ed`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 81.1 KB (81147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c02d0754fc39d744e45d5a85e9396988c3eda46ac1b05e3ffadc4107d6e12f8`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b5a66fd8265a3109d61875a3e83ff125f8cb064f4af950ec6c411cdb060fe29`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 66.6 MB (66601862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bf3c753153387f6cdf3ad7cc9a223a1aa1b51f4abba81164e2ab022038f7a69`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f238d6c1fc8afc4275b47820b68a4fdf8ec800fad62a0be5f47011e976b048`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:5f1915157de5e0318845bf5b4d380d2dc6651a68674ff5d4a9c138978699c8e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.2 KB (34179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86863bb72da1643264a2dd980ddbc926325184c9029709b32a8e815a66da9914`

```dockerfile
```

-	Layers:
	-	`sha256:27c9d74814840666a5171b8a7d3f80fd90a361ba241b3c7608c31214ebe8caa0`  
		Last Modified: Thu, 08 Oct 2026 00:10:36 GMT  
		Size: 34.2 KB (34179 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:766d44483d9540f5317b2e86829f430d907d093f2c2d5f23788afc7d4015f2a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.7 MB (128708373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e630428d6b3a5c83723f0d4b5fbb696dd03d5a13fef9d6bdd918e2b29098b4a5`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:48 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:48 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:15 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:22 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:26 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:26 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:26 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:26 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:26 GMT
CMD []
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567bb24565a44f7712ea535ce6f1ce7a031881a4ba20ff7c217441b98d472de8`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 8.1 MB (8100292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f426d022437ae616a9ceb4ad409b79030b6c9d267ca183b8f9569aecc70cfb`  
		Last Modified: Wed, 07 Oct 2026 23:51:02 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0a320520e262c71939f8ae9b006ebe85362843d084af59b3190c15d5e092b5`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18793228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7030f7debe7cdc4169e7f0965126405fb717850a67ecc527f8cbc0935166ff84`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21674143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0648f611ea8b805fa01021de6e0567896d629d198f6c78fd5d113b535f507c`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10719269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8294d545d1d8a33b66664720c4deb95422f89aaa030c9fd494763b16e27f762a`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69a2b5e65bcdcc83be0295ec16c854b52afa3df7b0f9177c9b9fc982db3a9406`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0397c4bfcaae69ab632858a1b2143354c8e7c02baa96ca826df0217e65c7e1d4`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 3.7 MB (3717178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1da95b3a9671c64c72002c68721c6f7f9b489487163c0e4ce0ea5eb5436c461`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 79.9 KB (79854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e195bd4580b1f84b5b945624e43323884de00076da642774ab9930d14c80eb`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3df6343c2b502389fdebc03458466231b08c5e3485e8300f67201f8e4ab3db`  
		Last Modified: Thu, 08 Oct 2026 00:10:39 GMT  
		Size: 62.1 MB (62061148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781d91d88ff31f6c35f76f391343776a4ff5cf24546b373ce33aeb6bc2b2b27`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640cf773cd5446cac6f17b22f403318cba29d8ca2479779eab31b1fe24a27d47`  
		Last Modified: Thu, 08 Oct 2026 00:10:38 GMT  
		Size: 3.3 KB (3299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:0c64e6b9437c9a2baf3a0bfa155d03b69d5f41acdc48ec01eeb6e9f8949623a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c01870ac267bc6cf841765485ae1275370487fb4946fd9adfa44f1b2c9ac628`

```dockerfile
```

-	Layers:
	-	`sha256:59af9d562b7f7495bc777a3ecdfee8fb6bc828b2011f4b9c7643c72a5e981350`  
		Last Modified: Thu, 08 Oct 2026 00:10:37 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:e5f0f7818cf10fe8a32976aea71540d5be1a601478d3bfc2ecdd088318c605b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127216732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80d778fb63418843cb72dada68c6b854c327a0df72f2e6bacc354fba9ce0e553`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:50:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:50:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:16 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:17 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:18 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:18 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:09:56 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:00 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:00 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:00 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:00 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:00 GMT
CMD []
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785e994a0adcd6eb7448d5e292b45efabdb19b77e71a641e1aa141ae563bc94f`  
		Last Modified: Wed, 07 Oct 2026 23:51:04 GMT  
		Size: 7.4 MB (7395025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85689d40bd088c81a3d2fcee6cadd174ae6931b7e7bb7103398124985ed3a7d`  
		Last Modified: Wed, 07 Oct 2026 23:51:03 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8920b65d5cdd2ccb1f6f54741919e8a3f784d549e1c9624bdd04e61b7f730c08`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 18.8 MB (18778763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c637a383eea7f4d32d144b13bddb677c70c35f7f3be14514740fc7326e0c01b9`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 21.7 MB (21658842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7ff54b8c98c1b395fa3870f4d7d231bdf196cc5c6bbd916d1897da3151640e`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 10.7 MB (10708475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac35ac233324a4de60824522db9f43265d4d0ebac66fb73741ccfb5deab6a463`  
		Last Modified: Wed, 07 Oct 2026 23:51:24 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5957d645f5577057dbb046cce5f4530b6f6aa3951db0475c1dd102de937579ba`  
		Last Modified: Wed, 07 Oct 2026 23:51:25 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b3cea84c6aa4daef8929b74137aee0b7464b272590e32040755d9da72bf3603`  
		Last Modified: Wed, 07 Oct 2026 23:51:26 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b715289a62213a0ab9db2e8de61a52f3214f46f7e49532a006abfbd7e7e2e6f4`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 3.4 MB (3439082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af83f355de665b2512ca64c75081c1507fe2b8bdbbac5637fa25d71423870c06`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 76.2 KB (76211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecd2c8e9e62c273bdfd26f90981c1b216f3c18aa5ceba4935f2c531f667a2c52`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e59ac8c8984e02ec5c033ac2fc0ebe4287b2e0e8debbf5761c4c3ed8b81efd56`  
		Last Modified: Thu, 08 Oct 2026 00:10:12 GMT  
		Size: 61.9 MB (61886980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c3a1b83df4d6f6246368296fea4d43816faeb1f546ff8c22511119cd279852d`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1609614a561eb8f517e4ffc141d56464ab43eb83fa4c44c7b805dc9b3e40754c`  
		Last Modified: Thu, 08 Oct 2026 00:10:11 GMT  
		Size: 3.3 KB (3301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:a11522cb8455692cbb60b15f2dd1dd3a7271863e587461aee8779d28d06a6511
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf83dc9e21fa25596051fc3eecdfd32b8d22f4df1f79ca3b1d353d5ba9ad4b5`

```dockerfile
```

-	Layers:
	-	`sha256:991e553f46b4c38f0d924fa5f2f92bf86529ac9beda0da241ab263c5c2cb51ec`  
		Last Modified: Thu, 08 Oct 2026 00:10:10 GMT  
		Size: 34.4 KB (34359 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:0cfe34780472229470f56736bbf85165a0f15e2da84a4798af89bed607f3ffc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.4 MB (127363785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43605ebce5e9211a263e139255be18a354dd8ee7bc71d8ef1b8d965b974f944e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 07 Oct 2026 23:51:01 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 07 Oct 2026 23:51:01 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_VERSION=29.8.2
# Wed, 07 Oct 2026 23:51:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 07 Oct 2026 23:51:22 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Wed, 07 Oct 2026 23:51:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-amd64'; 			sha256='982ca20490b45ed1ec8d99795974d3d874a358f75938c9c237305010e6b7e548'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v6'; 			sha256='53a8d26bde4af99ce5123abec1d79f6c778cd22ad0c18bab1ae2056302b32805'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm-v7'; 			sha256='82ce19352521eec762566346d48eb04f1f66ecf4fef6385fa903503c5530367a'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-arm64'; 			sha256='efa38cb7aa7db2dbb9ad049b00b0a9737f66f033626177b5a4e845184ad7ab29'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-ppc64le'; 			sha256='59b5565dba49775232e1c14f29342c1453ca40ee5edf57ca016a7ee123780afa'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-riscv64'; 			sha256='0678850b5e49218e0c22990a1b9a9ea1e0835d92a89f01a21dc7e9c85033826b'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.linux-s390x'; 			sha256='1c43e151e84cf570a1124215ba15f92b6b240eac4c83115a94b8378b54409f3c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 07 Oct 2026 23:51:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Wed, 07 Oct 2026 23:51:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 07 Oct 2026 23:51:24 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 07 Oct 2026 23:51:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 07 Oct 2026 23:51:24 GMT
CMD ["sh"]
# Thu, 08 Oct 2026 00:10:28 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Thu, 08 Oct 2026 00:10:29 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Thu, 08 Oct 2026 00:10:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.8.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.8.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.8.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.8.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Thu, 08 Oct 2026 00:10:32 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 00:10:32 GMT
VOLUME [/var/lib/docker]
# Thu, 08 Oct 2026 00:10:32 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Thu, 08 Oct 2026 00:10:32 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Thu, 08 Oct 2026 00:10:32 GMT
CMD []
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a209cbbbb2427c21f1d20d48a968d33562fe6265546612123cdc4705e76b71d7`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 8.3 MB (8261690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd20865a867bfeeb6018e81a8ea5534a5a541cde2e7078c955beeb133a66201f`  
		Last Modified: Wed, 07 Oct 2026 23:51:12 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c882b472d6ba14a07e41fe00cc7725f009b1f908aca5308e84e7d4a2209dfda`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 18.6 MB (18635438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:708ca8f94d6099414a75052c17dcce9ccd17338667981ec0256dd308c5ae645c`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 20.9 MB (20885947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4997ade6a5f6ac3ebc03cb72d89820414536636f67812401aad95bd6657a264`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 10.3 MB (10274537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d217107959576f5c52af10fcf7751f4e6ee08685b96e576e8a14a3177871be`  
		Last Modified: Wed, 07 Oct 2026 23:51:29 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6182bc48561f1f248b8e52e25a54d8a4b96cdc49e5d7a746928f0917ec0d965d`  
		Last Modified: Wed, 07 Oct 2026 23:51:30 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5538cb682c41afeb33bf2dfe43aec36db53644be8e6a0db8ae7128019f60b426`  
		Last Modified: Wed, 07 Oct 2026 23:51:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8140ed9c5388813f68344530eea245c04bf64ed0c7ed80bf178767fcdaf8a58d`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 4.6 MB (4628449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c474aeb4f33fa66df451c52bfd3e08928160b02963fa5f193a96a1162165f608`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 90.5 KB (90464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35aeab074aa1f42901d40786488f73e56d3fd4421db31ae857a96faecf73127b`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6aa44afe2454a8f36bb753124219e2908fa9c6c4c7d6351f2a43ea52491824e`  
		Last Modified: Thu, 08 Oct 2026 00:10:43 GMT  
		Size: 60.4 MB (60391454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678b0a2a083451962834880870a383ea6afb89e68db986eddf95ba71baccbc09`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6f753006c44ba65231946638343a865abb3788bf28fe8f7d05098651d3c7e1`  
		Last Modified: Thu, 08 Oct 2026 00:10:42 GMT  
		Size: 3.3 KB (3297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:b6f6b5af3e509a8759f1c108bd0da2c5393a366c7c78a05de5940364c483c1e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.4 KB (34414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e254c8a3a438564f94841e0d5b79f8d54bc47892333c8e28f51cfc3419661f2`

```dockerfile
```

-	Layers:
	-	`sha256:1ce82d1ad4d2a66d22640f7415fb4f74f45e2d80ca76b3b15bfd1f6cf12e9797`  
		Last Modified: Thu, 08 Oct 2026 00:10:41 GMT  
		Size: 34.4 KB (34414 bytes)  
		MIME: application/vnd.in-toto+json

## `docker:windowsservercore`

```console
$ docker pull docker@sha256:0fe086f6c6c94a58be9dad25feb42f911402dec62003ca6211b58deb8ccdaee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:e6252807c88c86bf539f4c1f6cd1dca9c6052af8f343a61d302dda28717722c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514958736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47a41567b4d43e219b577ba31fd51462d81442d82b452aa2ef62c17ddba4400`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 08 Oct 2026 00:08:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:09:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:09:18 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:09:20 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:09:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:09:33 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:09:41 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:09:50 GMT
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
	-	`sha256:7ea074ce10f89d837633416b3fcd99d9f1f649c6d59053c076a25b29a75abce2`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e95fa198cac6127677990bcfb04deb7c297a67943b2fd5ac86c9d86d45fb7`  
		Last Modified: Thu, 08 Oct 2026 00:09:58 GMT  
		Size: 386.3 KB (386349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea32217cb4134ec95a2b7d40d27451c9d408694d3ee56bb2e9e70633a541da54`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25d9041cfaabae20117ca86734d989a258af47ae8d4f27ba2318d7b4e7df3e9`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18be9a2c8236540539a6e434e0dc55fba0400c359c1821c644b6530b0493d0f6`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 20.9 MB (20929080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be060c58ab6d6737d1391b7623999e0312b5d83b4144e41616828dcdfd3d92`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88ac84b8d590e5d4ee80b7efd9945ce6619b2160436a8325a7d1a3fe850c88`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854f2217a052cf1531ae2d1d3433dd31b7c24f50b2759fbcf774078bf762d891`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a7676377ef81e53707d3cd10ea896d0fbec35bce1befc9a0e95d642a5ecac6`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 24.0 MB (24015314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68420612d1d3e893f30cf2ebdf30a317a630e67a231c9799698c992536df891b`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1221bf9d671520af2d94c6d183627bb6c22aa61962916db592817d6c841bdd`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f866ec8cfa08a40728af85991d6d4df898a698815650105c7629877801f7111d`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1411b01afa76166a705758cf99347a3c28abb56e9de2a7fb68c7f22464a0dc2`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 12.0 MB (11986785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `docker:windowsservercore` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:f93673a23ae0960c0629e56fe3f54a9600eb05698917ffcc1960e386a19f4ba8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276690993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f7de2b96ba81b2fab0780fe3b31343334c84d99bd9cd2ac6a8ae1be5dbd125`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 00:30:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:31:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:31:42 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:31:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:32:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:32:17 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:32:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:32:55 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:33:17 GMT
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
	-	`sha256:216c16e7c5d894e77c76b09a10fa6e12cd5897d30b50cb61c9d04703fb352482`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d473d38daa3682aa2f1191f9ed8cfa71eede6ce835cba3dfb45bae10161dc4`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 360.0 KB (359979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25712663edd6488c0894471c2690d834b0332403809adce59cbb7904721167`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ace942363216506b8934ab036dc53dcac50079d47ad0635cc2004c3edc8ccd`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91852aef93e452065c5e3e3c207bef3496df64b69fd464abe1b78c060528fdc8`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 20.9 MB (20895779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411d61c19315ed1b557dfad6f8e52740c8d40f12efdc26fab38ac46bc56a2ccf`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f9f4fadda4becde747e6bd83fb3752e60fd27e612e18accf0eceaa82b17a2`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baec00c41bf0adb3b562e14a173217a58fd55b4442d13ca70d0267ab21723ceb`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6412ff4e349147d8398e25c0625ba89fe51f1343b4e14993b2dd04ce40e502`  
		Last Modified: Thu, 08 Oct 2026 00:33:41 GMT  
		Size: 24.0 MB (23991442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f0fd35a78791c35a3c1ff82804b86178496d9287a1ffd1919bba20b7431d`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fe36ba2be2ed7911344b98cf7211cedc22dc8eb17b8c06d1381db230cb2011`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd8f6bc5e2db1d533326538d8cb076026630e3be94cc9e8533c31967ffa23e2`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da688fdba56363b171aad5aff401e147b48c8ed0915cadb21aefe9d96dda2f`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 11.9 MB (11943282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2022`

```console
$ docker pull docker@sha256:b4117fdd1bc2bbeb8b63da81403486512a8154125c6981baaf91ffd931381e25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.20348.5622; amd64

### `docker:windowsservercore-ltsc2022` - windows version 10.0.20348.5622; amd64

```console
$ docker pull docker@sha256:f93673a23ae0960c0629e56fe3f54a9600eb05698917ffcc1960e386a19f4ba8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2276690993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f7de2b96ba81b2fab0780fe3b31343334c84d99bd9cd2ac6a8ae1be5dbd125`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Thu, 08 Oct 2026 00:30:24 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:31:42 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:31:42 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:31:43 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:32:14 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:32:16 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:32:17 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:32:53 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:32:54 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:32:55 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:33:17 GMT
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
	-	`sha256:216c16e7c5d894e77c76b09a10fa6e12cd5897d30b50cb61c9d04703fb352482`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 1.3 KB (1325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d473d38daa3682aa2f1191f9ed8cfa71eede6ce835cba3dfb45bae10161dc4`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 360.0 KB (359979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab25712663edd6488c0894471c2690d834b0332403809adce59cbb7904721167`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ace942363216506b8934ab036dc53dcac50079d47ad0635cc2004c3edc8ccd`  
		Last Modified: Thu, 08 Oct 2026 00:33:27 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91852aef93e452065c5e3e3c207bef3496df64b69fd464abe1b78c060528fdc8`  
		Last Modified: Thu, 08 Oct 2026 00:33:29 GMT  
		Size: 20.9 MB (20895779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:411d61c19315ed1b557dfad6f8e52740c8d40f12efdc26fab38ac46bc56a2ccf`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f9f4fadda4becde747e6bd83fb3752e60fd27e612e18accf0eceaa82b17a2`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baec00c41bf0adb3b562e14a173217a58fd55b4442d13ca70d0267ab21723ceb`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 1.3 KB (1311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6412ff4e349147d8398e25c0625ba89fe51f1343b4e14993b2dd04ce40e502`  
		Last Modified: Thu, 08 Oct 2026 00:33:41 GMT  
		Size: 24.0 MB (23991442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd09f0fd35a78791c35a3c1ff82804b86178496d9287a1ffd1919bba20b7431d`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fe36ba2be2ed7911344b98cf7211cedc22dc8eb17b8c06d1381db230cb2011`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd8f6bc5e2db1d533326538d8cb076026630e3be94cc9e8533c31967ffa23e2`  
		Last Modified: Thu, 08 Oct 2026 00:33:24 GMT  
		Size: 1.3 KB (1336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59da688fdba56363b171aad5aff401e147b48c8ed0915cadb21aefe9d96dda2f`  
		Last Modified: Thu, 08 Oct 2026 00:33:25 GMT  
		Size: 11.9 MB (11943282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `docker:windowsservercore-ltsc2025`

```console
$ docker pull docker@sha256:b48155300d0aa775974107d5697c929c93f4ae9c2ed875744bc91a2b1e6a5fb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	windows version 10.0.26100.33438; amd64

### `docker:windowsservercore-ltsc2025` - windows version 10.0.26100.33438; amd64

```console
$ docker pull docker@sha256:e6252807c88c86bf539f4c1f6cd1dca9c6052af8f343a61d302dda28717722c8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2514958736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a47a41567b4d43e219b577ba31fd51462d81442d82b452aa2ef62c17ddba4400`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Thu, 08 Oct 2026 00:08:19 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 08 Oct 2026 00:09:17 GMT
RUN $newPath = ('{0}\docker;{1}' -f $env:ProgramFiles, $env:PATH); 	Write-Host ('Updating PATH: {0}' -f $newPath); 	[Environment]::SetEnvironmentVariable('PATH', $newPath, [EnvironmentVariableTarget]::Machine);
# Thu, 08 Oct 2026 00:09:18 GMT
ENV DOCKER_VERSION=29.8.2
# Thu, 08 Oct 2026 00:09:20 GMT
ENV DOCKER_URL=https://download.docker.com/win/static/stable/x86_64/docker-29.8.2.zip
# Thu, 08 Oct 2026 00:09:31 GMT
RUN Write-Host ('Downloading {0} ...' -f $env:DOCKER_URL); 	Invoke-WebRequest -Uri $env:DOCKER_URL -OutFile 'docker.zip'; 		Write-Host 'Expanding ...'; 	Expand-Archive docker.zip -DestinationPath $env:ProgramFiles; 		Write-Host 'Removing ...'; 	Remove-Item @( 			'docker.zip', 			('{0}\docker\dockerd.exe' -f $env:ProgramFiles) 		) -Force; 		Write-Host 'Verifying install ("docker --version") ...'; 	docker --version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_VERSION=0.37.2
# Thu, 08 Oct 2026 00:09:32 GMT
ENV DOCKER_BUILDX_URL=https://github.com/docker/buildx/releases/download/v0.37.2/buildx-v0.37.2.windows-amd64.exe
# Thu, 08 Oct 2026 00:09:33 GMT
ENV DOCKER_BUILDX_SHA256=39928ae02c2f4ba8b03ac84a51f3c966a8ffc7588f1f07a956c8620069408638
# Thu, 08 Oct 2026 00:09:41 GMT
RUN $dir = ('{0}\docker\cli-plugins' -f $env:ProgramFiles); 	Write-Host ('Creating {0} ...' -f $dir); 	New-Item -ItemType Directory $dir -Force; 		$plugin = ('{0}\docker-buildx.exe' -f $dir); 	Write-Host ('Downloading {0} ...' -f $env:DOCKER_BUILDX_URL); 	Invoke-WebRequest -Uri $env:DOCKER_BUILDX_URL -OutFile $plugin; 		Write-Host ('Verifying sha256 ({0}) ...' -f $env:DOCKER_BUILDX_SHA256); 	if ((Get-FileHash $plugin -Algorithm sha256).Hash -ne $env:DOCKER_BUILDX_SHA256) { 		Write-Host 'FAILED!'; 		exit 1; 	}; 		Write-Host 'Verifying install ("docker buildx version") ...'; 	docker buildx version; 		Write-Host 'Complete.';
# Thu, 08 Oct 2026 00:09:42 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_URL=https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-windows-x86_64.exe
# Thu, 08 Oct 2026 00:09:43 GMT
ENV DOCKER_COMPOSE_SHA256=8aeaa0055e660e12cf07cd70680dc8333957fe6718528b91ec3da084eab62483
# Thu, 08 Oct 2026 00:09:50 GMT
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
	-	`sha256:7ea074ce10f89d837633416b3fcd99d9f1f649c6d59053c076a25b29a75abce2`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 1.3 KB (1331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e95fa198cac6127677990bcfb04deb7c297a67943b2fd5ac86c9d86d45fb7`  
		Last Modified: Thu, 08 Oct 2026 00:09:58 GMT  
		Size: 386.3 KB (386349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea32217cb4134ec95a2b7d40d27451c9d408694d3ee56bb2e9e70633a541da54`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c25d9041cfaabae20117ca86734d989a258af47ae8d4f27ba2318d7b4e7df3e9`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18be9a2c8236540539a6e434e0dc55fba0400c359c1821c644b6530b0493d0f6`  
		Last Modified: Thu, 08 Oct 2026 00:09:59 GMT  
		Size: 20.9 MB (20929080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78be060c58ab6d6737d1391b7623999e0312b5d83b4144e41616828dcdfd3d92`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa88ac84b8d590e5d4ee80b7efd9945ce6619b2160436a8325a7d1a3fe850c88`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854f2217a052cf1531ae2d1d3433dd31b7c24f50b2759fbcf774078bf762d891`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a7676377ef81e53707d3cd10ea896d0fbec35bce1befc9a0e95d642a5ecac6`  
		Last Modified: Thu, 08 Oct 2026 00:09:57 GMT  
		Size: 24.0 MB (24015314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68420612d1d3e893f30cf2ebdf30a317a630e67a231c9799698c992536df891b`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1221bf9d671520af2d94c6d183627bb6c22aa61962916db592817d6c841bdd`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f866ec8cfa08a40728af85991d6d4df898a698815650105c7629877801f7111d`  
		Last Modified: Thu, 08 Oct 2026 00:09:54 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1411b01afa76166a705758cf99347a3c28abb56e9de2a7fb68c7f22464a0dc2`  
		Last Modified: Thu, 08 Oct 2026 00:09:56 GMT  
		Size: 12.0 MB (11986785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
