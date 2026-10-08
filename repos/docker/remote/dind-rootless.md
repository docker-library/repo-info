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
