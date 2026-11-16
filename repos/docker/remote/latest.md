## `docker:latest`

```console
$ docker pull docker@sha256:4bbc7223f81db790097c6dea42fb93e05b8fead4f0431fbe6ccaba6e8473201c
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

### `docker:latest` - linux; amd64

```console
$ docker pull docker@sha256:4eea5f48923988bc80515bf582ffec1eece35f5c13bceae1b2074dc80ead1e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.0 MB (115004291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9701238475ce12ce9acc36ee0b81a162348599d701e35b99cc934a6c58439a58`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 20:00:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 20:00:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 20:00:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 20:00:26 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 20:00:26 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 20:00:26 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 20:00:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 20:00:27 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 20:00:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 20:00:28 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 20:00:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 20:00:28 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 20:18:48 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 20:18:48 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 20:18:48 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 20:18:51 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:18:51 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 20:18:51 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 20:18:51 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 20:18:51 GMT
CMD []
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79a20f65ccf189ed5468fc14879b7e4a212427dd4efeb2efca0c320a8c2cf3a`  
		Last Modified: Mon, 16 Nov 2026 20:00:35 GMT  
		Size: 8.2 MB (8204373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a1fa15fb8091ef57c003f3a74d5b1a2881eaf8dc9015c4058d9ce8494dba36`  
		Last Modified: Mon, 16 Nov 2026 20:00:35 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554970c1d0af3cd775c70b87c84fee84ada826fa8a9977be83db364107190a8f`  
		Last Modified: Mon, 16 Nov 2026 20:00:35 GMT  
		Size: 11.3 MB (11261460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5da4a42f190109f0608bc941203b2be5310dfe2faaec4384540bfc9f65a9b8b`  
		Last Modified: Mon, 16 Nov 2026 20:00:36 GMT  
		Size: 24.0 MB (24049065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5c7ebbff8d68bf90435a2b0b9a8f973c70dbb8c148c0893737676a86a9191a`  
		Last Modified: Mon, 16 Nov 2026 20:00:37 GMT  
		Size: 11.8 MB (11839923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f0ba247ae413d7b55d59b35cf0540d69122ad65d406a6529ec2382529a9d70`  
		Last Modified: Mon, 16 Nov 2026 20:00:36 GMT  
		Size: 541.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5681b4d7626a8b0d7b9066981d202e5f20d050e00c4c24fd519758c39a0f25f`  
		Last Modified: Mon, 16 Nov 2026 20:00:37 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c01e603afa82e4efad14023ceb43cadf17cb6a08959f5f2c18bdd255a5aa496c`  
		Last Modified: Mon, 16 Nov 2026 20:00:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eec628ff29c7c4a4f3a4be69e0e2c49230005272eb5d05410ca92bcf49a1bdd`  
		Last Modified: Mon, 16 Nov 2026 20:19:00 GMT  
		Size: 1.5 MB (1497345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:671b73a663a8e6652be37d8a762a850347e14f577feb9234e14662190f36fb3e`  
		Last Modified: Mon, 16 Nov 2026 20:19:00 GMT  
		Size: 81.0 KB (81048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7a105296c3a098f4b64f494f868cc3c8f117baba7d0fb583deaffb6127bcd8`  
		Last Modified: Mon, 16 Nov 2026 20:19:00 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adf556881dfbcaa6e74607009219632ae05db1bba8af8d0de82d3fb3f496dcc`  
		Last Modified: Mon, 16 Nov 2026 20:19:02 GMT  
		Size: 54.2 MB (54209245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6183236cc14aaa8055587f78402a13954c41b62e0d7e57fec6bbfa1408e0b208`  
		Last Modified: Mon, 16 Nov 2026 20:19:01 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d1715fa38ecf8eb06e4eab9ecfa5085a5810dda5597484ad3f165b0c03b1e87`  
		Last Modified: Mon, 16 Nov 2026 20:19:01 GMT  
		Size: 3.3 KB (3304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:09cdf47e8b568cb40be3640a98161384baa8fcc07ef5eecd721a2fc670741ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 KB (36721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:983fd3b25c50261975be017f6ebda081efbf6911a222ae7991bb686a4a52e2c4`

```dockerfile
```

-	Layers:
	-	`sha256:c8ae9b02a867b8b9a99df53e09741a6c875f70b3a9b885d08a06f0eb361f1b1d`  
		Last Modified: Mon, 16 Nov 2026 20:18:59 GMT  
		Size: 36.7 KB (36721 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v6

```console
$ docker pull docker@sha256:5446fec52a661b828049fb6b8f0fdeba4dd4355a4f5fcfc351512c6bea6c2893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108731418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30942b44cc16bcdd737d92bf3460f36e7b7d48a2061e21faab3a2a64e009ed85`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:52:24 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 19:52:24 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 19:52:24 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 19:52:28 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 19:52:28 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 19:52:28 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 19:52:30 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 19:52:30 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 19:52:32 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 19:52:32 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 19:52:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 19:52:32 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 19:52:33 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 19:52:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 19:52:33 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 20:08:45 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 20:08:45 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 20:08:46 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:08:49 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 20:08:49 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 20:08:49 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 20:08:49 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:08:49 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 20:08:49 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 20:08:49 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 20:08:49 GMT
CMD []
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9574353aff54b4ff00a075f910ecaf518d31721f5d8b5913b8dc3107f71ea3c5`  
		Last Modified: Mon, 16 Nov 2026 19:52:39 GMT  
		Size: 8.1 MB (8108007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b536672bfe10b9f1a88721cf35a7b9ad57aed4801e0ac2da779c0cbc7e647b65`  
		Last Modified: Mon, 16 Nov 2026 19:52:38 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a37cf6d26f7f55d8b9da063fa091d57af653090e1aad37589d3803b628b589b`  
		Last Modified: Mon, 16 Nov 2026 19:52:39 GMT  
		Size: 10.7 MB (10687230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ced34d60d0a5c5f4f22680c1c8f0be200c21649c5853eefd6bce6a3d37778a`  
		Last Modified: Mon, 16 Nov 2026 19:52:40 GMT  
		Size: 22.7 MB (22650814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ec9fa173f60b71f58f3108b29b9682ac2197296a5e60f874102ea735e9011a2`  
		Last Modified: Mon, 16 Nov 2026 19:52:40 GMT  
		Size: 11.2 MB (11246000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acdc0ddb573c5143cfe88049dd7aa4ec47d2a25da9a0612ede17aad0b04819fe`  
		Last Modified: Mon, 16 Nov 2026 19:52:40 GMT  
		Size: 537.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5115b859d2cfe2614f34530380bcb9b2e51920a4961d6d3797aba17a4c91fc34`  
		Last Modified: Mon, 16 Nov 2026 19:52:40 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a86b90312b9fe42ddce8574cfd2225f5951a2decb99a6a59d01b8ef82b4decf0`  
		Last Modified: Mon, 16 Nov 2026 19:52:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5c95d5c1d9dddcb10535a8dcda550567052077569ea4d74ea169c315799148`  
		Last Modified: Mon, 16 Nov 2026 20:08:59 GMT  
		Size: 1.5 MB (1498773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db579e4dd0ee66fdc0314c67cc78662bed4feb1082ea39e3cc5c48214d763b79`  
		Last Modified: Mon, 16 Nov 2026 20:08:58 GMT  
		Size: 79.7 KB (79740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bceba1c85dfef7c26f3a72404436c0327a1897996c60b682031250f7bd16274`  
		Last Modified: Mon, 16 Nov 2026 20:08:58 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:570235d1fff50f6d057d17fe5a130d35f1aa840c9cf67eb129f4bb327d24177f`  
		Last Modified: Mon, 16 Nov 2026 20:09:00 GMT  
		Size: 50.9 MB (50894293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e6c03f059038d5e968d7a12db380a7f4e6546a1ad0ffeea2358b54d98a1dda`  
		Last Modified: Mon, 16 Nov 2026 20:08:59 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194f11fd9461e0b21833ac8aa54a0af2670de6b0417464e10f083f73ff0f56be`  
		Last Modified: Mon, 16 Nov 2026 20:09:00 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:0f3de746da84c93e2218d438853e9680ba0d2361a615c5a14436ee272c284ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 KB (36901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f968b1051181b1d904bc1e2b1b3e15cfc79a8557c766bcd20a343c74baabd54c`

```dockerfile
```

-	Layers:
	-	`sha256:b233805484934a65ff0ee12ce8bcfb6336cbe974c43143652b54ac9740d43885`  
		Last Modified: Mon, 16 Nov 2026 20:08:58 GMT  
		Size: 36.9 KB (36901 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm variant v7

```console
$ docker pull docker@sha256:bd9a3de6dd1731a131188e81668aac39586a77e91a36ae8f86cd6f494a5496de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.4 MB (107405979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b8c3c17eff94faadf4979f2416bbe9308d9c168e72459f3dcd3d39a8e418d74`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 20:05:34 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 20:05:34 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 20:05:34 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 20:05:38 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 20:05:38 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 20:05:38 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 20:05:40 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 20:05:40 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 20:05:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 20:05:42 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 20:05:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:05:42 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 20:05:42 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 20:05:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 20:05:42 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 20:09:41 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 20:09:41 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 20:09:41 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:09:44 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 20:09:45 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 20:09:45 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 20:09:45 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:09:45 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 20:09:45 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 20:09:45 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 20:09:45 GMT
CMD []
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d32742cc3c8bd06d5c215fb4b2a3fc1c5c21a423dbd7d9a5e1ed8acf2e236a9b`  
		Last Modified: Mon, 16 Nov 2026 20:05:48 GMT  
		Size: 7.4 MB (7403576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac93102cf9ef1002a71c13f72143f9750d75625f133f08061b0505a6d15ec636`  
		Last Modified: Mon, 16 Nov 2026 20:05:48 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23eca58866ec906620601aff493205f77ccb2e767a8e253b3dc77e247c7dded0`  
		Last Modified: Mon, 16 Nov 2026 20:05:49 GMT  
		Size: 10.7 MB (10674315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:714a158322d5f189404bcfef99e30b465bc1ce90c9d273329005c2ac4cf64ab7`  
		Last Modified: Mon, 16 Nov 2026 20:05:49 GMT  
		Size: 22.6 MB (22629189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394fcd45a0bdedc68bcb48c14bb07f6c25a7de3ccb402d665c81f0315bed9895`  
		Last Modified: Mon, 16 Nov 2026 20:05:49 GMT  
		Size: 11.2 MB (11234461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db0091707a7fb641d2571f48222e43b45c2436635e80248212680200311ebfa`  
		Last Modified: Mon, 16 Nov 2026 20:05:49 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d81c0eaaf2140a6ba239c037dffdeea97469d95e27461938b091179be8d994f8`  
		Last Modified: Mon, 16 Nov 2026 20:05:50 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e1b2028e9f5c87fb874bf28731889f69440746826620c5d0803121008c96f5`  
		Last Modified: Mon, 16 Nov 2026 20:05:50 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efff0d969caff57e2dfab849f638ebd7582f2d9d20d7dd5aa458fb1fff0c6077`  
		Last Modified: Mon, 16 Nov 2026 20:09:53 GMT  
		Size: 1.4 MB (1384247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c066e05487817736ef209189410945da78b09e565c5c94cab415475dd2be551`  
		Last Modified: Mon, 16 Nov 2026 20:09:53 GMT  
		Size: 76.1 KB (76109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7c1bb0402f38f29991c7141a4832f314a2b2fd82619763a3f5a94531773ae0`  
		Last Modified: Mon, 16 Nov 2026 20:09:54 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff99961f5389b6836e94989d6677a5a2414ac95fc0f65c22f64314534d7e5dc`  
		Last Modified: Mon, 16 Nov 2026 20:09:55 GMT  
		Size: 50.7 MB (50728191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ea56f7e386136b03a8434649bc1c74f67a66c77f4f23b54f3f880c71cede3b`  
		Last Modified: Mon, 16 Nov 2026 20:09:55 GMT  
		Size: 1.7 KB (1689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28105066be6764bb8b1d4b33018ccd92142c6c5328969b81b9939aad1a00bd0d`  
		Last Modified: Mon, 16 Nov 2026 20:09:55 GMT  
		Size: 3.3 KB (3305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:1b97a2046ae32472a8b0677e8586c790541a66a6951b2487a0c5a632af5ab51d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.9 KB (36901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4645cabd6674bfd8ca731ee9175d598ffe7f45ed06a5e740d0c7a2b4c7580504`

```dockerfile
```

-	Layers:
	-	`sha256:36ffd4ec16d6d87a53a4be1d12ed14d0c30987bd3a38a6788f24088b1441446f`  
		Last Modified: Mon, 16 Nov 2026 20:09:53 GMT  
		Size: 36.9 KB (36901 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; arm64 variant v8

```console
$ docker pull docker@sha256:eef28e5a97a3f31e277a8416e2e849d882e52670f1f72fba0569a53159abc379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106185872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab72471909dc8e9a6c18570365c6a0109f4c9a89e92e042d3cd5766a3ca0019`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:57:50 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 19:57:50 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 19:57:50 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 19:57:53 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 19:57:53 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 19:57:53 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 19:57:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 19:57:54 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 19:57:54 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 19:57:55 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 19:57:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 19:57:55 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 20:08:21 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 20:08:22 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 20:08:22 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 20:08:25 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:08:25 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 20:08:25 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 20:08:25 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 20:08:25 GMT
CMD []
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21aef02c4ce166d9b73b81ae18862b13ae74ef623967197e0958416a04e3fdf7`  
		Last Modified: Mon, 16 Nov 2026 19:58:01 GMT  
		Size: 8.3 MB (8265015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45799ba3e5ac0059b67df17cf8933cca4c5dc15edde1556a13b814e5062793c4`  
		Last Modified: Mon, 16 Nov 2026 19:58:00 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47dc318e2f94ec3ebc0eb47866dcd36f148722a0581f8b206afb38f906449872`  
		Last Modified: Mon, 16 Nov 2026 19:58:01 GMT  
		Size: 10.2 MB (10171258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87fdbe3d514b1448d65b90d9a9392e7cee506eb509a16aeab3e0b87691ee1ec`  
		Last Modified: Mon, 16 Nov 2026 19:58:01 GMT  
		Size: 21.7 MB (21734897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46d19ad6eee81bb418e163534c20b362447d5cb0537de5ec78f8aa47ecf0480`  
		Last Modified: Mon, 16 Nov 2026 19:58:02 GMT  
		Size: 10.7 MB (10735427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494b5745f715cd164d3bb9e47e97896f87b75be7005e4060b09f01913b4ff375`  
		Last Modified: Mon, 16 Nov 2026 19:58:02 GMT  
		Size: 536.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dac699a5ed9396f7ffaed1d309c637db4105f2d35d57b12cc15c3fed2655e82`  
		Last Modified: Mon, 16 Nov 2026 19:58:02 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ca7a5d061cdb7618dbd293851cb5cc22531bcf7f45fd9a47a780f163649f432`  
		Last Modified: Mon, 16 Nov 2026 19:58:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1a6c6e7a318868cf4f2911c939f9a4affe593ff46a62fc6cfc208889cd1475`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.7 MB (1744510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d2388ed332f99035947fdcf4acbcebb53ff7e43f7ada212efc484369064da50`  
		Last Modified: Mon, 16 Nov 2026 20:08:33 GMT  
		Size: 90.4 KB (90354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f686eda0117006e978bdebec5c36cf909f6f8d8a31813138f6fb8de3963d67d9`  
		Last Modified: Mon, 16 Nov 2026 20:08:34 GMT  
		Size: 1.0 KB (1010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17ac9b0bf5b567ead9689d57956c365620f2cafae8cf5d172d72e5f59e69a475`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 49.2 MB (49245668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1832b4cf8183ce5dce06b6165844d9a57ab48dbb563b7300b5474d8273af48`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 1.7 KB (1688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03eea87c3ec1681771469dea5ec6bf65b19da5ac11b198b025a494b16df92f4f`  
		Last Modified: Mon, 16 Nov 2026 20:08:35 GMT  
		Size: 3.3 KB (3303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:8db6f8d4483a0d3bd709bcf5f955d8ee231390be6fb37a71d105ea9a1eea1f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.0 KB (36957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1b7d148ef114ec69ee3e89c45a6c50318589dd394388baa669d1b0a991486d8`

```dockerfile
```

-	Layers:
	-	`sha256:8b895ff4f2a7c171ff422b0cc4a53bb3688fe4c78c5b2bbc6878a5e12656596d`  
		Last Modified: Mon, 16 Nov 2026 20:08:33 GMT  
		Size: 37.0 KB (36957 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; ppc64le

```console
$ docker pull docker@sha256:6ce161aa6c6356cd6fdfb781970fb11744861e058f476b6af9c8d7ad3f4a4a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.0 MB (106957529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:081cdd88e606bdc89bdeee340fc497f2b2769de0358143e8def5f2737c80e88f`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 20:16:13 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 20:16:14 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 20:16:14 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 20:16:19 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 20:16:19 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 20:16:19 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 20:16:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 20:16:23 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 20:16:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 20:16:26 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 20:16:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:16:26 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 20:16:26 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 20:16:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 20:16:26 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 21:08:37 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 21:08:39 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 21:08:39 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 21:08:45 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 21:08:46 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 21:08:46 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 21:08:46 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 21:08:46 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 21:08:46 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 21:08:46 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 21:08:46 GMT
CMD []
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3e3276970304b551c377e68e70b73d8e747b8dc67ea1b5f4504ce721827211`  
		Last Modified: Mon, 16 Nov 2026 20:16:39 GMT  
		Size: 8.6 MB (8636676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caef654c82521a6723813cca3b4e11e28ef36c60304eb3c8d2ed9bd8e9f28dd7`  
		Last Modified: Mon, 16 Nov 2026 20:16:38 GMT  
		Size: 456.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07244ae2a6c56d2a6e3f0aa310e8cdd34c124144b434fcc34220b721002a122b`  
		Last Modified: Mon, 16 Nov 2026 20:16:39 GMT  
		Size: 10.2 MB (10203068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:574a2fefcc0a24b2a4bddd35aa00e374cc749d097fe6aaaa1c679e30f3579404`  
		Last Modified: Mon, 16 Nov 2026 20:16:40 GMT  
		Size: 21.8 MB (21776542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755cf762e57bffd9d962615ac1320fe6674f5209d3afd7710752e9f222c26bb1`  
		Last Modified: Mon, 16 Nov 2026 20:16:40 GMT  
		Size: 10.8 MB (10794473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6279246429f06b241baa00db82ca521930f6a9444febd07ecf8f53d51c9043`  
		Last Modified: Mon, 16 Nov 2026 20:16:41 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20eff84af0cbcb80dfd256f9bcae19c767d28f1a6d2dad935979f00490d27824`  
		Last Modified: Mon, 16 Nov 2026 20:16:41 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df6032f3661520e5c260ed27522d888cc506eb7590b3c610917fa5fd78da0ee1`  
		Last Modified: Mon, 16 Nov 2026 20:16:41 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa299fe4eb8a42fd0d6d56d700e22b9e66eaf1de52950207350148032b784b72`  
		Last Modified: Mon, 16 Nov 2026 21:09:01 GMT  
		Size: 1.8 MB (1836932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0aa64da38edca2f5e14a35bfe25c3b1e03ffdd92057e8c6d92b96fa69d0a91`  
		Last Modified: Mon, 16 Nov 2026 21:09:01 GMT  
		Size: 92.2 KB (92231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868ef56da5787401df5273b3f6a4ff3543a37f41c916299a8d119b4b018ba4d5`  
		Last Modified: Mon, 16 Nov 2026 21:09:01 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734b05d9ca4aa25fc31d6a8302c82146fbe3a97c16f2525542ada715b771b5cf`  
		Last Modified: Mon, 16 Nov 2026 21:09:03 GMT  
		Size: 49.8 MB (49787523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44cc98d87e43587caea756564f7b39b0860cef5495ff543b1386cd4d4a6065b7`  
		Last Modified: Mon, 16 Nov 2026 21:09:02 GMT  
		Size: 1.7 KB (1691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a88172d64fb9a1daa03948f350336d2c18cc3e6a9752a4be27fe0019fe148c05`  
		Last Modified: Mon, 16 Nov 2026 21:09:02 GMT  
		Size: 3.3 KB (3308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:5d8b2eb566454a9091403fc3c5fdfcd3385cbfd7033a5fde11057cbdcdf9d45f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.8 KB (36807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d130c0e67ccca7037b9d280dd5553c2b6d7bfff2b479519c6ff816436b1c7b15`

```dockerfile
```

-	Layers:
	-	`sha256:e6a4e5c343fa753a0b4ad5436194422ffeb34d3bc692b47726ccb4584f1bc8ee`  
		Last Modified: Mon, 16 Nov 2026 21:09:01 GMT  
		Size: 36.8 KB (36807 bytes)  
		MIME: application/vnd.in-toto+json

### `docker:latest` - linux; s390x

```console
$ docker pull docker@sha256:fc0b5c8b27a8efe2de55f4e453792e6c161f70bed27149a52d926f5fca5f76a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.6 MB (111604105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd05e61fb3e758927b1cc89925c3876892519051828096c88c0dcf8b950a8633`
-	Entrypoint: `["dockerd-entrypoint.sh"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Mon, 16 Nov 2026 19:55:18 GMT
RUN apk add --no-cache 		ca-certificates 		openssh-client 		git # buildkit
# Mon, 16 Nov 2026 19:55:18 GMT
RUN [ -e /etc/nsswitch.conf ] && grep '^hosts: files dns' /etc/nsswitch.conf # buildkit
# Mon, 16 Nov 2026 19:55:18 GMT
RUN set -eux; 	addgroup -g 2375 -S docker # buildkit
# Mon, 16 Nov 2026 19:55:23 GMT
ENV DOCKER_VERSION=29.10.0
# Mon, 16 Nov 2026 19:55:23 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		'docker/docker' 	; 	rm docker.tgz; 		docker --version # buildkit
# Mon, 16 Nov 2026 19:55:23 GMT
ENV DOCKER_BUILDX_VERSION=0.39.0
# Mon, 16 Nov 2026 19:55:25 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-amd64'; 			sha256='5fb31a097304fbf6dd4038649a0decf32c2b9510e4047acd7d68b9d700c46194'; 			;; 		'armhf') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v6'; 			sha256='462b5699af263c05c5c1d973ab33f41810c263585d5b8b3dcfa6f7d3a11bc987'; 			;; 		'armv7') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm-v7'; 			sha256='a49d315f68f6ed91b2ea88da4259b418abe015be68460e0eebe0b8d9f74970b1'; 			;; 		'aarch64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-arm64'; 			sha256='722cdcdfdd6f3fb943fa1ba75102d057feb18ba72aab93b1b0a8cf2b2b48a25f'; 			;; 		'ppc64le') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-ppc64le'; 			sha256='dd7b1f65b7432229a619d3b92ddbdd742fb26fa8b4a281a99489431ef5e041b7'; 			;; 		'riscv64') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-riscv64'; 			sha256='58d328fe5a8e58f4e5934913c1f7c51d6633f197d28f3114fe2cb9026cfb5d74'; 			;; 		's390x') 			url='https://github.com/docker/buildx/releases/download/v0.39.0/buildx-v0.39.0.linux-s390x'; 			sha256='754f15a88f4496b5ddea3ac5626dd068f836965f799253a6402b07d324c45892'; 			;; 		*) echo >&2 "warning: unsupported 'docker-buildx' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-buildx' "$url"; 	echo "$sha256 *"'docker-buildx' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-buildx'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-buildx' "$plugin"; 	chmod +x "$plugin"; 		docker buildx version # buildkit
# Mon, 16 Nov 2026 19:55:25 GMT
ENV DOCKER_COMPOSE_VERSION=5.7.1
# Mon, 16 Nov 2026 19:55:27 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-x86_64'; 			sha256='af426722a8af5de812fcee30cc1c39f0639f5f723cbadefb25e5d4db054064cf'; 			;; 		'armhf') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv6'; 			sha256='923137699688e7ea1aade66c16b9a1d475150487ccc99636d0f1de3ce46e6107'; 			;; 		'armv7') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-armv7'; 			sha256='c03e0c93cf747f311d39f6920a33c461fd0f7a6246439aaf259766527caa28f5'; 			;; 		'aarch64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-aarch64'; 			sha256='f2f49f903240895fa764c0dca3a14548b754ad9426f6b609ccaf55ec5a3aa2a5'; 			;; 		'ppc64le') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-ppc64le'; 			sha256='e41bf397abf7fc7a1cd35a039676067e6fc36d022a48847584db63cff0d9d196'; 			;; 		'riscv64') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-riscv64'; 			sha256='29ba4c5fc8eb53e2fa2d0327c640c6a727086fd7efae79da47bf0a82bde290f3'; 			;; 		's390x') 			url='https://github.com/docker/compose/releases/download/v5.7.1/docker-compose-linux-s390x'; 			sha256='078f555e41e7c2d37d47f81cffd6b80d77288ba562bee19ac00215205edca278'; 			;; 		*) echo >&2 "warning: unsupported 'docker-compose' architecture ($apkArch); skipping"; exit 0 ;; 	esac; 		wget -O 'docker-compose' "$url"; 	echo "$sha256 *"'docker-compose' | sha256sum -c -; 		plugin='/usr/local/libexec/docker/cli-plugins/docker-compose'; 	mkdir -p "$(dirname "$plugin")"; 	mv -vT 'docker-compose' "$plugin"; 	chmod +x "$plugin"; 		ln -sv "$plugin" /usr/local/bin/; 	docker-compose --version; 	docker compose version # buildkit
# Mon, 16 Nov 2026 19:55:27 GMT
COPY modprobe.sh /usr/local/bin/modprobe # buildkit
# Mon, 16 Nov 2026 19:55:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 19:55:27 GMT
ENV DOCKER_TLS_CERTDIR=/certs
# Mon, 16 Nov 2026 19:55:27 GMT
RUN mkdir /certs /certs/client && chmod 1777 /certs /certs/client # buildkit
# Mon, 16 Nov 2026 19:55:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 16 Nov 2026 19:55:27 GMT
CMD ["sh"]
# Mon, 16 Nov 2026 20:08:37 GMT
RUN set -eux; 	apk add --no-cache 		ip6tables 		iptables 		openssl 		pigz 		shadow-uidmap 		xz 	; # buildkit
# Mon, 16 Nov 2026 20:08:38 GMT
RUN set -eux; 	apk add --no-cache iptables-legacy; 	mkdir -p /usr/local/sbin/.iptables-legacy; 	for f in 		iptables 		iptables-save 		iptables-restore 		ip6tables 		ip6tables-save 		ip6tables-restore 	; do 		b="$(command -v "${f/tables/tables-legacy}")"; 		"$b" --version; 		ln -svT "$b" "/usr/local/sbin/.iptables-legacy/$f"; 	done; 	export PATH="/usr/local/sbin/.iptables-legacy:$PATH"; 	iptables --version | grep legacy # buildkit
# Mon, 16 Nov 2026 20:08:38 GMT
RUN set -eux; 	addgroup -S dockremap; 	adduser -S -G dockremap dockremap; 	echo 'dockremap:165536:65536' >> /etc/subuid; 	echo 'dockremap:165536:65536' >> /etc/subgid # buildkit
# Mon, 16 Nov 2026 20:08:42 GMT
RUN set -eux; 		apkArch="$(apk --print-arch)"; 	case "$apkArch" in 		'x86_64') 			url='https://download.docker.com/linux/static/stable/x86_64/docker-29.10.0.tgz'; 			sha256='7c1ebadc65c716cdc6d35fc78759ed0e4317debf43c21dd12f066f2006999def'; 			;; 		'armhf') 			url='https://download.docker.com/linux/static/stable/armel/docker-29.10.0.tgz'; 			sha256='b3e626f7560728eb601687da86c27edf9b7dd71f6a0f00737baeeb607c0f1d68'; 			;; 		'armv7') 			url='https://download.docker.com/linux/static/stable/armhf/docker-29.10.0.tgz'; 			sha256='08757af1f923c25d170211a1de8acc4e69e9cfbe7b5af63dd787afe2057efd5f'; 			;; 		'aarch64') 			url='https://download.docker.com/linux/static/stable/aarch64/docker-29.10.0.tgz'; 			sha256='6e5159e8b5615e0c0c2954a2a1a2a12bc65f5d9b603595dba24a10cb367408cd'; 			;; 		'ppc64le') 			url='https://download.docker.com/linux/static/stable/ppc64le/docker-29.10.0.tgz'; 			sha256='f07fe44072d1614de38effa6492f840653dfbf9e5a7d3a0a1dab4c2dad257190'; 			;; 		's390x') 			url='https://download.docker.com/linux/static/stable/s390x/docker-29.10.0.tgz'; 			sha256='09c4a2ec475121fe9c1485c65e9f54f1fa20aa4d68d0c4b271005db3943a763b'; 			;; 		*) echo >&2 "error: unsupported 'docker.tgz' architecture ($apkArch)"; exit 1 ;; 	esac; 		wget -O 'docker.tgz' "$url"; 	echo "$sha256 *"'docker.tgz' | sha256sum -c -; 		tar --extract 		--file docker.tgz 		--strip-components 1 		--directory /usr/local/bin/ 		--no-same-owner 		--exclude 'docker/docker' 		--exclude 'docker/containerd' 	; 	rm docker.tgz; 		dockerd --version; 	ctr --version; 	runc --version # buildkit
# Mon, 16 Nov 2026 20:08:42 GMT
ENV DIND_COMMIT=8d9e3502aba39127e4d12196dae16d306f76993d
# Mon, 16 Nov 2026 20:08:42 GMT
RUN set -eux; 	wget -O /usr/local/bin/dind "https://raw.githubusercontent.com/moby/moby/${DIND_COMMIT}/hack/dind"; 	chmod +x /usr/local/bin/dind # buildkit
# Mon, 16 Nov 2026 20:08:42 GMT
COPY dockerd-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 16 Nov 2026 20:08:42 GMT
VOLUME [/var/lib/docker]
# Mon, 16 Nov 2026 20:08:42 GMT
EXPOSE map[2375/tcp:{} 2376/tcp:{}]
# Mon, 16 Nov 2026 20:08:42 GMT
ENTRYPOINT ["dockerd-entrypoint.sh"]
# Mon, 16 Nov 2026 20:08:42 GMT
CMD []
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ae802efc6c8694de6d726ad8175ed1f815600de35ca5a8c356fe480261934b`  
		Last Modified: Mon, 16 Nov 2026 19:55:38 GMT  
		Size: 8.5 MB (8500542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:880e9615cdeae99d22f7c0f77d91681db5b676b20332942eb9ae6edf012bd063`  
		Last Modified: Mon, 16 Nov 2026 19:55:37 GMT  
		Size: 455.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9228396ec8c264e5facf6a6a6c6f30297eb147d7c63c5176a215270ef853863`  
		Last Modified: Mon, 16 Nov 2026 19:55:37 GMT  
		Size: 10.9 MB (10878561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d465e6ac17c437df5293eb345c247730e408fb795f2195bb0d7fd005335ce501`  
		Last Modified: Mon, 16 Nov 2026 19:55:38 GMT  
		Size: 23.2 MB (23165336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3760305e29d33352bbe5c5e2598b01be4180b64b67078c8bff131baa6f9d9c5`  
		Last Modified: Mon, 16 Nov 2026 19:55:38 GMT  
		Size: 11.5 MB (11458297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223c45312754b07db39855c3674cc2f96bfd5e19f36b84590d8978aca42a37af`  
		Last Modified: Mon, 16 Nov 2026 19:55:39 GMT  
		Size: 539.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f3ec40167306112d3ac3774dbe3cc1a8fc080f225f290c898839cc84cf156e`  
		Last Modified: Mon, 16 Nov 2026 19:55:39 GMT  
		Size: 1.0 KB (1011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c93da0605a2ff84ceda4c5d0d381e02ea0eaa64ca00a2de3fbad75da0df0b4`  
		Last Modified: Mon, 16 Nov 2026 19:55:39 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a976e544b056256fa5a1563bb1572ba85ac6e9d429d730a5bf43e078a32f24c4`  
		Last Modified: Mon, 16 Nov 2026 20:08:56 GMT  
		Size: 1.7 MB (1656403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279a18a68b08bb60aab1ab5407b707bf23e3563c13248f47d7eb586d39a82c49`  
		Last Modified: Mon, 16 Nov 2026 20:08:56 GMT  
		Size: 84.3 KB (84323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d538e137e92f6f04ecb980cf8e38e1c20696e20d940f645e4daa8ea971e8c2`  
		Last Modified: Mon, 16 Nov 2026 20:08:56 GMT  
		Size: 1.0 KB (1009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665de335ec9e536e5032923f0c117dda5960529cb557e0413ae11ab59003677f`  
		Last Modified: Mon, 16 Nov 2026 20:08:57 GMT  
		Size: 52.1 MB (52131815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f5fe3ee4a10385242a10e71deef4031251edb5a560e3705dc8afcbe2d35a37`  
		Last Modified: Mon, 16 Nov 2026 20:08:57 GMT  
		Size: 1.7 KB (1690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99790ed9c77589de0fd5e992b97c013469303f73d0b06f774b512fd511822d65`  
		Last Modified: Mon, 16 Nov 2026 20:08:57 GMT  
		Size: 3.3 KB (3306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `docker:latest` - unknown; unknown

```console
$ docker pull docker@sha256:5599ddbaea7c62eefc3a0d402231a004319fb1379171ab3208aff0e9d77289d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.7 KB (36720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15988cea5c965c8937ab1a0544d108614dc46529cc4c503952ac5cf0a324d01a`

```dockerfile
```

-	Layers:
	-	`sha256:cf442c7289da033cb104e93c991462286b4f61393ae94692e0d62a4a46cf6ab5`  
		Last Modified: Mon, 16 Nov 2026 20:08:56 GMT  
		Size: 36.7 KB (36720 bytes)  
		MIME: application/vnd.in-toto+json
