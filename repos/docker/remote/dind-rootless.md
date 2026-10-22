## `docker:dind-rootless`

```console
$ docker pull docker@sha256:4a1ff6e6733b687db4ce99bf7e908b2a991c3ca1affc6d79a511c27537599df1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `docker:dind-rootless` - linux; amd64

```console
$ docker pull docker@sha256:e1c31ace384338f30fa76546f70e824f0bf39c31d1844d7908e0efa4f69af8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.8 MB (137756536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a497e4771c7f4b43bb1f87d435e5f9a03a08cfcd847ec278197250379681285`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:45:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 22:45:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 22:45:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 22:45:37 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 22:45:37 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 22:45:37 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 22:45:39 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 22:45:39 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 22:45:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 22:45:40 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 22:45:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 22:45:40 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 23:23:14 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 23:23:15 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 23:23:15 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 23:23:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 23:23:18 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 23:23:18 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 23:23:18 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:18 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 23:23:18 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 23:23:18 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 23:23:18 GMT
CMD []
# Thu, 22 Oct 2026 00:13:19 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Thu, 22 Oct 2026 00:13:19 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Thu, 22 Oct 2026 00:13:20 GMT
VOLUME [/home/rootless/.local/share/docker]
# Thu, 22 Oct 2026 00:13:20 GMT
USER rootless
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71b0c095ee8f31ff0a9447309e85f808367b1122c75e0356ff231a722d87655`  
		Last Modified: Wed, 21 Oct 2026 22:45:47 GMT  
		Size: 8.2 MB (8199971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffe68be57c630fbaa214ba63287e4d95925608af1f8135029c889faba1fd4f9`  
		Last Modified: Wed, 21 Oct 2026 22:45:47 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:335f14bb4f7daee1feb8e7e8cfe9df0f5a40f77513d6d250f91b1c2e14ad495f`  
		Last Modified: Wed, 21 Oct 2026 22:45:48 GMT  
		Size: 20.3 MB (20288202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552fcdedd26330070ccaa40f0323894f649d8243ac86ced87ccbb5740be54c88`  
		Last Modified: Wed, 21 Oct 2026 22:45:48 GMT  
		Size: 23.8 MB (23824472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07dfa8df4d19a6df163cb82622dcd15c33380a9453936fed2450ebbd1234d06`  
		Last Modified: Wed, 21 Oct 2026 22:45:48 GMT  
		Size: 11.3 MB (11308822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b815a471d8d9c1447a7b722f089fb5637da5551fac7f77ff6d77fade03f9c68`  
		Last Modified: Wed, 21 Oct 2026 22:45:49 GMT  
		Size: 540.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee498a1860a58ca22c70842c8452e40a4a17054dca5632cf144c188f39bf42cf`  
		Last Modified: Wed, 21 Oct 2026 22:45:49 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4566122f6780524803d9c99f3972356f9f4376af28b34ed139882644e0bd52`  
		Last Modified: Wed, 21 Oct 2026 22:45:49 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42cfa6127b3b8086154d09ef8f3db7a0fa4c613c2d0d6f65f8054642621d92b`  
		Last Modified: Wed, 21 Oct 2026 23:23:27 GMT  
		Size: 1.5 MB (1497363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a55a75a1a2afdbf660056feb476d9c71ab74cf432d0554f52a8cace30f8576d`  
		Last Modified: Wed, 21 Oct 2026 23:23:27 GMT  
		Size: 81.0 KB (81049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc42f9148672f16d61df1d1cb91a875037bdbbfaf0a71a2cec5035bec97e5b05`  
		Last Modified: Wed, 21 Oct 2026 23:23:27 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33883f23fecac1b82ba9b2047e4742d134cc0fd0d71ecfe59e39017f6d034321`  
		Last Modified: Wed, 21 Oct 2026 23:23:29 GMT  
		Size: 52.9 MB (52945010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fccb65b60fa570fb57495df30a32ce5b07368abe6bac5d07eccbe3c2d1d054b1`  
		Last Modified: Wed, 21 Oct 2026 23:23:28 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08baed64d192dec04c7d925959c3cdfe064529d03f145ec54947fd67bcbfd782`  
		Last Modified: Wed, 21 Oct 2026 23:23:29 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d793a6d1c37f02dc5b7fab91eb83f211c65d80ce35a248cdd43190f21146ce22`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 3.6 MB (3626247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecf25a778d350a7b4672a56d70bd320f6b34ca1c66cfc5a2c4c71ef4bc349af5`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f82eadf8cd2d7586260d310b44b5a0dd5820174cda83b8844a0e2cd9fcf01e`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc7843a0e59831bc9aec4c8b69bb3283c338885573188cf5302ae30509e9f07`  
		Last Modified: Thu, 22 Oct 2026 00:13:26 GMT  
		Size: 12.1 MB (12122791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ee0346bf5d981f277616d1aeaf407784e1c200b0d038eab0b49ac7c2fc1218`  
		Last Modified: Thu, 22 Oct 2026 00:13:27 GMT  
		Size: 187.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:811538cb9ab282846babdd925a82036e111520f49f756b47b234778dab53e874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a3f58263c430bb2c52bce3e94610c53b72b2d391790bb23b8cbadd7820b100e`

```dockerfile
```

-	Layers:
	-	`sha256:e40abc0b31bee4d430826a985bb8402aa8aa637f6f8c8b7908f2be817c2ded86`  
		Last Modified: Thu, 22 Oct 2026 00:13:25 GMT  
		Size: 30.5 KB (30492 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:dind-rootless` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:ab0f299ee64d2b1cf953acc9f4ab7e04ff82972d83918e1d34e7f9e53263307a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130580572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da4d903f226545958d36ed07610dc219212641fa416033a4d5267bbeb99a5859`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 12:27:08 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 21 Oct 2026 12:27:09 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_VERSION=29.9.2
# Wed, 21 Oct 2026 12:27:11 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 21 Oct 2026 12:27:11 GMT
ENV DOCKER_BUILDX_VERSION=0.38.1
# Wed, 21 Oct 2026 12:27:12 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-amd64'; 			sha256='e25d5cd675092bb5d1d03632fdc46cdf3fede7b514dc5f023a105e00d3ce5ad4'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v6'; 			sha256='a1d906b59689858d11e951701b2ce8fc76215d22df416f00e65da5b86be908b8'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm-v7'; 			sha256='9b7cbbf641caedc5fed87d1132aa4be45c74cfd6c502af48a9286e64b5f9e704'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-arm64'; 			sha256='3b83b3731916ba433feccaaa689fe5bcdc81c641d92c8e6c2ea865dfa141c97a'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-ppc64le'; 			sha256='7f1fdd2c9b81513b2feab5c8222842bae80cd4b919facadbc2bf485d3b0708fd'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-riscv64'; 			sha256='a5fc405944c4aaa4bb69d5f40c830de4d52dd84230841f46939603c84edb3ff3'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.1/buildx-v0.38.1.linux-s390x'; 			sha256='154b7faa9ecc6fceac2f486928815124bd794f25b3aceb7c15c51687be274204'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 21 Oct 2026 12:27:12 GMT
ENV DOCKER_COMPOSE_VERSION=5.6.1
# Wed, 21 Oct 2026 12:27:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-x86_64'; 			sha256='47737f4236e6d3ccea7291995203f8f018058783b4c3a9469119811a0b5db8c0'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv6'; 			sha256='bf1573bca672a535409fca7d6a53d836554fd90b76c27e0c3830a8a431517ecd'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-armv7'; 			sha256='e2ed79b41693f5e6473eb9c1005bd4cbb83844d8220ac72fe5c6a6cc5e0bfee8'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-aarch64'; 			sha256='42cfa75f51ad0ccf290bad37899e0038a8c10a0069e85233ecc1d53e3ff1347d'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-ppc64le'; 			sha256='2af4a1b5890fcf4830029d85c01d94ca7b8add96edc5b32bf8d598438be75840'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-riscv64'; 			sha256='e9af542c3a5ee961130c316b9a43b08e359503ab0efebf50980e57d92bd883fc'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.6.1/docker-compose-linux-s390x'; 			sha256='b91bf1ab1a15d7e7863002a796e7a41937e5fb77b9e4826e7a38d7216958d850'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 21 Oct 2026 12:27:13 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 21 Oct 2026 12:27:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Oct 2026 12:27:13 GMT
CMD ["sh"]
# Wed, 21 Oct 2026 13:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 21 Oct 2026 13:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 13:08:48 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.9.2.tgz'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.9.2.tgz'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 21 Oct 2026 13:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/docker/docker/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 13:08:49 GMT
VOLUME [/var/lib/docker]
# Wed, 21 Oct 2026 13:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 21 Oct 2026 13:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 21 Oct 2026 13:08:49 GMT
CMD []
# Wed, 21 Oct 2026 14:10:11 GMT
RUN apk add --no-cache iproute2 fuse-overlayfs slirp4netns # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN mkdir /run/user && chmod 1777 /run/user # buildkit
# Wed, 21 Oct 2026 14:10:11 GMT
RUN set -eux; 	adduser -h /home/rootless -g 'Rootless' -D -u 1000 rootless; 	echo 'rootless:100000:65536' >> /etc/subuid; 	echo 'rootless:100000:65536' >> /etc/subgid # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-rootless-extras-29.9.2.tgz'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-rootless-extras-29.9.2.tgz'; 			;; 		*) echo >&2 "error: unsupported 'rootless.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'rootless.tgz' "$url"; 		tar --extract 		--file rootless.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		'docker-rootless-extras/rootlesskit' 	; 	rm rootless.tgz; 		rootlesskit --version # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
RUN set -eux; 	mkdir -p /home/rootless/.local/share/docker; 	chown -R rootless:rootless /home/rootless/.local/share/docker # buildkit
# Wed, 21 Oct 2026 14:10:13 GMT
VOLUME [/home/rootless/.local/share/docker]
# Wed, 21 Oct 2026 14:10:13 GMT
USER rootless
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef63590b461b3dc6f5c2dc50256d67877549d4ac743ab34c214f95da8100e4e`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 8.3 MB (8258866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f76f8a08fefc947930e0171d547df5c725c1451de40b54e20ab10b8ca5fcfb4`  
		Last Modified: Wed, 21 Oct 2026 12:27:19 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50d8a42ba736eeac46f90734f552432a9a1c4f8826c9a00b36b50d78c12e39bd`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 18.7 MB (18674885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4b982c7e88aa9c2ae124d4893b6853c14aa54cf3b4b750eba4438867ad05b7`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 21.6 MB (21574391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc445e8b84267516627d1fff7016f952f7aa821052f75fead4031b8fcca9dc3`  
		Last Modified: Wed, 21 Oct 2026 12:27:20 GMT  
		Size: 10.3 MB (10280864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54fc373241347335a46db60ec5a65c058684f589129ed44d7595882b605cd96d`  
		Last Modified: Wed, 21 Oct 2026 12:27:21 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a09ceca05c4adedc887ff1d041c65f00d39403119ea27afbf983648943633a9`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:109a1dcd3999028209666424b80a0a5a249dea415896b724da780c58a9190d31`  
		Last Modified: Wed, 21 Oct 2026 12:27:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50da2a27ff9de9cd16b66eb373fe35ff976e78c65ea0547818ef3f3165d4de62`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 4.6 MB (4624672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb903c3aa174b3c53e18c5fa0ab3069b509e991d01149ca8cc60ed8c4d15ce5`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 90.4 KB (90426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9033831ce93c76892e7ca429ee1d63b07ac92c5246a0ea619195a69d3d583d21`  
		Last Modified: Wed, 21 Oct 2026 13:08:57 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f710114875cec805f72aba5fb381a259e4d98895fa11a13028f137fb2622275`  
		Last Modified: Wed, 21 Oct 2026 13:08:59 GMT  
		Size: 48.0 MB (48012435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a5966808314e624916452777a1022384c42614c2921bcfe18c943a5d1543e2`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe537586fb6ceaaee0e25c00d81b861ce5aae588c9e6de8d5348a0291be8dbb`  
		Last Modified: Wed, 21 Oct 2026 13:08:58 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa91dced94752f894d9b70b0ebee6991baae423df9229fcea57b09ea096652c2`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 3.6 MB (3611320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f05b3bee5a16867a49fe216680c826959a1e6b29112df054feb30d9d3710a1f`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78f2a1e01753bc879b60d199e5b827c6979881693f2b74734e9ae39de588126d`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf5ec45094ca049f45163844b046941f1f59e38ac13c10fed66f5f3fd1d0a33`  
		Last Modified: Wed, 21 Oct 2026 14:10:19 GMT  
		Size: 11.3 MB (11255543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bc26a39a30971dfcc76361a27ccccd694dab434b66a62a28da89c03f57ed11a`  
		Last Modified: Wed, 21 Oct 2026 14:10:20 GMT  
		Size: 189.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:dind-rootless` - unknown; unknown

```console
$ docker pull docker@sha256:32cea58fdea507f33ea3c1e53124b43c1b234d654476f77ebbbda4d2a8797d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 KB (30656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a4bc175d12f23bf92afce3027a8d177f574098c94690f1c9da1364813671fa`

```dockerfile
```

-	Layers:
	-	`sha256:e448bc44f86fc497ccb149b97d6a290d254cce7734a5477e403971c7de8d83ee`  
		Last Modified: Wed, 21 Oct 2026 14:10:18 GMT  
		Size: 30.7 KB (30656 bytes)  
		MIME: application/vnd.in-toto+json
