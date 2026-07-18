## `docker:dind-rootless`

```console
$ docker pull docker@sha256:212a9e782c7119fd6a212beaab6b7665a29b663d894d0f6201710c89575ad0ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:9ca5d2d7f364f7c48579ba57dcb218b37387f214943f6446f62a200935511278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.6 MB (157636927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70b0e5613ad040046f232e7d3b6ce2b0afceb14e30572a068867b35c3bed9036`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 17:44:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 17 Jul 2026 17:44:27 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 17:44:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 17 Jul 2026 17:44:27 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 17:44:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 17:44:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 17 Jul 2026 17:44:29 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 17 Jul 2026 17:44:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Jul 2026 17:44:29 GMT
CMD ["sh"]
# Fri, 17 Jul 2026 18:10:04 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 17 Jul 2026 18:10:05 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 17 Jul 2026 18:10:05 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 17 Jul 2026 18:10:08 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 17 Jul 2026 18:10:08 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 17 Jul 2026 18:10:08 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 18:10:08 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Jul 2026 18:10:08 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 17 Jul 2026 18:10:08 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Jul 2026 18:10:08 GMT
CMD []
# Fri, 17 Jul 2026 19:10:16 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 17 Jul 2026 19:10:16 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 17 Jul 2026 19:10:16 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 19:10:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 17 Jul 2026 19:10:17 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 17 Jul 2026 19:10:17 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 17 Jul 2026 19:10:17 GMT
USER rootless
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4bca40d1621177e42666ab887d0f6ca345c995e355a428da7ac0ce2e8571e7e`  
		Last Modified: Fri, 17 Jul 2026 17:44:35 GMT  
		Size: 8.2 MB (8183895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ed991c3407734090991a34aabead0489cf46636644e343b20e319235c22054`  
		Last Modified: Fri, 17 Jul 2026 17:44:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95cf85cd457408bc0aea50da42888ebe34693d1dec9b72ad2fb07426a1db0c8c`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 19.4 MB (19439839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0e863cd1174c61488640f554d09a352dd5eb14bb615b05ab1367c85962a5e0`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 23.0 MB (23036803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f652b3a9b954fbeac7281affd2ff0b6166f8206b30706ff13ce4190cb1d4bc00`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 11.3 MB (11322404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a981d3a51fca9a43aa365309a5a2fb458eb827ba0d05150aebdefff9659c990a`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a1935ee7eb6d33d4327bf1e5d6f3b1732c08bed5a2f53c4bdb6ac5206111045`  
		Last Modified: Fri, 17 Jul 2026 17:44:37 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb1fafed6a71588741dec0a89312811923c899e894da8e1ccd0ae6a45a415eb0`  
		Last Modified: Fri, 17 Jul 2026 17:44:37 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3accc21d0fe46e882dc9b45378b590c97d4740199a5f931d9ee6cd962dab4a5`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 7.0 MB (6965272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c4bbcb0507cec1f95f104c8abc98db952854e05e3b74e3f61500700e33db69`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 91.3 KB (91331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4934f46de013658c733613a884c2824e88b2b378c4b10a75e81c30c148fc3eb9`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64617ecef95031b30deb46af9a15d7b53b7bc0a18ceae6c7b970b6a168a968e8`  
		Last Modified: Fri, 17 Jul 2026 18:10:20 GMT  
		Size: 69.2 MB (69163183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80d074f6a6f4ce8e4bd5c68301adb03f3ba13f92597c1dbe8ff742f70d8fd56`  
		Last Modified: Fri, 17 Jul 2026 18:10:19 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402de1dcda06ed5dc2e5a0f8a4ea1d34da6f62d6213744c92a9654e8c25e8b60`  
		Last Modified: Fri, 17 Jul 2026 18:10:19 GMT  
		Size: 3.3 KB (3302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d1c924434eff4e9ff6f7aa0a33294399192a52e7eabacb4f81ed35233135db`  
		Last Modified: Fri, 17 Jul 2026 19:10:22 GMT  
		Size: 3.5 MB (3471281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efdded5a014631840ff2807dcc50326f789e2dc2366dd5ab00cad8996175d259`  
		Last Modified: Fri, 17 Jul 2026 19:10:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a1cb7acb94a6958f90d00bb0c5c18134d24979935c8b4dd2c85ecd99f9db6e`  
		Last Modified: Fri, 17 Jul 2026 19:10:22 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:594200067de4950ec4e8b637dc5a15e4a804de0b089d4fb50d107f377f3f6b65`  
		Last Modified: Fri, 17 Jul 2026 19:10:22 GMT  
		Size: 12.1 MB (12107031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5389f627d9cae419ff47b3ebdfc21d1c03a09303d8054357d6693ef488d8ab1`  
		Last Modified: Fri, 17 Jul 2026 19:10:23 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:4ff8c02859e2da07ff1ed75f79a45a51e2ad13abb082246a0d34cec4db0cb728
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5061f2f16fb9ed1fba806375e8e3b6928d293bf6281ab77a4ec999ceb59c94d7`

```dockerfile
```

-	Layers:
	-	`sha256:3795e22c4f52d8a9224b825b95fc883cfa47b0a0315c0d880dc556bc47601344`  
		Last Modified: Fri, 17 Jul 2026 19:10:22 GMT  
		Size: 30.5 KB (30493 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:d2afee4c9f10edff7ef6539c5ccb8ec544593e2a27ebf6b0a5b37bea4b6aec68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.1 MB (146077752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b17bc9fbc690b2a886d6cc1ac4c83ce486a19236411c0e13e87f3eabf756f7d2`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Fri, 17 Jul 2026 17:44:23 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Fri, 17 Jul 2026 17:44:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Fri, 17 Jul 2026 17:44:26 GMT
ENV DOCKER_VERSION=29.6.2
# Fri, 17 Jul 2026 17:44:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Fri, 17 Jul 2026 17:44:26 GMT
ENV DOCKER_BUILDX_VERSION=0.35.0
# Fri, 17 Jul 2026 17:44:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-amd64'; 			sha256='d41ece72044243b4f58b343441ae37446d9c29a7d6b5e11c61847bbcf8f7dfda'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v6'; 			sha256='5938b81dc6203361bb984e961fc0afbcdc2bf05c5a666ec093ea99e612de616c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm-v7'; 			sha256='e1fe67cbe2d5a7b242e5f732a9708e6abaa6d19d717e65bfbd1d13baa8669d1f'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-arm64'; 			sha256='c4248d6cbc4a619a7e0b4609c11e509ad4ac0b475e1c64817c0ac20c5d90c766'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-ppc64le'; 			sha256='bcee77464deb25cfd0b905d4d871b0aad1b1164d6bcdf8b2fd8b1adb1db021c3'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-riscv64'; 			sha256='3ecaf173eb24402ba29e9d3b7ddac4bde259a3a54e98112077014918ab49f61f'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.35.0/buildx-v0.35.0.linux-s390x'; 			sha256='ef1738f3c70166e968d1bca3f853dbc515a3aa7ffa82f1a2ded033a050cd3203'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Fri, 17 Jul 2026 17:44:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.3.1
# Fri, 17 Jul 2026 17:44:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-x86_64'; 			sha256='f9ebc6ebdb19d769b793c245a736caaeb198c62587f13b25c660c13b4987f959'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv6'; 			sha256='899607529e5e752cbdaec84b73e994378cf8f27f3d626a5a6df56f7511c00304'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-armv7'; 			sha256='69276acb37ea70023cf85a8180e869c0cfc8cb5a3e672821400aa58dea56e2e8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-aarch64'; 			sha256='aa611e811d0ea25897839c404bfb5bf93ce706dc51c500a4457890f5d0606a86'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-ppc64le'; 			sha256='3280a0dcc7874c2a564ca1224c5669364bc1a5d83ae7153a9c0182fd76fd2102'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-riscv64'; 			sha256='e237f165e0fd5472d147db274f0fb5dcdaab4384c36634178307f4c8e965d904'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.3.1/docker-compose-linux-s390x'; 			sha256='3889c8d1677bee347297c8f0a73bc517b5c35da18781812942aef8a87eac9011'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Fri, 17 Jul 2026 17:44:28 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Fri, 17 Jul 2026 17:44:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 17 Jul 2026 17:44:28 GMT
CMD ["sh"]
# Fri, 17 Jul 2026 18:10:03 GMT
RUN set -eux; 	apk add --no-cache 		btrfs-progs 		e2fsprogs 		e2fsprogs-extra 		git 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xfsprogs 		xz 		zfs 	; # buildkit
# Fri, 17 Jul 2026 18:10:04 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Fri, 17 Jul 2026 18:10:04 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.6.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.6.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 	; 	rm docker.tgz; 		dockerd --version; 	containerd --version; 	ctr --version; 	runc --version # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Fri, 17 Jul 2026 18:10:07 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 17 Jul 2026 18:10:07 GMT
VOLUME [/var/lib/docker]
# Fri, 17 Jul 2026 18:10:07 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Fri, 17 Jul 2026 18:10:07 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Fri, 17 Jul 2026 18:10:07 GMT
CMD []
# Fri, 17 Jul 2026 19:10:00 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Fri, 17 Jul 2026 19:10:00 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Fri, 17 Jul 2026 19:10:00 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Fri, 17 Jul 2026 19:10:01 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.6.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.6.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Fri, 17 Jul 2026 19:10:01 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Fri, 17 Jul 2026 19:10:01 GMT
VOLUME [/home/rootless/.local/share/docker]
# Fri, 17 Jul 2026 19:10:01 GMT
USER rootless
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a509af1eaedfec9adc29a4cd8cf1cc2ce4881d8a1bd210d44cf9104916245f51`  
		Last Modified: Fri, 17 Jul 2026 17:44:34 GMT  
		Size: 8.2 MB (8235028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ed991c3407734090991a34aabead0489cf46636644e343b20e319235c22054`  
		Last Modified: Fri, 17 Jul 2026 17:44:33 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78fa7bd619410dc70e752b3f30c5d810f0e9627137551fb66e80191aab3fb241`  
		Last Modified: Fri, 17 Jul 2026 17:44:34 GMT  
		Size: 17.9 MB (17891567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b2092a03e1c942332e98cc6bb4fddd491947195a9d91ce3949e53f2cc0c932`  
		Last Modified: Fri, 17 Jul 2026 17:44:34 GMT  
		Size: 20.9 MB (20856356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd3c2c7360884cc2b046c9274f87aec39d37dc1bb5fc552f29502f4878edf13e`  
		Last Modified: Fri, 17 Jul 2026 17:44:35 GMT  
		Size: 10.3 MB (10290362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd7f8edfab6786274a43561bcfb967240221db0d5aedda1d5d1faf24290dd16e`  
		Last Modified: Fri, 17 Jul 2026 17:44:35 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1282f4d9081def5344f35dd3ec9cc7fae352d76760f60f0d6d1c258f3002f075`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7482c0e495657e9686e4a52220612acf918336dcc48ae557db6a9ffdf1a5f81`  
		Last Modified: Fri, 17 Jul 2026 17:44:36 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bde4e0a6c99921e91df1924465e17eacf653e4d4b2b7a3d7906667d1e57161`  
		Last Modified: Fri, 17 Jul 2026 18:10:17 GMT  
		Size: 7.2 MB (7240507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd8ee5e404a27ab30384d971d5992f1cd6dd42cce3b638ff0a6d773c90db185`  
		Last Modified: Fri, 17 Jul 2026 18:10:17 GMT  
		Size: 99.9 KB (99944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52029299b87ec88b82468431f98c0af1abea6f23927eb90402afc7062e44661f`  
		Last Modified: Fri, 17 Jul 2026 18:10:17 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d291428c0087dce73ae021e1153979d804d6d484d32b4f2f67db7a3054c8d220`  
		Last Modified: Fri, 17 Jul 2026 18:10:19 GMT  
		Size: 62.6 MB (62582460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bac510f506698b94f20a75b6635982f73c2bd8e1e5edea155e82d4dc0c56b9e`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd405c3207614a1c140c84fe866843057fd62edbafae914f6c9c91ddc8705a5`  
		Last Modified: Fri, 17 Jul 2026 18:10:18 GMT  
		Size: 3.3 KB (3300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5d6008cb863f0a5ec40b3b4af9096b7c56645ad454059c0d478c16e359d89a`  
		Last Modified: Fri, 17 Jul 2026 19:10:06 GMT  
		Size: 3.4 MB (3448906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90fc03b90863ff522f1b15194f68b112912af0b2a95751d2b43df0d3b5050dd8`  
		Last Modified: Fri, 17 Jul 2026 19:10:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1d1b50921e8b1a12872c04b8166b8eec516298105f63bddfe090fd177d62aea`  
		Last Modified: Fri, 17 Jul 2026 19:10:06 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e7333994ba1628e012a4b379ee4e95626cd596a8541208834d167cf50754a7`  
		Last Modified: Fri, 17 Jul 2026 19:10:06 GMT  
		Size: 11.2 MB (11240087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67139d260358c1b87125abb5e5c26ac8db2733b1c888a9c34c20cfa171bbc3dd`  
		Last Modified: Fri, 17 Jul 2026 19:10:07 GMT  
		Size: 188.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:f20d92eb4f64009d80df0e604adc15e6e1fb3f4fc957348882239b3c12a57fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8332011b660ccc4fd23f57f5ede23ea7488d4cc6f8ce8301ca5a39d0d49d79c9`

```dockerfile
```

-	Layers:
	-	`sha256:4674c6b5c88b0769d5830dc8c14af242b3d2ddb2397c2d2fce27e05abde50c70`  
		Last Modified: Fri, 17 Jul 2026 19:10:05 GMT  
		Size: 30.7 KB (30657 bytes)  
		MIME: application/vnd.in-toto+json
