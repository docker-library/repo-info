## `docker:rc-dind`

```console
$ docker pull docker@sha256:4cceaa64e4d2e4c0cc49030644a3ffad19023ba5a845713c2e0354f99e791531
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `docker:rc-dind` - linux; amd64

```console
$ docker pull docker@sha256:97b9f78c254e9cd9387a66404836e47317221b8a66e4a0b2f2327020588846f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114606621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2c3725636d6df374486a025a3c748721ba534ae60b962fc6e5c41ec860448c`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:28 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:29 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:29 GMT
CMD ["sh"]
# Wed, 11 Nov 2026 01:08:26 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 11 Nov 2026 01:08:27 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 11 Nov 2026 01:08:27 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 11 Nov 2026 01:08:29 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 11 Nov 2026 01:08:29 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 11 Nov 2026 01:08:29 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 11 Nov 2026 01:08:30 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 01:08:30 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Nov 2026 01:08:30 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 11 Nov 2026 01:08:30 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Nov 2026 01:08:30 GMT
CMD []
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f907f544917046dc83f34908bf4bad270cc139296df12f0c46697810bfa5f8`  
		Last Modified: Wed, 11 Nov 2026 00:39:36 GMT  
		Size: 8.2 MB (8204375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:483008aafa899b1c01cc62dddef6e09021e956346b07890cb5eab39953019de5`  
		Last Modified: Wed, 11 Nov 2026 00:39:35 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:994aaeac527553b6dadd41a65e24660d6440874a4187b340bc15166492294239`  
		Last Modified: Wed, 11 Nov 2026 00:39:36 GMT  
		Size: 11.3 MB (11260509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c079e08c34ea4f5e1bbefeb02a2987b37e2e01c31fd98a617638263ecb63e725`  
		Last Modified: Wed, 11 Nov 2026 00:39:36 GMT  
		Size: 23.8 MB (23826418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ddd4a01595abdc01efe9091ed290a1713745fd1a096aabaf2aec152fc534b0c`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 11.7 MB (11655773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77aa4e2ffd7fca97bb13313ba775a1ef4b9313180e06b5ee12f14f7fd2525cc`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9c35a9d726e9215d475d80c005e8f8ce3d536edbc6faa45d855b55ad0caf84`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e60ef0245ef44ccff83199809437857f7ae03598a3fd2d39acdae290199e214f`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f54351d9c2764c49820ae8997406f21971fc4444c3852293912a7db71f6feb8`  
		Last Modified: Wed, 11 Nov 2026 01:08:38 GMT  
		Size: 1.5 MB (1497337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2430fb33c8a9cb3688f234b994aaa1f5bf34b3617d6c59716c2d778b8f277669`  
		Last Modified: Wed, 11 Nov 2026 01:08:38 GMT  
		Size: 81.1 KB (81062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e84848e2a0ddeace40fe15e09b5c37601d99c9b49744ebf2f866c67f02833e9`  
		Last Modified: Wed, 11 Nov 2026 01:08:39 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300ee5148b22d88a777c8e30611d08503e76db7229a8f45858e546ec6ec362f7`  
		Last Modified: Wed, 11 Nov 2026 01:08:40 GMT  
		Size: 54.2 MB (54219313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d3793b221e5fedcb127ee3fad8f330adc7eb5f77d150953e1175c0186311a8`  
		Last Modified: Wed, 11 Nov 2026 01:08:40 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:233d2ae61d2f04359eed914dd751116187b51f51f1c0a4551a2a9399a2c7f80f`  
		Last Modified: Wed, 11 Nov 2026 01:08:40 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:8d18a3bc261817498a12a5df6d2582f57f400375644907a4569f7226cf76a99d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 KB (36256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d020a7c78ed7da1952f051dd16c6fd9235105639176207f7b8aededf8660d4c`

```dockerfile
```

-	Layers:
	-	`sha256:7e565cc5cbec9a972762a7da80780ea264eb3a6f09fb5055060973b777f3512e`  
		Last Modified: Wed, 11 Nov 2026 01:08:38 GMT  
		Size: 36.3 KB (36256 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; arm variant v6

```console
$ docker pull docker@sha256:8ff99114437279495a70d9a8d87b056b82168b2aad530e3e61c6bb9647aa0181
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108295923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8bd656ba4c04d04896d904335418bb367b5141ae4cc01a106e635591ecccfe9`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:13 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:13 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:18 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:18 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:18 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:21 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:21 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:22 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:22 GMT
CMD ["sh"]
# Wed, 11 Nov 2026 01:07:53 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 11 Nov 2026 01:07:54 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 11 Nov 2026 01:07:54 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 11 Nov 2026 01:07:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 11 Nov 2026 01:07:59 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 11 Nov 2026 01:07:59 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 11 Nov 2026 01:07:59 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 01:07:59 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Nov 2026 01:07:59 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 11 Nov 2026 01:07:59 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Nov 2026 01:07:59 GMT
CMD []
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bc0af122774ce77c2a3f2eed26fe08410418139dbb3bd611ab739a37280587`  
		Last Modified: Wed, 11 Nov 2026 00:39:29 GMT  
		Size: 8.1 MB (8108024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f56fd6b8e02b3da802fbbff64d538f07ca904d0cf72ce69eb4eb88a4f95b8de`  
		Last Modified: Wed, 11 Nov 2026 00:39:28 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412c09aea183069058557e3aefc0e57627dfc1b74d4b48af84e057c7f1a807f4`  
		Last Modified: Wed, 11 Nov 2026 00:39:29 GMT  
		Size: 10.7 MB (10687353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea1f3d807e6ba5e2f2b25aa69e345818198ed06bddb37bdc14bf2987ec726dc`  
		Last Modified: Wed, 11 Nov 2026 00:39:29 GMT  
		Size: 22.4 MB (22399448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99225714be73acc4a0a3f1fad2ed4fc598b0cf49ca7b9491e696f91564432d4a`  
		Last Modified: Wed, 11 Nov 2026 00:39:30 GMT  
		Size: 11.0 MB (11047591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd087c6c41fb9613375a89313887f9dc13f1cd0d8745e9876a0791a623c936a8`  
		Last Modified: Wed, 11 Nov 2026 00:39:30 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae999420d8e0872542eb21bcaf6b578e200dadd285e504a1ce61f862af1c0c91`  
		Last Modified: Wed, 11 Nov 2026 00:39:30 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9ec4abe87ec4be11540b28062f7e4ae77a66aa423f5583f5b81ca9328386af`  
		Last Modified: Wed, 11 Nov 2026 00:39:31 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:178c23ab02ec574088fc5a7b6a4804dde01dd62510b12ab61391c269784c9a89`  
		Last Modified: Wed, 11 Nov 2026 01:08:08 GMT  
		Size: 1.5 MB (1498720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9bb92217d62326d48383875f7e433c5b4e80f54a230d73f828bd12111c6b7cc`  
		Last Modified: Wed, 11 Nov 2026 01:08:07 GMT  
		Size: 79.7 KB (79738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04f0ae6cc0f1db37cbe23e6a21197af7da4d397b63fe4b214bdbd71c74a8e2c1`  
		Last Modified: Wed, 11 Nov 2026 01:08:08 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80d67caa1bda66312a42a4a9acf712301762d31b18a68d3b55f47a490ca9142`  
		Last Modified: Wed, 11 Nov 2026 01:08:09 GMT  
		Size: 50.9 MB (50908489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2817908527b3198fcf3b16b45d4004d8c5ac98baf046c1c68a7213d4ff3be607`  
		Last Modified: Wed, 11 Nov 2026 01:08:09 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f69b0bbb94ae02dd046a8d34262c7c7b385d50c79a91c35e45d7d266de47445a`  
		Last Modified: Wed, 11 Nov 2026 01:08:09 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:8b9ea20d2adaf71858d552ef89ccb6a4c8d456afc31245fcff9ba0b217009d20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 KB (36419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9600ffc84b6340559e023ef99fabc03cf0b8e3527d9e3d162cffe6f692aff4cb`

```dockerfile
```

-	Layers:
	-	`sha256:dfb3d39309b11a881c38d95522b893bd4e4f2d7adb31cb885adfa62e8f31c473`  
		Last Modified: Wed, 11 Nov 2026 01:08:07 GMT  
		Size: 36.4 KB (36419 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; arm variant v7

```console
$ docker pull docker@sha256:b46f047cf89a2d012841afae01579713ae86614746df5065a7d67a7aac9e987c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (106978894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8afe636e08871cd3574f4848e405ff09fe823fef8bb415e9cc714a8794a217c6`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:22 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:22 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:23 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:27 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:31 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:32 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:32 GMT
CMD ["sh"]
# Wed, 11 Nov 2026 01:07:18 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 11 Nov 2026 01:07:18 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 11 Nov 2026 01:07:18 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 11 Nov 2026 01:07:22 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 11 Nov 2026 01:07:22 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 11 Nov 2026 01:07:22 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 11 Nov 2026 01:07:22 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 01:07:22 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Nov 2026 01:07:22 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 11 Nov 2026 01:07:22 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Nov 2026 01:07:22 GMT
CMD []
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbd92c365cc5c9cc3a3845cd76b457907d9dcacdbb0fab2b738057e53079546`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 7.4 MB (7403593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:325ff25a9752a736ffc682465e3a6af454832286760927f2003de9ff20e193e8`  
		Last Modified: Wed, 11 Nov 2026 00:39:37 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0a2d0d19e3b3a207ece6185f104867878670a2a0edd58305b869a197d91fb8`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 10.7 MB (10673878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1834d3c15fec4eb02a89f794b140334a16376ea3173e547fdd50e40ae8cea60`  
		Last Modified: Wed, 11 Nov 2026 00:39:38 GMT  
		Size: 22.4 MB (22376965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:debd750d9aba7991c54d3a153fda3728bbe63ce4f152ebb7ddeabee43dc4f161`  
		Last Modified: Wed, 11 Nov 2026 00:39:39 GMT  
		Size: 11.0 MB (11032556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4896e4205a25fbe17c84cff4039ff4fa6641bc93f0501580a966b87f9ec72309`  
		Last Modified: Wed, 11 Nov 2026 00:39:39 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1219c8d1568b23d85eec6f2d31117f941d24e2e39d841b6cadd20575e4a9a302`  
		Last Modified: Wed, 11 Nov 2026 00:39:39 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ada764693b71afe75663b0a4b6ee0aa735d38f0d5432cef68c1b83a12eace0`  
		Last Modified: Wed, 11 Nov 2026 00:39:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a0302ba9e5c05513536ea82c98464bd51252aa9685e8bc99b00943332ecb21`  
		Last Modified: Wed, 11 Nov 2026 01:07:31 GMT  
		Size: 1.4 MB (1384240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6ee6b19e989c47b907b227649367dfa1f3d6702a2c33bedb555d320597d8a19`  
		Last Modified: Wed, 11 Nov 2026 01:07:31 GMT  
		Size: 76.1 KB (76109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6349c934afa2cd27bf51ba2ba6e5aa941cafdc4a22529cf79f204abf72860304`  
		Last Modified: Wed, 11 Nov 2026 01:07:31 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19c6db87ac193f59d12a551251c6ec743fc81f93016d0a5a90d39e6675fcc3f3`  
		Last Modified: Wed, 11 Nov 2026 01:07:33 GMT  
		Size: 50.8 MB (50755656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02ce381997021911c0454e972226a1f0c2c6fdefebdb29ba2f34114723b62de`  
		Last Modified: Wed, 11 Nov 2026 01:07:33 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:122915566f96a91723b471ac46a74a2ef35f7a633e1f9556b2095ca4b5e42725`  
		Last Modified: Wed, 11 Nov 2026 01:07:33 GMT  
		Size: 3.3 KB (3307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:69728d016f61a546f3492eeac384994a95a375e220c73b06c20148568df9ed45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 KB (36420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a03b1987fb873a0a85e030c81123f013a63008204b6dce1457cef451a63caee`

```dockerfile
```

-	Layers:
	-	`sha256:d0251ed46aff069698e798af667bf5ae5b3dfabe992ed829ad46bfd11420626a`  
		Last Modified: Wed, 11 Nov 2026 01:07:31 GMT  
		Size: 36.4 KB (36420 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:7c98ebb98676cfabd168b5f59e6bd4d86843af5e63573fac0fc4748c120f16fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.9 MB (105913439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7739c6a9165e53bd7ec313fd9a78aef65f32bfa0acf0454cbf4326048e87fb5a`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:39:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:39:20 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:39:20 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:39:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:39:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:39:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:39:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:39:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:39:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:39:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:39:26 GMT
CMD ["sh"]
# Wed, 11 Nov 2026 01:08:13 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 11 Nov 2026 01:08:14 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 11 Nov 2026 01:08:14 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 11 Nov 2026 01:08:17 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 11 Nov 2026 01:08:17 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 11 Nov 2026 01:08:17 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 11 Nov 2026 01:08:17 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 01:08:17 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Nov 2026 01:08:17 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 11 Nov 2026 01:08:17 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Nov 2026 01:08:17 GMT
CMD []
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c22a51d336adebfc1d07cbae79567e682b879e37ef532137c83cb3817f9154`  
		Last Modified: Wed, 11 Nov 2026 00:39:32 GMT  
		Size: 8.3 MB (8264997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:566520f55a9acc4a25f43ca9a248fd23e4d0878c3bbc8afb57e0eee5ab420377`  
		Last Modified: Wed, 11 Nov 2026 00:39:32 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6752a4d515928b073be0b4e4b198da0f2b0056dff3677fac9abd7297d1bec5`  
		Last Modified: Wed, 11 Nov 2026 00:39:32 GMT  
		Size: 10.2 MB (10171487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e0ad39272e45f244c764a9659ebc611725748a06a29993828c3921896ce7b8f`  
		Last Modified: Wed, 11 Nov 2026 00:39:33 GMT  
		Size: 21.6 MB (21574099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75236307ace1d4a628788aff879df3f82fbde91860ffa5767c18979024579f30`  
		Last Modified: Wed, 11 Nov 2026 00:39:33 GMT  
		Size: 10.6 MB (10605368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949e5f0b038e61cd96cb85e22a8f7846af298f04c7274e32da2bae8888c9a8e8`  
		Last Modified: Wed, 11 Nov 2026 00:39:33 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c6d0dd9f81379df7dd8ea8b3fba95ea3f401de6fbfe2e398817f87e8f6d6781`  
		Last Modified: Wed, 11 Nov 2026 00:39:34 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcc2842875c55c5cb6f477ae51b7717e89b4e6fe8f78f5b5f24bb967d788067`  
		Last Modified: Wed, 11 Nov 2026 00:39:34 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4a4564f5f047549d93820d922d90631829b9875f3e103d3761ada81d293edc`  
		Last Modified: Wed, 11 Nov 2026 01:08:26 GMT  
		Size: 1.7 MB (1744480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3aba53bfa89e0bf7e837e1042c3980d465e6e902476a0781a48c388758b4f04`  
		Last Modified: Wed, 11 Nov 2026 01:08:26 GMT  
		Size: 90.4 KB (90354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eab338bb41a72e50effadd2e7031d9117fa94edaf48072fde196b1aa77b45f3e`  
		Last Modified: Wed, 11 Nov 2026 01:08:26 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e247d28b36fa89d9563495f1140ecc680b76d93447f84acd959006ca57dc826d`  
		Last Modified: Wed, 11 Nov 2026 01:08:27 GMT  
		Size: 49.3 MB (49263899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20c0267b1b0c20c49665211ab7a8f158cf16cfbd739d2ea58c95f67e8ed66b06`  
		Last Modified: Wed, 11 Nov 2026 01:08:27 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8628051046b82b4d6a86f957309032c8b67ffffa3c7420021ae982b4cee3ec7`  
		Last Modified: Wed, 11 Nov 2026 01:08:28 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:295764fcc9078617f1e385a239f770cd89906ba91aa939fab9a3b8a3d53e0526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 KB (36468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad99addf3340db17ffa170ceecc843fe2b677c055c9a0ce50150c15e63330647`

```dockerfile
```

-	Layers:
	-	`sha256:e758ce442f3936db0f3ed7cc6a56fcf05bf6b591517d3ec1be4e59ddc414e6e8`  
		Last Modified: Wed, 11 Nov 2026 01:08:26 GMT  
		Size: 36.5 KB (36468 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; ppc64le

```console
$ docker pull docker@sha256:a57fcf659d9dd7f4bb72e8da7201e9e279738669b8081d9fb46b494e1ad55a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106633316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4abc48c8e1fca7600315a7949e947f41e97d59fc319e3bd6b3d099804058c1e7`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:38:35 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:38:42 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:38:44 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:38:52 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:38:52 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:38:52 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:38:56 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:38:56 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:38:58 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:38:58 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:38:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:38:58 GMT
CMD ["sh"]
# Wed, 11 Nov 2026 01:07:43 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 11 Nov 2026 01:07:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 11 Nov 2026 01:07:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 11 Nov 2026 01:07:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 11 Nov 2026 01:07:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 11 Nov 2026 01:07:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 11 Nov 2026 01:07:52 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 01:07:52 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Nov 2026 01:07:52 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 11 Nov 2026 01:07:52 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Nov 2026 01:07:52 GMT
CMD []
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3902d8d015b761ad5cdcb053806d19276cc34e55254c10fa732259cbfe3851c0`  
		Last Modified: Wed, 11 Nov 2026 00:39:12 GMT  
		Size: 8.6 MB (8636653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76cb11d981ba7eb6bac12b26c411e7db6934b600840d8ff33f6224c72502334`  
		Last Modified: Wed, 11 Nov 2026 00:39:11 GMT  
		Size: 457.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25a3a54110fe0cdc6626b98aab40a389c46403bc592b4e1315903cb62c367bf`  
		Last Modified: Wed, 11 Nov 2026 00:39:12 GMT  
		Size: 10.2 MB (10202727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faedb7bba21ec2ca0e94eaed04a2342532c2d6c572296b5074477b93e782e052`  
		Last Modified: Wed, 11 Nov 2026 00:39:13 GMT  
		Size: 21.6 MB (21586350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e52bda3e45c293ac9937675f5c622d681a1b4971432adb817ab9a45f645d23`  
		Last Modified: Wed, 11 Nov 2026 00:39:13 GMT  
		Size: 10.6 MB (10631274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60997ec78b1b3f523deb517be2335d87c248f9a5178875eff836fcde4d8370b6`  
		Last Modified: Wed, 11 Nov 2026 00:39:13 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:372963b1f0071dc60a9dcf462b81ac129ddf19dff2811bf6906b4342b8093a30`  
		Last Modified: Wed, 11 Nov 2026 00:39:14 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90cfc9bc8d0e1f932b10dbc14570ffbb3d9f1351d8b9eca00a3c21992abed9c`  
		Last Modified: Wed, 11 Nov 2026 00:39:14 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c8f6494056987c87f4f45a42152b41ea477fe30683337675adec21f1940aa0`  
		Last Modified: Wed, 11 Nov 2026 01:08:05 GMT  
		Size: 1.8 MB (1836905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d5c010ca662bd6500a0ebd4ac4cc5cfaf787e1b5159e5c43a9c71c91ee3e3c`  
		Last Modified: Wed, 11 Nov 2026 01:08:05 GMT  
		Size: 92.2 KB (92235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97fa2cf76b647afc7cc75220cfb682d0ada649c8419d1c8cccb2b4dd7ba3c0ca`  
		Last Modified: Wed, 11 Nov 2026 01:08:06 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e371534ffbc4b774891882140b113aa7a8896f9f7ffe4f2bdf93001d98fdc2`  
		Last Modified: Wed, 11 Nov 2026 01:08:07 GMT  
		Size: 49.8 MB (49817090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e26e57f89453d17e3551f6f46cae1e78f49c1a6f76a93aae61365429e1c49d0`  
		Last Modified: Wed, 11 Nov 2026 01:08:07 GMT  
		Size: 1.7 KB (1687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66812da36ac35f088543c704b67ead09d99d06d724911a86aacd64a71f53415`  
		Last Modified: Wed, 11 Nov 2026 01:08:07 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:86e5b84e7ad1ae6dd2c6d87c7202fe8c9076ca99f6118f27ec8a36ba51a7627b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 KB (36332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4bb9c39d810becec64eabe88d2cbd68f1389c7bb632b57711b35b377e83c65`

```dockerfile
```

-	Layers:
	-	`sha256:de64ab388f79fa34cc8968a4caa0c10c3dfc58da83072812ecdfff4a1ae6b0f8`  
		Last Modified: Wed, 11 Nov 2026 01:08:05 GMT  
		Size: 36.3 KB (36332 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:rc-dind` - linux; s390x

```console
$ docker pull docker@sha256:cc502d3fab23d1d879104a2581b62871dff89fd092095941e1af7fda1fe42978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.3 MB (111269836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67c8fed3e8c224776bfc686444d484c02e6ddc6270b3f35a0989253d1611f124`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Wed, 11 Nov 2026 00:38:20 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Wed, 11 Nov 2026 00:38:20 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Wed, 11 Nov 2026 00:38:21 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Wed, 11 Nov 2026 00:38:24 GMT
ENV DOCKER_VERSION=29.10.0-rc.1
# Wed, 11 Nov 2026 00:38:24 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Wed, 11 Nov 2026 00:38:24 GMT
ENV DOCKER_BUILDX_VERSION=0.38.2
# Wed, 11 Nov 2026 00:38:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-amd64'; 			sha256='7992ec09413b80ff57ba4e081f56fc833d7bac1d5e71143c6c809e7e6065f6d6'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v6'; 			sha256='47c3eba42d0c55c5843193b3393ffb32dce4c266585232ead6d99a2c5480896c'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm-v7'; 			sha256='fb8c234f236baabe1f756fe5a0d68d39b58173fa96b38fc73fc4e5a0b78f9e49'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-arm64'; 			sha256='46c0f334772de3cb0b341cc415caf7339fb5cfc8b8438ebcb5a10e7f23800d36'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-ppc64le'; 			sha256='695822f3edbec94790fecc2d5d98de18733317a9b47b2cd76ebc150c4db09bad'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-riscv64'; 			sha256='b5333f39daeefdcc4f7e37e6c2ce82a116ca21714f3d14a0d1c77ccb7f2cb1a7'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.38.2/buildx-v0.38.2.linux-s390x'; 			sha256='fe1855c35f148aa9d84ebdc6e89af4f4173cf00c6672d799a607ed4177bfea4c'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Wed, 11 Nov 2026 00:38:26 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.0
# Wed, 11 Nov 2026 00:38:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-x86_64'; 			sha256='7758048ad38e580f22559603312874fec8bb638d021a9e64182385fc17cc12a2'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv6'; 			sha256='1d6589e2a9d6c6d5ad8e53491ea9e07cb8be45d6cbd44ba5575f38ada2dd5998'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-armv7'; 			sha256='d18e5c549fd3595b36846fe00d01e2af5a37d4baec7945c557a0abda9af63c91'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-aarch64'; 			sha256='15861535d14e26555736b49376c95e14bfd94285366c8446bfac7156a972e76f'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-ppc64le'; 			sha256='2f47de2439791611614ca3d23c1c4daf76f3842f2dca7d0b21c20cb1abb09557'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-riscv64'; 			sha256='0d069b424e703d1e7e79bc1cba46b6e51c0d915847ba88612add8117bf4239ed'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.0/docker-compose-linux-s390x'; 			sha256='8d7b4b5e61a7659d14a5cc2d16c6e2119b7113af1858b4879a7463707eee24ca'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Wed, 11 Nov 2026 00:38:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Wed, 11 Nov 2026 00:38:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 11 Nov 2026 00:38:27 GMT
CMD ["sh"]
# Wed, 11 Nov 2026 01:07:19 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Wed, 11 Nov 2026 01:07:19 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Wed, 11 Nov 2026 01:07:19 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Wed, 11 Nov 2026 01:07:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/test/x86_64/docker-29.10.0-rc.1.tgz'; 			sha256='d023bcab935f045548c5df79ea96d1f3fccbc091cf9a8347139154859f4767b8'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/test/armel/docker-29.10.0-rc.1.tgz'; 			sha256='55aedd3f6b42d8dd3e397358f0ca4fb321cb89cce325b9a239842866ecee3f8f'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/test/armhf/docker-29.10.0-rc.1.tgz'; 			sha256='d244956ea5ba6b9ca88acd24b6cc67ee5bd56c39f1d870a8d317ec472b0cc223'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/test/aarch64/docker-29.10.0-rc.1.tgz'; 			sha256='48348b68501015c3d9cc2c2a0344588eb0676cf68c38dd4ffd881a75e2d8662c'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/test/ppc64le/docker-29.10.0-rc.1.tgz'; 			sha256='1db34bee3e77a4af021631a5492b9385c3aafedd1b2aa3f693a60ca6760a3315'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/test/s390x/docker-29.10.0-rc.1.tgz'; 			sha256='78546fc2dcf04c7844e3e3f54b05485da64c852fceee453f2c8bac7b4ecd896b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Wed, 11 Nov 2026 01:07:23 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Wed, 11 Nov 2026 01:07:23 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Wed, 11 Nov 2026 01:07:23 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 11 Nov 2026 01:07:23 GMT
VOLUME [/var/lib/docker]
# Wed, 11 Nov 2026 01:07:23 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Wed, 11 Nov 2026 01:07:23 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Wed, 11 Nov 2026 01:07:23 GMT
CMD []
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21bf39b604d5c4670f5b21980fb391573f9bc2bacf88d176227cc0c2426e307d`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 8.5 MB (8500474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a25d1d3e064b78064f1a34b37d677373a6948771acbc7c543291e304710f2c2`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf66943b09874dede261f2104d9e0d8d019ec923db3bc17be4b9931438bbd0c`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 10.9 MB (10878318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a1b7d5d832bfb7f862453e884cd043762199f8db4d8e7baa02e726b9a270bc`  
		Last Modified: Wed, 11 Nov 2026 00:38:38 GMT  
		Size: 23.0 MB (22974235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8fb43de4f118b94861431e3c861733e63c5d3837171d03fc417e3898953e06`  
		Last Modified: Wed, 11 Nov 2026 00:38:39 GMT  
		Size: 11.3 MB (11293225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931bf6dcf7e47a8c912b74fade3aa5d6d67dd125b8e718a8640cfa446a1aca18`  
		Last Modified: Wed, 11 Nov 2026 00:38:39 GMT  
		Size: 538.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab87fdba80e5bfe12e3472abb470fd43c663c52204a1aba7285536d56736922f`  
		Last Modified: Wed, 11 Nov 2026 00:38:39 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248dc72cef427706b5834611c9fb19488bd3f4bffc609c08d2e311b9383853f5`  
		Last Modified: Wed, 11 Nov 2026 00:38:40 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ddffb01c01a2e06bf732681bcdfd996f70f0c9bb0eb52ac87d02f3745d17c4`  
		Last Modified: Wed, 11 Nov 2026 01:07:37 GMT  
		Size: 1.7 MB (1656396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2309dc6f3b6a1db9a852b30a576076c6ccd647240748e640a47dfc38362dfbc`  
		Last Modified: Wed, 11 Nov 2026 01:07:37 GMT  
		Size: 84.3 KB (84314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dec7289e3fe3dac8646dcddf425ba1bd90d76116af6d13c7f60629dd364dd62`  
		Last Modified: Wed, 11 Nov 2026 01:07:37 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021e8381f15ef8ef99e58cc515a7e16e3992d92546c2eb41e05d75c5febd0e78`  
		Last Modified: Wed, 11 Nov 2026 01:07:38 GMT  
		Size: 52.2 MB (52154043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc6e4181b1feba82a4b9b4066b0a00cbda6ea393f163bdc037489ca1b0f5952`  
		Last Modified: Wed, 11 Nov 2026 01:07:38 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be2f26297ed44f98681a24ecc95e35ddaed56cd89894d368b15743dc72ca1bb2`  
		Last Modified: Wed, 11 Nov 2026 01:07:38 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:rc-dind` - unknown; unknown

```console
$ docker pull docker@sha256:e7af07eba4f9fd066787c33e614ac4ea670a749d4c7e79763729b4461eb3bdf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 KB (36256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf190a794de2da2280e1c55e75502e074f9dbe3a52405535b682227a8f1c175d`

```dockerfile
```

-	Layers:
	-	`sha256:27fff9627b89a4d599b1f89dd421533c56664adb1ae4130d71cc1e38fce2ca49`  
		Last Modified: Wed, 11 Nov 2026 01:07:37 GMT  
		Size: 36.3 KB (36256 bytes)  
		MIME: application/vnd.in-toto+json
