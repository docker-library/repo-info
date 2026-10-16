## `docker:29-dind-rootless`

```console
$ docker pull docker@sha256:825e451c9bd898245ca8fb07bd9a48999ccf33c0192fd68594c73aed7b67d11f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:29-dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:77cf5b9d151358377c707caf12cbeaa21d57fa87bd7b227671a60b04fa4e4e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140318354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877075fc11918084de275d774db20cdf2580e1e8bc22a5cff1335afb4a45ea63`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 16 Oct 2026 20:26:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 20:26:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
ENV DOCKER_VERSION=29.9.1
# Fri, 16 Oct 2026 20:26:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 16 Oct 2026 20:26:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 16 Oct 2026 20:26:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 16 Oct 2026 20:26:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 16 Oct 2026 20:26:28 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 16 Oct 2026 20:26:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:26:28 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 16 Oct 2026 20:26:28 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 16 Oct 2026 20:26:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:26:28 GMT
CMD ["sh"]
# Fri, 16 Oct 2026 20:32:01 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 16 Oct 2026 20:32:02 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 16 Oct 2026 20:32:02 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 16 Oct 2026 20:32:05 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 16 Oct 2026 20:32:05 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 16 Oct 2026 20:32:05 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 16 Oct 2026 20:32:05 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:32:05 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Oct 2026 20:32:05 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 16 Oct 2026 20:32:05 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Oct 2026 20:32:05 GMT
CMD []
# Fri, 16 Oct 2026 20:47:14 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 16 Oct 2026 20:47:15 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 16 Oct 2026 20:47:15 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 16 Oct 2026 20:47:15 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 16 Oct 2026 20:47:15 GMT
USER rootless
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:997d704b865f92c5a40c47e8a79f874e8f41cae06efcaf3b649865e259e476be`  
		Last Modified: Fri, 16 Oct 2026 20:26:35 GMT  
		Size: 8.2 MB (8200458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:067b9fbf5a8e22907ffde937be75aa548ced855574f2b146e0126642887d1423`  
		Last Modified: Fri, 16 Oct 2026 20:26:35 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157e016e5a38776108bb887df997fcb9bd663fca0d5ca445089ec0b83f99903e`  
		Last Modified: Fri, 16 Oct 2026 20:26:36 GMT  
		Size: 20.3 MB (20287641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44cc52ab095ac78a60b9de59fc09ffb72775846fc7da5fa30804391c5d9165cb`  
		Last Modified: Fri, 16 Oct 2026 20:26:36 GMT  
		Size: 23.8 MB (23814533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d1c2e699a7659e670d7114e0722f6a5555da81bd32b985992a233d55c38f48`  
		Last Modified: Fri, 16 Oct 2026 20:26:36 GMT  
		Size: 11.3 MB (11302543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c49a0e8d17a5d672bf8c6ef9996381a362dad7dc43509988337f123bd57f45b`  
		Last Modified: Fri, 16 Oct 2026 20:26:37 GMT  
		Size: 535.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983cbdc375a994923c9e2fa3b8acac367df4eb495f49c03a88bd6c4af6fa94b7`  
		Last Modified: Fri, 16 Oct 2026 20:26:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6506954fe0adf03716d8fa8421b89646066d77efc862e4d6ed33c8c36f3de5d`  
		Last Modified: Fri, 16 Oct 2026 20:26:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff4d1b747b45f5587ef8efb4261aae54ea0b2c8c95e440b9aba85928dd3cc479`  
		Last Modified: Fri, 16 Oct 2026 20:32:14 GMT  
		Size: 4.1 MB (4080931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ab74464c6a8a7cc21e13784895fbdd8f3742a6d71c08e37111ddcc0f8b8c328`  
		Last Modified: Fri, 16 Oct 2026 20:32:14 GMT  
		Size: 81.1 KB (81140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d69143f3494b214f34ed4c542c8d4324f2853051b5c928216c5891ac2d0420e`  
		Last Modified: Fri, 16 Oct 2026 20:32:14 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11b6c29fc59532fe699acca8acb3e0613c09ce358d49ea1249cdd81513c6792a`  
		Last Modified: Fri, 16 Oct 2026 20:32:16 GMT  
		Size: 52.9 MB (52944132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accc3fefad727699fb49191dbcaef047ce6943f6bffd2ea1fefd0062cd99342a`  
		Last Modified: Fri, 16 Oct 2026 20:32:15 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe13e4830bf2399f389fdcecb4ce31704454019fbd553ff85c6edd82a4170401`  
		Last Modified: Fri, 16 Oct 2026 20:32:15 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39bc08e9763b2f95e60b8b08c0554684e709c994dc391917b05c3f1c3f9f952e`  
		Last Modified: Fri, 16 Oct 2026 20:47:20 GMT  
		Size: 3.6 MB (3626336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e50e76f1c5cc64ad8b42a040a425e09c9dcaffc008a961c47027aa8ef228db03`  
		Last Modified: Fri, 16 Oct 2026 20:47:20 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c8ce62f52723e50ae00bbbb3b1db3aa665229787b461b28b15645dd870145d`  
		Last Modified: Fri, 16 Oct 2026 20:47:20 GMT  
		Size: 1.0 KB (1035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3035049a13c0eac551fb326e6ddcde84807da5bdd51c5f9a175e61ca9c41ad2`  
		Last Modified: Fri, 16 Oct 2026 20:47:20 GMT  
		Size: 12.1 MB (12121413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d32bd765420b387f145dde68942667eeaa0de81a0f17377f60282f0f0be761`  
		Last Modified: Fri, 16 Oct 2026 20:47:21 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:d5639cd91652c5289894bc1e895391f0b889f344914197e2db6fbe6e5b37b3bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd082482e0cefbc2a377af3e722b2716eb6136b0bb6d6eb27bbf634b0dcb5342`

```dockerfile
```

-	Layers:
	-	`sha256:b61c505f117008487e02d1499a666592172a0f36e02ecd444882155c830bd7af`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:29-dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ebed2e309e85761417e5c97b9b0a56b6e70cd744eef4c7f5a58c85b5f1f80ad9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130560218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cc1df51696c74d69e731499229b2543cd7bc5f4aa7bb66030ea7ae65c2ff3e`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 16 Oct 2026 20:26:22 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 16 Oct 2026 20:26:22 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 16 Oct 2026 20:26:22 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 16 Oct 2026 20:26:24 GMT
ENV DOCKER_VERSION=29.9.1
# Fri, 16 Oct 2026 20:26:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 16 Oct 2026 20:26:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.0
# Fri, 16 Oct 2026 20:26:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-amd64'; 			sha256='4fe4cc38adf48169132749b6ca22a990928db0118e3407584ee553723115d287'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v6'; 			sha256='b4ac29bafc49598dbbb72c02fea69f4c89564cfd83de075ce591823d8ddd9a16'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm-v7'; 			sha256='70e58bea42b5ecbda36aa3fa7328856e2478c34dada2787a6f44663c15421eb7'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-arm64'; 			sha256='38e890e1a162bfdbf32fbe91404991dc4fc28e55b0de901b34374a061bab4d2c'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-ppc64le'; 			sha256='252245e57c2648cabdfd4d2c5d21c03dfd039cad2ec2050435466c701b8dfed6'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-riscv64'; 			sha256='b6fd16e37b3b370220ba0e616ba8013f45c915904249c0e2cb3ee9cfb6fc0868'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.0/buildx-v0.38.0.linux-s390x'; 			sha256='4c5c1de5059063e51c15c51cd87279aa2248ffbded7e16fe3086e83f3337037b'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 16 Oct 2026 20:26:26 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.0
# Fri, 16 Oct 2026 20:26:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-x86_64'; 			sha256='40343e21ca777173e69cff5dbafeb37c6f81f3b0d57d9e597f036e95eb63e76a'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv6'; 			sha256='5531d2b21378cd0600d78c0ff44425fdcc2c0ba3b424a2e683004ff7987a4b53'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-armv7'; 			sha256='7bce2792fb474aa3bbb67ee7060622eb0f66516c92083712bdec520127d4f105'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-aarch64'; 			sha256='733ec76717ceb59052a9609b9dadfb523b2df8eab57a54212872d10a58078ea2'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-ppc64le'; 			sha256='59893abdb92b6f23ed105f82472ba8df92e688916186b8622c4ebdf7abbf9984'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-riscv64'; 			sha256='ea7702b8ac29d2b84bf05dc31727d5eceb3bd46f36ea30725b7532d4e3d8ae43'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.0/docker-compose-linux-s390x'; 			sha256='c1ed074ea3854870272a8d988e2f87ca7be0299aa51ad4ad024ef02cf5c273e1'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 16 Oct 2026 20:26:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 16 Oct 2026 20:26:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Oct 2026 20:26:27 GMT
CMD ["sh"]
# Fri, 16 Oct 2026 20:31:47 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Fri, 16 Oct 2026 20:31:47 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 16 Oct 2026 20:31:47 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.1.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.1.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 16 Oct 2026 20:31:50 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 16 Oct 2026 20:31:50 GMT
VOLUME [/var/lib/docker]
# Fri, 16 Oct 2026 20:31:50 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 16 Oct 2026 20:31:50 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 16 Oct 2026 20:31:50 GMT
CMD []
# Fri, 16 Oct 2026 20:47:13 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 16 Oct 2026 20:47:13 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 16 Oct 2026 20:47:13 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.1.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.1.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 16 Oct 2026 20:47:14 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 16 Oct 2026 20:47:14 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a992614bcbb5cfcaa01c40ca60463f2fcb187e88e4fa552a4ffd2c62a0ae6de7`  
		Last Modified: Fri, 16 Oct 2026 20:26:33 GMT  
		Size: 8.3 MB (8261670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af26c2b1e022395ee983d701e4cd9560d3d01efe7a397337f0947c3c2526159`  
		Last Modified: Fri, 16 Oct 2026 20:26:33 GMT  
		Size: 454.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d7bf51c2bc5629cea2c8670299eba800d19ef2b63a64267757aac652a9acd9`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 18.7 MB (18674149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a3e48d5759284d98c814801ff81910cf6c2624522094479baa63fd60138c292`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 21.6 MB (21567366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d45f5cbdc5dc0ca701af75746626f8b7fafc1fd168d82d6e9bf7701f710694`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 10.3 MB (10274545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdfc4e2717a51328b55d00387341b1dadc16ed0436824b86a27d4438d27ad290`  
		Last Modified: Fri, 16 Oct 2026 20:26:34 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6667e53d6e7da3c3c9b66896766f85cfa232c23b037c0d1f1d34c6d989811904`  
		Last Modified: Fri, 16 Oct 2026 20:26:35 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4237763af154d13b08918763c29432324622fb775e63fe70df7f981dd8dbe195`  
		Last Modified: Fri, 16 Oct 2026 20:26:35 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7117469d829e4a5d9a5caeb1a130a6f1dcb68eddeebb2324e26de63fa1b6e88c`  
		Last Modified: Fri, 16 Oct 2026 20:31:59 GMT  
		Size: 4.6 MB (4628362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7858d651b39ea144b47f95e0fc387fd5e288a3ce50c0768e743561693cf63a59`  
		Last Modified: Fri, 16 Oct 2026 20:31:59 GMT  
		Size: 90.5 KB (90456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63f0353a0d4c9cedfb24a59b454a9847ef48e834b6c0e5aed03275da5864b01`  
		Last Modified: Fri, 16 Oct 2026 20:31:59 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b916ca297f2da5ac34318a919e239e4a3a491d891cf47794c19ee5b0a538febb`  
		Last Modified: Fri, 16 Oct 2026 20:32:00 GMT  
		Size: 48.0 MB (48001034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44f2cb1b82eec16b4a2e4ab8001424a5696528329e65ce32c3a9a393fdc3d63`  
		Last Modified: Fri, 16 Oct 2026 20:32:00 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c276681ef0d98839e58d9b6bd4c6df85c8182361f65ab45c7d7c9ff210c84718`  
		Last Modified: Fri, 16 Oct 2026 20:32:00 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83131a547614f471a8e0fd41c6f57e5d2ffee87a351bc611ba02dc761db083e5`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 3.6 MB (3611337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02784092578c94cfec54e0f0c7ace4870919630b01ddd8075bac5f2b26cb1380`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d6d1f7aa1b6ae417df379ab5719c3b165546c32d9ed0c1d31547e08c701fe8`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 1.0 KB (1036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce59c3416247fe8aab47a5cb445f47590e9ccb94f84fc13c2c336805c91e7bfc`  
		Last Modified: Fri, 16 Oct 2026 20:47:19 GMT  
		Size: 11.3 MB (11254148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c59433f2a3e2dd842ae8a556a34ed72e4ceb64d737672561290d8b4d42a275e`  
		Last Modified: Fri, 16 Oct 2026 20:47:20 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:29-dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:9b59c994ed82e5d39cad140c264fa91d781ca76d6c7f753a3ca2dab71d3a5bec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d6c59d53bf5e856ef7afb768a5a87743fa8fd02d81d255b93b5ed8c0416ad1`

```dockerfile
```

-	Layers:
	-	`sha256:c497fac71f8a3feafafe7a7215ce278a2ebb352448fefab41b42e6b2f4c5545e`  
		Last Modified: Fri, 16 Oct 2026 20:47:18 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json
